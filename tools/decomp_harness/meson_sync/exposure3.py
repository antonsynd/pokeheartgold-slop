import os,re,subprocess,collections,sys
T=os.environ['TMPDIR']; sys.path.insert(0,T+'/mt')
from rules import IDX_NS, ZUKAN_ENC
from sym_map_full import SYM_MAP_FULL
SYM={k:v for k,v in SYM_MAP_FULL.items()}
SYM['mapingType']='mappingType'
SYM_RE=re.compile(r'\b('+'|'.join(sorted(map(re.escape,SYM),key=len,reverse=True))+r')\b')
RULES={
 'C:inc msgdata/msg/ -> files/ (cosmetic)': re.compile(r'#include\s+"msgdata/msg/'),
 'C:inc *.naix -> files/ (cosmetic)': re.compile(r'#include\s+"(?!files/)[^"]+\.naix"'),
 'NARC_msg_msg_X_bin -> msg_X': re.compile(r'\bNARC_msg_msg_\w+?_bin\b'),
 'NARC_<idxns>_ prefix strip': re.compile(r'\bNARC_(?:%s)_(?=(?:%s)_)'%('|'.join(IDX_NS),'|'.join(IDX_NS))),
 'zukan_hw_data/zukan_enc special': re.compile(r'\bNARC_zukan_hw_data_zukan_hw_data_\d_bin\b|\bNARC_zukan_enc_zukan_enc_\d{8}\b'),
 'lib/SDK symbol renames': SYM_RE,
 'SDK header path (C)': re.compile(r'#include\s*[<"](nitro/fx\.h|nitro/os/(cache|ownerInfo|interrupt|system)\.h|nitro/hw/common/io_reg\.h|spl\.h|MSL\.h)[">]'),
 'ASM:#include <nitro/fs/overlay.h>': re.compile(r'^#include <nitro/fs/overlay\.h>',re.M),
 'ASM:.include "asm/macros.inc"': re.compile(r'\.include\s+"asm/macros\.inc"'),
 'ASM:FS_OVERLAY_ID()': re.compile(r'\bFS_OVERLAY_ID\('),
}
deleted=set(l.split('\t')[1].strip() for l in open(T+'/up_ns.txt') if l.startswith('D'))
touched=set(l.strip() for l in open(T+'/up_touched.txt'))
base=set(subprocess.run(['git','ls-tree','-r','--name-only','9d8b7591f','--','src','include','asm','lib'],capture_output=True,text=True).stdout.split())
files=subprocess.run(['git','ls-tree','-r','--name-only',os.environ['REV'],'--','src','include','asm','lib'],capture_output=True,text=True).stdout.split()
files=[f for f in files if re.search(r'\.(c|h|s|inc)$',f)]
def cat(f):
    if f.startswith('src/hgify/'): return 'src/hgify (fork-new)'
    if f in base:
        if f in deleted: return 'base, DELETED upstream'
        return 'base, upstream-touched' if f in touched else 'base, untouched upstream'
    if f.startswith('asm/include/'): return 'asm/include .inc (fork-new)'
    if f.startswith('asm/'):
        b=os.path.basename(f)
        if re.search(r'_[a-z]+\d+\.s$|_[a-z]*data\.s$',b): return 'asm slice (fork-new)'
        if re.match(r'overlay_\d+_[0-9A-F]{8}\.s$',b): return 'asm overlay chunk (fork-new)'
        return 'asm other (fork-new)'
    if f.startswith('src/'): return 'src non-hgify (fork-new)'
    return 'other fork-new: '+f.split('/')[0]
# batch read
p=subprocess.Popen(['git','cat-file','--batch'],stdin=subprocess.PIPE,stdout=subprocess.PIPE)
occ=collections.defaultdict(collections.Counter); fc=collections.defaultdict(collections.Counter)
anyfile=collections.Counter(); tot=collections.Counter()
examples=collections.defaultdict(list)
for f in files:
    p.stdin.write(f'{os.environ["REV"]}:{f}\n'.encode()); p.stdin.flush()
    hdr=p.stdout.readline().split(); size=int(hdr[2]); data=p.stdout.read(size).decode('latin1'); p.stdout.read(1)
    c=cat(f); tot[c]+=1; hit=False
    for name,rx in RULES.items():
        if name.startswith('ASM:') and not f.endswith(('.s','.inc')): continue
        if name.startswith('C:') and not f.endswith(('.c','.h')): continue
        n=len(rx.findall(data))
        if n:
            occ[name][c]+=n; fc[name][c]+=1; hit=True
            if len(examples[(name,c)])<3: examples[(name,c)].append(f)
    if hit: anyfile[c]+=1
cats=sorted(tot)
print('FILES per category:',dict(tot))
print('files needing any rewrite:',dict(anyfile))
for name in RULES:
    print('\n#',name)
    for c in cats:
        if fc[name][c]: print(f'   {c:35s} files={fc[name][c]:6d} occ={occ[name][c]:7d}  e.g. {examples[(name,c)][:2]}')
