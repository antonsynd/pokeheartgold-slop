import re, subprocess, sys
def lsf(rev):
    txt = subprocess.run(['git','show',f'{rev}:main.lsf'],capture_output=True,text=True,check=True).stdout
    blocks, cur = {}, None
    for line in txt.splitlines():
        m = re.match(r'\s*(Static|Overlay)\s+(\S+)', line)
        if m: cur = m.group(2); blocks[cur] = []; continue
        m = re.match(r'\s*(Object|Library)\s+(.*\S)', line)
        if m and cur: blocks[cur].append((m.group(1), m.group(2)))
    return blocks
def mangle(p):
    # old-style 'asm/foo.o' or 'src/a/b.o' or 'lib/X/asm/y.o' (+ optional section)
    sec = ''
    if ' ' in p: p, sec = p.split(' ',1); sec=' '+sec
    base = p[:-2]
    ext = '.s' if ('/asm/' in '/'+base+'/' or base.startswith('asm/')) else '.c'
    return 'main.nef.p/' + base.replace('/','_') + ext + '.o' + sec
old, new = lsf(sys.argv[1]), lsf(sys.argv[2])
print('blocks old/new', len(old), len(new), 'missing in new:', sorted(set(old)-set(new)), 'added:', sorted(set(new)-set(old)))
for b in old:
    o = [(k, mangle(v) if k=='Object' else v) for k,v in old[b]]
    n = new.get(b, [])
    oset, nset = set(o), set(n)
    rem = [x for x in o if x not in nset]; add = [x for x in n if x not in oset]
    if rem or add:
        print(f'== {b}: -{len(rem)} +{len(add)}')
        for x in rem: print('   -', *x)
        for x in add: print('   +', *x)
