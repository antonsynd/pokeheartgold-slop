import subprocess,sys,os,difflib
sys.path.insert(0,os.path.dirname(__file__))
from rules import rewrite_c, rewrite_asm
def show(rev,p):
    r=subprocess.run(['git','show',f'{rev}:{p}'],capture_output=True,text=True)
    return r.stdout if r.returncode==0 else None
files=subprocess.run(['git','diff','--name-only','--diff-filter=M','9d8b7591f','upstream/master','--']+sys.argv[1:],capture_output=True,text=True).stdout.split()
clean=0; resid=[]
for p in files:
    o=show('9d8b7591f',p); n=show('upstream/master',p)
    r=(rewrite_asm if p.startswith(("asm/","lib/")) else rewrite_c)(o)
    if r==n: clean+=1
    else:
        d=[l for l in difflib.unified_diff(r.splitlines(),n.splitlines(),lineterm='',n=0) if l[:1] in '+-' and not l.startswith(('+++','---'))]
        resid.append((p,len(d),d))
print('files',len(files),'fully-mechanical',clean,'residual',len(resid))
for p,n,d in sorted(resid,key=lambda x:-x[1]):
    print(f'== {p} ({n} lines)')
    for l in d[:int(os.environ.get('MAXL','12'))]: print('   ',l[:160])
