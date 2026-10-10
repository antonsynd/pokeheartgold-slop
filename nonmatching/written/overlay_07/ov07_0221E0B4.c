#include "global.h"

extern void ToggleBgLayer(u8 bgId, u8 toggle);
extern void SetBgPriority(u8 bgId, u16 priority);
extern void SetBgControlParam(void *config, u8 bgId, int attr, u8 value);
extern void BgSetPosTextAndCommit(void *bgConfig, u8 bgId, int op, int val);
extern u32 GfGfxLoader_LoadCharData(int narcId, s32 memberNo, void *bgConfig, int layer, u32 tileStart, u32 szByte, BOOL isCompressed, int heapID);
extern void GfGfxLoader_LoadScrnData(int narcId, s32 memberNo, void *bgConfig, int layer, u32 tileStart, u32 szByte, BOOL isCompressed, int heapID);
extern void PaletteData_LoadNarc(void *data, int narcID, s32 memberNo, int heapID, int bufferID, u32 size, u16 pos);
extern void BattleSystem_SetDefaultBlend(void);
extern int ov07_0221FB04(void *animSys, int a);
extern void ov07_0221DEC0(void *bgSwitch);
extern void ov07_0221E664(void *bgSwitch);
extern void ov07_0221FB58(void *animSys);
extern void ov07_0221FB30(void *animSys, int a);
extern void ov07_0221EC7C(void *animSys, int a);
extern BOOL ov07_0221BFC0(void *animSys);

#define ANIM(p) (*(u8 **)((p) + 0x48))
#define AS_U32(a, off) (*(u32 *)((a) + (off)))
#define BGCONFIG(a) (*(void **)((a) + 0xc4))

BOOL ov07_0221E0B4(void *task, u8 *bgSwitch) {
    switch (bgSwitch[5]) {
    case 0:
        ToggleBgLayer(2, 1);
        bgSwitch[5]++;
        // fallthrough
    case 1: {
        int effectPrio = ov07_0221FB04(ANIM(bgSwitch), 2);
        int basePrio = ov07_0221FB04(ANIM(bgSwitch), 1);
        SetBgPriority(3, (u8)effectPrio);
        SetBgPriority(2, (u8)basePrio);
        G2x_SetBlendAlpha_((u16 *)0x04000050, 4, 8, bgSwitch[9], bgSwitch[10]);
        ov07_0221DEC0(bgSwitch);
        bgSwitch[5]++;
    }
        // fallthrough
    case 2: {
        int done = 0;
        if (bgSwitch[9] < bgSwitch[0xb]) {
            bgSwitch[9] += 2;
        } else {
            done++;
        }
        if (bgSwitch[10] > bgSwitch[0xc]) {
            bgSwitch[10] -= 2;
        } else {
            done++;
        }
        if (done == 2) {
            bgSwitch[9] = bgSwitch[0xb] + 2;
            bgSwitch[10] = bgSwitch[0xc] - 2;
            bgSwitch[5]++;
        }
        *(vu16 *)0x04000052 = (u16)(bgSwitch[9] | (bgSwitch[10] << 8));
    } break;
    case 3: {
        u8 *a;
        ov07_0221E664(bgSwitch);
        BgSetPosTextAndCommit(BGCONFIG(ANIM(bgSwitch)), 3, 0, 0);
        BgSetPosTextAndCommit(BGCONFIG(ANIM(bgSwitch)), 3, 3, 0);
        SetBgControlParam(BGCONFIG(ANIM(bgSwitch)), 3, 2, 4);
        if (!ov07_0221BFC0(ANIM(bgSwitch))) {
            SetBgControlParam(BGCONFIG(ANIM(bgSwitch)), 3, 0, 1);
            ov07_0221FB30(ANIM(bgSwitch), 3);
            ov07_0221FB58(ANIM(bgSwitch));
        } else {
            a = ANIM(bgSwitch);
            GfGfxLoader_LoadCharData(AS_U32(a, 0x190), AS_U32(a, 0x194), BGCONFIG(a), 3, 0, 0, TRUE, AS_U32(a, 0));
            a = ANIM(bgSwitch);
            PaletteData_LoadNarc(*(void **)(a + 0xc8), AS_U32(a, 0x190), AS_U32(a, 0x198), AS_U32(a, 0), 0, AS_U32(a, 0x1a4) << 5, (u16)AS_U32(a, 0x1a0));
        }
        a = ANIM(bgSwitch);
        GfGfxLoader_LoadScrnData(AS_U32(a, 0x190), AS_U32(a, 0x19c), BGCONFIG(a), 3, 0, 0, TRUE, AS_U32(a, 0));
        bgSwitch[5]++;
    } break;
    case 4:
        BattleSystem_SetDefaultBlend();
        ToggleBgLayer(2, 0);
        ov07_0221EC7C(ANIM(bgSwitch), 2);
        bgSwitch[5]++;
        break;
    default:
        return FALSE;
    }
    return TRUE;
}
