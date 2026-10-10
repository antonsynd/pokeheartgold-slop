#include "global.h"
#include "assert.h"
#include "heap.h"
#include "message_format.h"
#include "sound.h"
#include "sound_02004A44.h"
#include "sprite_system.h"
#include "sys_task_api.h"
#include "unk_02005D10.h"
#include "pokeathlon/pokeathlon.h"
#include "pokeathlon/pokeathlon_save.h"

void ov96_021ECBFC(u32 param0);
void ov96_021ED0C8(u32 param0);
int ov96_021EE440(PokeathlonCourseData *param0);
void ov96_021EE830(u32 param0);
int ov96_021EEA80(u32 param0);
MessageFormat *ov96_021EE97C(u32 param0);
u32 ov96_021ED6F8(PokeathlonCourseData *param0, u32 param1);
void ov96_021ECC38(u32 param0, u32 param1, u32 param2);
void ov96_021ED578(PokeathlonCourseData *param0, u32 param1, u32 param2);
int ov96_021ED5E0(PokeathlonCourseData *param0);
int ov96_021EC2E0(u8 *param0);
u32 ov96_021ED754(PokeathlonCourseData *param0);
u32 ov96_021ED748(u8 *param0);
BOOL ov96_021EDDA4(PokeathlonCourseData *param0, void *fn, u16 param2);
u32 ov96_021ED78C(PokeathlonCourseData *param0);
u32 ov96_021ED74C(u8 *param0);
int ov96_021EDCB4(PokeathlonCourseData *param0);
u32 ov96_021ED7C4(PokeathlonCourseData *param0);
u32 ov96_021ED750(u8 *param0);
int ov96_021ECC14(u32 param0);
void ov96_021EDF3C(MessageFormat *param0, u32 param1, u32 param2, u32 param3);
u32 ov96_021ED728(PokeathlonCourseData *param0, u32 param1, u32 param2);
void ov96_021ED7FC(PokeathlonCourseData *param0, u32 *param1);
void ov96_021ECC7C(u32 param0, u8 *param1, u32 *param2);
void ov96_021EE290(u8 *param0);
u32 ov96_021ECC4C(u32 param0, u32 param1);
void ov96_021EDE64(PokeathlonCourseData *param0, u32 param1);
void ov96_021EC458(u32 param0, u32 param1);
void ov96_021ECA70(PokeathlonCourseData *param0, u32 param1);
void ov96_021ED158(u32 param0, int param1);
void ov96_021ECB38(u32 *param0, PokeathlonCourseData *param1, u32 idx, int mode, u32 param4);
int ov96_021EDC38(u32 param0, int param1);
int ov96_021EE580(PokeathlonCourseData *param0);
void ov96_021EE944(u32 param0);
void ov96_021EE8CC(u32 param0, int param1);

u32 ov96_021ED618(PokeathlonCourseData *, u32, u32);
u32 ov96_021ED660(PokeathlonCourseData *, u32, u32);
u32 ov96_021ED6A8(PokeathlonCourseData *, u32, u32);

#define A8(off)  (*(u8 *)(alloc + (off)))
#define A32(off) (*(u32 *)(alloc + (off)))

BOOL ov96_021EBB64(PokeathlonCourseData *param0) {
    u8 *alloc = (u8 *)PokeathlonCourse_GetHeapAllocPtr4(param0);
    int busy = 0;
    MessageFormat *msg;
    int animId;
    u32 tmp;
    u32 i;
    u32 idx;
    u32 courseIdx;
    u32 lim;
    PokeathlonSave *rec;
    PlayerProfile *profile;

    ov96_021ECBFC(A32(0x8c));
    ov96_021ED0C8(A32(0x90));
    if (PokeathlonCourse_GetMode(param0) == 1) {
        busy = ov96_021EE440(param0);
    }
    ov96_021EE830(A32(0xc));
    if (ov96_021EEA80(A32(0xc)) != 0 || busy != 0) {
        return FALSE;
    }
    msg = ov96_021EE97C(A32(0xc));
    animId = -1;
    switch (A8(0xb5)) {
    case 0:
        A8(0xb5) = 1;
        animId = 3;
        break;
    case 1:
        A8(0xb5) = 2;
        animId = 4;
        break;
    case 2:
        for (i = 0; (int)i < 4; i++) {
            ov96_021ECC38(A32(0x8c), (u8)i, ov96_021ED6F8(param0, (u8)i));
        }
        A8(0xb5) = 3;
        // fallthrough
    case 3:
        if (A8(0xb2) < 4) {
            animId = 5;
            ov96_021ED578(param0, A8(0xb2), ov96_021ED6F8(param0, A8(0xb2)));
            A8(0xb2) = A8(0xb2) + 1;
        } else {
            A8(0xb2) = 0;
            A8(0xb5) = 4;
            animId = 6;
        }
        break;
    case 4:
        if (ov96_021ED5E0(param0) != 0) {
            A8(0xb5) = 5;
            animId = 7;
        } else {
            A8(0xb5) = 6;
            animId = 9;
        }
        break;
    case 5:
        if (ov96_021EC2E0(alloc) == 0) {
            if (A8(0xb4) >= ov96_021ED754(param0)) {
                A8(0xb2) = 0;
                A8(0xb3) = 0;
                A8(0xb4) = 0;
                A8(0xb5) = 6;
                animId = 0xa;
            } else {
                if (ov96_021EDDA4(param0, (void *)ov96_021ED618, ov96_021ED748(alloc)) != 0) {
                    animId = 8;
                }
            }
        }
        break;
    case 6:
        A8(0xb5) = 7;
        animId = 0xb;
        break;
    case 7:
        if (ov96_021EC2E0(alloc) == 0) {
            if (A8(0xb4) >= ov96_021ED78C(param0)) {
                A8(0xb2) = 0;
                A8(0xb3) = 0;
                A8(0xb4) = 0;
                A8(0xb5) = 8;
                animId = 0xa;
            } else {
                if (ov96_021EDDA4(param0, (void *)ov96_021ED660, ov96_021ED74C(alloc)) != 0) {
                    animId = 0xc;
                }
            }
        }
        break;
    case 8:
        if (ov96_021EDCB4(param0) != 4) {
            A8(0xb5) = 9;
            animId = 0xe;
        } else {
            A8(0xb5) = 0xb;
        }
        break;
    case 9:
        animId = ov96_021EDCB4(param0);
        A8(0xb5) = 0xa;
        animId += 0xf;
        break;
    case 10:
        if (ov96_021EC2E0(alloc) == 0) {
            if (A8(0xb4) >= ov96_021ED7C4(param0)) {
                A8(0xb2) = 0;
                A8(0xb3) = 0;
                A8(0xb4) = 0;
                A8(0xb5) = 0xb;
                animId = 0x15;
            } else {
                if (ov96_021EDDA4(param0, (void *)ov96_021ED6A8, ov96_021ED750(alloc)) != 0) {
                    animId = 0x14;
                }
            }
        }
        break;
    case 0xb:
        A8(0xb5) = 0xc;
        animId = 0x16;
        StopBGM(GF_GetCurrentPlayingBGM(), 0x10);
        PlaySE(0x6ee);
        break;
    case 0xc:
        if (ov96_021ECC14(A32(0x8c)) != 0) {
            tmp = A32(0x94);
            A32(0x94) = tmp + 1;
            if ((int)tmp > 0x1e) {
                if (PokeathlonCourse_GetMode(param0) == 0) {
                    lim = 3;
                } else {
                    lim = 4;
                }
                A32(0x94) = 0;
                if (A8(0xb4) >= (u8)lim) {
                    A8(0xb4) = 0;
                    A8(0xb5) = 0xd;
                } else {
                    ov96_021EDF3C(msg, A8(0xb4) + 1, 1, 0);
                    animId = 0x17;
                    for (i = 0; (int)i < 4; i++) {
                        ov96_021ECC38(A32(0x8c), (u8)i, (u16)ov96_021ED728(param0, (u8)i, A8(0xb4)));
                    }
                    A8(0xb4) = A8(0xb4) + 1;
                }
            }
        }
        break;
    case 0xd:
        ov96_021ED7FC(param0, &tmp);
        ov96_021ECC7C(A32(0x8c), alloc + 0x9c, &tmp);
        if (((A32(0x9c) << 8) >> 24) == ((A32(0xa0) << 8) >> 24)) {
            A8(0xb5) = 0xe;
        } else {
            A8(0xb5) = 0xf;
        }
        break;
    case 0xe:
        animId = 0x18;
        ov96_021EE290(alloc + 0x9c);
        A8(0xb5) = 0xf;
        break;
    case 0xf:
        animId = 0x19;
        ov96_021EDF3C(msg, ov96_021ECC4C(A32(0x8c), (u8)((A32(0x9c) << 4) >> 28)), 3, 0);
        ov96_021EDE64(param0, A32(0x8c));
        A8(0xb5) = 0x10;
        break;
    case 0x10:
        ov96_021EC458(A32(4), A32(0));
        A8(0xb5) = 0x11;
        // fallthrough
    case 0x11:
        animId = 0x1a;
        idx = (A32(0x9c) << 4) >> 28;
        profile = PokeathlonCourse_GetPlayerProfileFromData(param0, idx);
        BufferPlayersName(msg, 0, profile);
        ov96_021ECA70(param0, (u8)idx);
        ov96_021ED158(A32(0x90), 1);
        ov96_021ECB38((u32 *)(alloc + 0x20), param0, idx, 2, A32(0));
        ManagedSprite_SetAnim(*(ManagedSprite **)(alloc + idx * 4 + 0x20), 1);
        StopSE(0x6ee, 0);
        PlaySE(0x8e2);
        PlaySE(0x8e0);
        PlayBGM(0x476);
        if (A8(0xb1) == 0xa) {
            A8(0xb5) = 0x16;
        } else {
            A8(0xb5) = 0x12;
        }
        break;
    case 0x12:
        animId = 0x1b;
        profile = PokeathlonCourse_GetPlayerProfileFromData(param0, (A32(0x9c) << 4) >> 28);
        BufferPlayersName(msg, 0, profile);
        ManagedSprite_SetDrawFlag(*(ManagedSprite **)(alloc + 0x80), 1);
        BufferPokeathlonMedalName(msg, 1, ov96_021EDC38(A8(0xb1), 0));
        if (A8(0xb1) >= 5) {
            ManagedSprite_SetDrawFlag(*(ManagedSprite **)(alloc + 0x84), 1);
            animId = 0x1c;
            BufferPokeathlonMedalName(msg, 2, ov96_021EDC38(A8(0xb1), 1));
        }
        A8(0xb5) = 0x13;
        break;
    case 0x13:
        courseIdx = A8(0xb1);
        if (PokeathlonCourse_GetMode(param0) == 0) {
            idx = (A32(0x9c) << 4) >> 28;
            if (idx != (u32)ov96_021E5F24(param0)) {
                animId = 0x1e;
                BufferPokeathlonCourseName(msg, 0, courseIdx);
            } else {
                if (idx != 0) {
                    GF_AssertFail();
                }
                rec = PokeathlonSave_dummy2(Save_Pokeathlon_Get(PokeathlonCourse_GetSaveData(param0)));
                tmp = ov96_021ECC4C(A32(0x8c), (u8)((A32(0x9c) << 4) >> 28));
                if (*(u16 *)((u8 *)rec + courseIdx * 0x2c + 6) < tmp) {
                    animId = 0x1d;
                    profile = PokeathlonCourse_GetPlayerProfileFromData(param0, (A32(0x9c) << 4) >> 28);
                    BufferPlayersName(msg, 0, profile);
                    BufferPokeathlonCourseName(msg, 1, courseIdx);
                }
            }
        } else {
            animId = 0x1e;
            BufferPokeathlonCourseName(msg, 0, courseIdx);
        }
        A8(0xb5) = 0x14;
        break;
    case 0x14:
        animId = 0x1f;
        StopSE(0x8e2, 0x78);
        A32(0xb8) = 1;
        A8(0xb5) = 0x15;
        break;
    case 0x15:
        if (PokeathlonCourse_GetMode(param0) == 0 || ov96_021EE580(param0) != 0) {
            if (ov96_021EC2E0(alloc) != 0) {
                Heap_Free((void *)A32(0x88));
                SysTask_Destroy((SysTask *)A32(8));
            }
            ov96_021EE944(A32(0xc));
            PokeathlonCourse_SetStateField07(param0, 2);
            return FALSE;
        }
        break;
    case 0x16:
        animId = 0x1e;
        BufferPokeathlonCourseName(msg, 0, A8(0xb1));
        A8(0xb5) = 0x14;
        break;
    default:
        GF_AssertFail();
        break;
    }
    if (animId != -1) {
        ov96_021EE8CC(A32(0xc), animId);
        A8(0xb7) = A8(0xb7) + 1;
    }
    return FALSE;
}
