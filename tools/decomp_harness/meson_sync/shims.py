import os,re,subprocess,collections
T=os.environ['TMPDIR']
base=set(subprocess.run(['git','ls-tree','-r','--name-only','9d8b7591f','--','src','include'],capture_output=True,text=True).stdout.split())
files=[f for f in subprocess.run(['git','ls-tree','-r','--name-only','HEAD','--','src','include'],capture_output=True,text=True).stdout.split() if f.endswith(('.c','.h')) and f not in base]
SDKT=r'(?:GX|GXS|G2|G3|NNS|FX|Vec|Mtx|OS|WM|WCM|MI|FS|SND|CARD|DWC|MATH|RTC|TP|PM|PAD|CP|SPI|CTRDG|SOC|SSL|CPS)\w*'
# typedef ... { ... } NAME;  and struct NAME { / enum NAME {
body_def=re.compile(r'\}\s*('+SDKT+r')\s*;')
tag_def=re.compile(r'\b(?:struct|union|enum)\s+('+SDKT+r')\s*\{')
enum_const=re.compile(r'^\s+((?:GX|GXS|G2|G3|NNS|FX|OS|WM|MI|FS|SND)_[A-Z0-9_]+)\s*(?:=|,|$)',re.M)
simple_td=re.compile(r'typedef\s+(?!struct|union|enum)[\w\s\*]+?\b('+SDKT+r')\s*;')
p=subprocess.Popen(['git','cat-file','--batch'],stdin=subprocess.PIPE,stdout=subprocess.PIPE)
byname=collections.Counter(); fileset=collections.Counter(); cats=collections.Counter(); ec=collections.Counter()
for f in files:
    p.stdin.write(f'HEAD:{f}\n'.encode()); p.stdin.flush()
    h=p.stdout.readline().split(); d=p.stdout.read(int(h[2])).decode('latin1'); p.stdout.read(1)
    names=set(body_def.findall(d))|set(tag_def.findall(d))|set(simple_td.findall(d))
    consts=set(enum_const.findall(d)) if ('enum' in d) else set()
    if names or consts:
        cats['hgify' if f.startswith('src/hgify/') else 'other']+=1
        for n in names: byname[n]+=1
        for c in consts: ec[c]+=1
print('fork-new files defining SDK-named types/enum consts:',dict(cats))
print('distinct SDK type names defined:',len(byname))
print(byname.most_common(45))
print('distinct SDK-style enum constants defined:',len(ec), ec.most_common(10))
