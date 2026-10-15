import re
IDX_NS = ['scr_seq','preview_graphic','resdat','legend','camera_viewfinder','mmodel','sbox_gra',
          'gs_areawindow','effect_script','move_script','subscript','poke_icon']
ZUKAN_ENC = {
 'NARC_zukan_enc_zukan_enc_00000000':'NARC_zukan_enc_gDungeons',
 'NARC_zukan_enc_zukan_enc_00000001':'NARC_zukan_enc_gOverworlds',
}
for k,v in zip([2,497,992,1487,1982,2477,2972,3467],range(8)):
    ZUKAN_ENC['NARC_zukan_enc_zukan_enc_%08d'%k]='NARC_zukan_enc_gEncounters_method_%d_mon_000_none'%v
C_RULES = [
 # include paths
 (re.compile(r'(#include\s+")(msgdata/msg/)'), r'\1files/\2'),
 (re.compile(r'(#include\s+")(?!files/)([^"]+\.naix")'), r'\1files/\2'),
 # msg bank constants
 (re.compile(r'\bNARC_msg_msg_(\w+?)_bin\b'), r'msg_\1'),
 # --index (no namespace) NARCs: drop NARC_<ns>_ prefix
 (re.compile(r'\bNARC_(?:%s)_(?=(?:%s)_)' % ('|'.join(IDX_NS),'|'.join(IDX_NS))), ''),
 (re.compile(r'\bNARC_zukan_hw_data_(zukan_hw_data_0_bin)\b'), r'\1'),
 (re.compile(r'\bNARC_zukan_enc_zukan_enc_\d{8}\b'), lambda m: ZUKAN_ENC.get(m.group(0), m.group(0))),
 # NitroSDK renames
 (re.compile(r'\bOS_IE_VBLANK\b'), 'OS_IE_V_BLANK'),
 (re.compile(r'\bOS_IE_HBLANK\b'), 'OS_IE_H_BLANK'),
]
def rewrite_c(t):
    for r,s in C_RULES: t=r.sub(s,t)
    return t

import os,sys
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__)))
from sym_map_full import SYM_MAP_FULL as SYM_MAP
_SYM_RE = re.compile(r'\b(' + '|'.join(sorted(map(re.escape,SYM_MAP),key=len,reverse=True)) + r')\b')
ASM_RULES = [
 (re.compile(r'^#include <nitro/fs/overlay\.h>$', re.M), ''),
 (re.compile(r'^(\s*\.include\s+")asm/(macros\.inc")', re.M), r'\1\2'),
 (re.compile(r'\bFS_OVERLAY_ID\((\w+)\)'), r'SDK_OVERLAY_\1_ID'),
 (_SYM_RE, lambda m: SYM_MAP[m.group(1)]),
]
def rewrite_asm(t):
    for r,s in ASM_RULES: t=r.sub(s,t)
    return t
def rewrite_c_full(t):
    t=rewrite_c(t)
    return _SYM_RE.sub(lambda m: SYM_MAP[m.group(1)], t)
