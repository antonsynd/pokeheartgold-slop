#include "global.h"
#include "bg_window.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "overlay_manager.h"
#include "sys_task_api.h"
#include "system.h"
#include "unk_02005D10.h"
#include "constants/sndseq.h"

extern void CTRDG_IsExisting(void);
extern void ov74_0222CE10(void *appData);
extern void ov74_022352A0(u32 heapId);
extern void ov74_0222AB70(void *appMan, void *appData);
extern void ov74_02229F04(void *appData);
extern void ov74_0223539C(u32 a, u32 b, void *c, u32 d);
extern void ov74_022353FC(void *state);
extern void ov74_0222AB0C(void *appMan, void *state, void *fn);
extern void ov74_0222AC1C(void *appMan, void *state);
extern void ov74_0222CEE0(void *appData);
extern void ov74_02229E28(void *appData, int flag);
extern void *ov74_0222A078(void *appMan);
extern int ov74_0222FD98(void *saveData, void *eventData);
extern void *ov74_02236988(void);
extern void ov74_0222AAAC(void *appMan, void *window, void *str);
extern void ov74_0222AA18(void *appMan, void *window, u32 msg);
extern void ov74_0222A43C(void *appMan);
extern void ov74_0222CEC0(void);
extern void ov74_02229F28(void *appData, int arg);
extern int ov74_0222A0E4(void *wonderCard);
extern void ov74_0222A174(void *appMan);
extern void ov74_02229F60(void *window, int arg);
extern void *ov74_02235708(void);
extern void ov74_0222C04C(SysTask *task, void *data);
extern void ov74_02235DC4(void *bgConfig, void *wonderCard);
extern int ov74_0222ADBC(void *appMan, void *window, u32 msg, u32 nextState);
extern int ov74_0223615C(void);
extern void ov74_02236128(void);
extern void ov74_02229F78(void *window, int arg);
extern int ov74_0222A494(void *appMan);
extern int ov74_02229D6C(void *appData);
extern void ov74_0222A240(void *appMan, int arg);
extern int sub_0203769C(void);
extern int sub_020373B4(u16 netId);
extern int sub_02037B38(int arg);
extern void sub_020398D4(int a, int b);
extern void ov74_02229DF8(void);
extern void sub_0203A914(void);
extern int ov74_02229DBC(void);
extern void ov74_02236140(void);
extern void sub_02037AC0(int arg);
extern void ov74_0222A94C(void *appMan, u32 a, u32 b);
extern void ov74_02235258(void *dest, u32 size);
extern void ov74_0222AE3C(void *appData);
extern int ov74_0222AD6C(void *appMan);
extern void ov74_02229E68(void *appMan);
extern void ov74_02235390(int arg);
extern void ov74_0222A7A0(void *bgConfig);
extern void ov74_0222FC50(void *bgConfig, void *wonderCard, u32 heapId);
extern void ov74_0222EC08(void *bgConfig, void *wonderCard, u32 heapId);
extern void ov74_022358C8(int arg);
extern int ov74_0222A6C0(void *appMan);
extern int ov74_0222A5AC(void *appMan);
extern int ov74_0222A2A4(void *appMan);
extern int ov74_0222A538(void *appMan);
extern u8 ov74_0223D0A8[];

#define D_I32(off) (*(int *)((u8 *)appData + (off)))
#define D_PTR(off) ((void *)((u8 *)appData + (off)))
#define BGCFG (*(BgConfig **)appData)
#define DIST_STATE (*(int *)(ov74_0223D0A8 + 0x10))
#define FLAG_DA (*(u8 *)((u8 *)appData + 0xda))
#define CLEAR_FLAG_DA() (FLAG_DA = FLAG_DA & ~4)
#define ADD_TITLE_WINDOW() \
    do { \
        if (!WindowIsInUse(D_PTR(0x58))) { \
            AddWindowParameterized(BGCFG, D_PTR(0x58), 0, 3, 2, 0x1a, 4, 0, 0x1c4); \
        } \
    } while (0)

u32 ov74_0222C2EC(void *appMan, int *state)
{
    u8 *appData;
    u32 cur;
    u32 r3Left;

    appData = OverlayManager_GetData(appMan);
    CTRDG_IsExisting();
    if (D_I32(0x5c8) != 0x1d) {
        ov74_0222CE10(appData);
    }

    cur = *state;
    /* r3 holds the dispatch value (*state) until a call clobbers it; the states below can reach the common tail
       without calling anything (the ones that may call set r3Left to 0 where they do) */
    r3Left = (cur == 6 || cur == 15 || cur == 17 || cur == 18 || cur == 19 || cur == 21 || cur == 23 || cur == 25
              || cur == 26 || (cur >= 28 && cur <= 30) || cur == 35 || (cur >= 37 && cur <= 48) || cur == 51
              || cur == 56 || cur > 0x3a)
        ? cur
        : 0;
    if (cur <= 0x3a) {
        switch (cur) {
        case 0:
            ov74_022352A0(0x54);
            D_I32(0x15d8) = (int)state;
            *state = 1;
            break;
        case 1:
            ov74_0222AB70(appMan, appData);
            ov74_02229F04(appData);
            ov74_0223539C(1, 3, state, 2);
            break;
        case 2:
            ov74_022353FC(state);
            break;
        case 3:
            ov74_0222AB0C(appMan, state, ov74_0222A6C0);
            break;
        case 4:
            ov74_0222AB0C(appMan, state, ov74_0222A5AC);
            break;
        case 5:
            ov74_0222AB0C(appMan, state, ov74_0222A2A4);
            break;
        case 27:
            ov74_0222AC1C(appMan, state);
            break;
        case 32:
            ov74_0222CEE0(appData);
            if (DIST_STATE == 0x2d) {
                ov74_02229E28(appData, 0);
                ov74_0222A078(appMan);
                D_I32(0x80) = ov74_0222FD98(*(void **)D_PTR(4), D_PTR(0x8c));
                if (D_I32(0x80) == 1) {
                    ov74_02229E28(appData, 0);
                    *state = 0x31;
                } else {
                    ADD_TITLE_WINDOW();
                    ov74_0222AAAC(appMan, D_PTR(0x58), ov74_02236988());
                    ov74_0222AA18(appMan, D_PTR(0x18), 4);
                    ov74_0222A43C(appMan);
                    *state = 0x1f;
                }
            }
            if ((u32)(DIST_STATE - 0x2e) <= 1) {
                ov74_0222CEC0();
                *state = 0x11;
            }
            break;
        case 31:
            ov74_0222AB0C(appMan, state, ov74_0222A538);
            ov74_0222CEE0(appData);
            break;
        case 33: {
            void *wonderCard = ov74_0222A078(appMan);

            ov74_02229E28(appData, 1);
            ov74_02229F28(appData, 1);
            if (ov74_0222A0E4(wonderCard) == 1) {
                u8 *animMan;

                ov74_0222A174(appMan);
                D_I32(0x29f4) = 1;
                ov74_02229F28(appData, -1);
                ov74_02229F60(D_PTR(0x58), 0);
                animMan = Heap_Alloc(0x54, 0x30a4);
                memset(animMan, 0, 0x30a4);
                *(void **)(animMan + 0x30a0) = D_PTR(0x29f4);
                *(void **)(animMan + 0xc) = ov74_02235708();
                SysTask_CreateOnMainQueue((SysTaskFunc)ov74_0222C04C, animMan, 5);
            } else {
                ov74_02235DC4(BGCFG, wonderCard);
                ov74_0222A174(appMan);
            }
            *state = 0x22;
        } break;
        case 35:
            if (D_I32(0x29f4) == 0) {
                r3Left = 0;
                *state = ov74_0222ADBC(appMan, D_PTR(0x18), 8, 0x38);
                GfGfx_EngineATogglePlanes(1, 1);
            }
            break;
        case 34: {
            int saveStatus = ov74_0223615C();

            if (saveStatus == 4) {
                ov74_02236128();
            }
            if (saveStatus == 2) {
                void *wonderCard;

                ov74_02229E28(appData, 0);
                ov74_02229F28(appData, -1);
                ov74_02229F78(D_PTR(0x18), 0);
                BgClearTilemapBufferAndCommit(BGCFG, 0);
                GfGfx_EngineATogglePlanes(1, 0);
                wonderCard = D_PTR(0xdc);
                if (ov74_0222A0E4(wonderCard) == 1) {
                    ov74_02235DC4(BGCFG, wonderCard);
                    D_I32(0x29f4) = 2;
                } else {
                    PlaySE(SEQ_SE_DP_UG_020);
                }
                *state = 0x23;
            } else if (saveStatus == 3) {
                ov74_02229E28(appData, 0);
                ov74_02229F28(appData, -1);
                CLEAR_FLAG_DA();
                *state = ov74_0222ADBC(appMan, D_PTR(0x18), 0x1b, 0x38);
            }
        } break;
        case 36: {
            int dist;

            ov74_0222CEE0(appData);
            dist = DIST_STATE;
            if ((u32)(dist - 0x2d) <= 2) {
                if (dist == 0x2f) {
                    ov74_0222CEC0();
                }
                *state = ov74_0222A494(appMan);
            }
        } break;
        case 7:
            D_I32(0x438) = ov74_02229D6C(appData);
            if (D_I32(0x438) != -1) {
                ov74_02229E28(appData, 0);
                D_I32(0x80) = ov74_0222FD98(*(void **)D_PTR(4), D_PTR(0x8c));
                ADD_TITLE_WINDOW();
                ov74_0222AAAC(appMan, D_PTR(0x58), D_PTR(0x8c));
                ov74_0222AA18(appMan, D_PTR(0x18), 4);
                ov74_0222A240(appMan, 0);
                *state = 8;
            }
            if (!(gSystem.newKeys & 2)) {
                D_I32(0x434) = D_I32(0x434) - 1;
                if (D_I32(0x434) != 0) {
                    break;
                }
            }
            ov74_02229E28(appData, 0);
            ov74_02229DF8();
            sub_0203A914();
            *state = 0x11;
            break;
        case 8:
            ov74_0222AB0C(appMan, state, ov74_0222A494);
            break;
        case 9: {
            int netId = sub_0203769C();

            if (netId != 0 && sub_020373B4((u16)netId) != 0) {
                if (sub_02037B38(0xab) == 1) {
                    ov74_02229E28(appData, 0);
                    sub_020398D4(1, 1);
                    ov74_0222AA18(appMan, D_PTR(0x18), 7);
                    ov74_02229F28(appData, 1);
                    ov74_02229E28(appData, 1);
                    D_I32(0x434) = 600;
                    *state = 10;
                }
            } else if (netId != 0 && sub_020373B4((u16)netId) == 0) {
                ov74_02229DF8();
                sub_0203A914();
                ov74_02229F28(appData, -1);
                ov74_02229E28(appData, 0);
                *state = 0x10;
                break;
            }
            if (!(gSystem.newKeys & 2)) {
                D_I32(0x434) = D_I32(0x434) - 1;
                if (D_I32(0x434) != 0) {
                    break;
                }
            }
            ov74_02229DF8();
            sub_0203A914();
            ov74_02229F28(appData, -1);
            ov74_02229E28(appData, 0);
            *state = 0x11;
        } break;
        case 10: {
            int netId;

            if (ov74_02229DBC() != 0) {
                *state = 0xb;
            }
            netId = sub_0203769C();
            if (!(gSystem.newKeys & 2)) {
                D_I32(0x434) = D_I32(0x434) - 1;
                if (D_I32(0x434) != 0) {
                    if (netId == 0) {
                        break;
                    }
                    if (sub_020373B4((u16)netId) != 0) {
                        break;
                    }
                }
            }
            ov74_02229E28(appData, 0);
            ov74_02229DF8();
            sub_0203A914();
            *state = 0x11;
        } break;
        case 11:
            ov74_02235DC4(BGCFG, ov74_0222A078(appMan));
            sub_020398D4(0, 0);
            ov74_0222A174(appMan);
            *state = 0xc;
            break;
        case 12: {
            int netId = sub_0203769C();

            if (netId != 0 && sub_020373B4((u16)netId) == 0) {
                ov74_02229DF8();
                D_I32(0x29ec) = 1;
                ov74_02236140();
                ov74_02229E28(appData, 0);
                sub_0203A914();
                ov74_02229F28(appData, -1);
                *state = 0xe;
                break;
            }
            if (ov74_0223615C() == 4) {
                sub_02037AC0(0x93);
                *state = 0xd;
                D_I32(0x43c) = 0x78;
                break;
            }
            if (ov74_0223615C() == 3) {
                ov74_02236140();
                CLEAR_FLAG_DA();
                ov74_02229E28(appData, 0);
                *state = ov74_0222ADBC(appMan, D_PTR(0x18), 0x1b, 0x38);
            }
        } break;
        case 13:
            if (sub_02037B38(0x93) == 1) {
                ov74_02236128();
                D_I32(0x43c) = 10;
                *state = 0xf;
                break;
            }
            D_I32(0x43c) = D_I32(0x43c) - 1;
            if (D_I32(0x43c) == 0) {
                ov74_02236140();
                CLEAR_FLAG_DA();
                ov74_02229E28(appData, 0);
                *state = ov74_0222ADBC(appMan, D_PTR(0x18), 0x1b, 0x38);
            }
            break;
        case 14:
            ov74_02229F60(D_PTR(0x58), 0);
            CLEAR_FLAG_DA();
            *state = ov74_0222ADBC(appMan, D_PTR(0x18), 0x1d, 0x38);
            break;
        case 15:
            D_I32(0x43c) = D_I32(0x43c) - 1;
            if (D_I32(0x43c) == 0) {
                r3Left = 0;
                ov74_02229E28(appData, 0);
                ov74_02229DF8();
                sub_0203A914();
                PlaySE(SEQ_SE_DP_UG_020);
                ov74_02229F28(appData, -1);
                *state = ov74_0222ADBC(appMan, D_PTR(0x18), 8, 0x38);
            }
            break;
        case 16:
            PlaySE(SEQ_SE_DP_SELECT);
            ov74_0222AA18(appMan, D_PTR(0x18), 0x19);
            ov74_02229F60(D_PTR(0x58), 0);
            *state = 0x12;
            break;
        case 17:
            if (D_I32(0x15dc) != 0) {
                D_I32(0x15dc) = D_I32(0x15dc) - 1;
                break;
            }
            r3Left = 0;
            ov74_02229E28(appData, 0);
            PlaySE(SEQ_SE_DP_SELECT);
            ov74_0222AA18(appMan, D_PTR(0x18), 0x18);
            ov74_02229F60(D_PTR(0x58), 0);
            *state = 0x12;
            break;
        case 18:
            if (gSystem.newKeys != 0) {
                r3Left = 0;
                PlaySE(SEQ_SE_DP_SELECT);
                ov74_0222A94C(appMan, 0xc4, 0);
                *state = 3;
            }
            break;
        case 19:
            if (D_I32(0x15dc) != 0) {
                D_I32(0x15dc) = D_I32(0x15dc) - 1;
                break;
            }
            r3Left = 0;
            if (D_I32(0x84) != 0x1b) {
                ov74_02235258(D_PTR(0x8c), 0x3a8);
            }
            D_I32(0x80) = ov74_0222FD98(*(void **)D_PTR(4), D_PTR(0x8c));
            if (D_I32(0x80) == 1) {
                ov74_02229E28(appData, 0);
                *state = 0x31;
                break;
            }
            ADD_TITLE_WINDOW();
            ov74_0222AAAC(appMan, D_PTR(0x58), D_PTR(0x8c));
            ov74_0222AA18(appMan, D_PTR(0x18), 4);
            ov74_0222A240(appMan, 0);
            *state = 0x14;
            break;
        case 20:
            ov74_0222AB0C(appMan, state, ov74_0222A494);
            break;
        case 21:
            *state = 0x16;
            break;
        case 22:
            ov74_02235DC4(BGCFG, ov74_0222A078(appMan));
            ov74_0222AA18(appMan, D_PTR(0x18), 7);
            ov74_02229F28(appData, 1);
            ov74_02229E28(appData, 1);
            D_I32(0x43c) = 0x3c;
            *state = 0x17;
            break;
        case 23:
            D_I32(0x43c) = D_I32(0x43c) - 1;
            if (D_I32(0x43c) == 0) {
                r3Left = 0;
                ov74_0222A174(appMan);
                *state = 0x18;
            }
            break;
        case 24:
            if (ov74_0223615C() == 4) {
                ov74_02236128();
            }
            if (ov74_0223615C() == 2) {
                D_I32(0x43c) = 1;
                ov74_02229E28(appData, 0);
                ov74_02229F28(appData, -1);
                PlaySE(SEQ_SE_DP_UG_020);
                *state = ov74_0222ADBC(appMan, D_PTR(0x18), 8, 0x19);
                break;
            }
            if (ov74_0223615C() == 3) {
                ov74_02229F28(appData, -1);
                CLEAR_FLAG_DA();
                *state = ov74_0222ADBC(appMan, D_PTR(0x18), 0x1b, 0x38);
            }
            break;
        case 25:
            D_I32(0x43c) = D_I32(0x43c) - 1;
            if (D_I32(0x43c) == 0) {
                D_I32(0x43c) = 0x10000;
                *state = 0x38;
            }
            break;
        case 49:
            if (D_I32(0x80) != 5) {
                ov74_0222AE3C(appData);
            }
            *state = ov74_0222AD6C(appMan);
            ov74_02229F60(D_PTR(0x48), 0);
            break;
        case 50:
            *state = ov74_0222ADBC(appMan, 0, 0, cur);
            break;
        case 51:
            if (gSystem.newKeys != 0) {
                r3Left = 0;
                ov74_02229F60(D_PTR(0x58), 0);
                *state = ov74_0222A5AC(appMan);
            }
            break;
        case 52:
            ov74_0222A240(appMan, 1);
            *state = 8;
            D_I32(0x80) = 0;
            break;
        case 53:
            ov74_02229E68(appMan);
            D_I32(0x440) = 0;
            return 1;
        case 54:
            ov74_02229E68(appMan);
            D_I32(0x440) = 1;
            return 1;
        case 55:
            ov74_02229E68(appMan);
            D_I32(0x440) = 2;
            return 1;
        case 56:
            if (gSystem.newKeys != 0) {
                r3Left = 0;
                PlaySE(SEQ_SE_DP_SELECT);
                if (((FLAG_DA >> 2) & 1) == 1) {
                    ov74_0223539C(0, 0x39, (void *)D_I32(0x15d8), 2);
                } else {
                    ov74_02235390(1);
                    ov74_0223539C(0, 0x3a, (void *)D_I32(0x15d8), 2);
                }
            }
            break;
        case 57:
            ov74_0222A7A0(BGCFG);
            GfGfx_EngineBTogglePlanes(1, 0);
            GfGfx_EngineBTogglePlanes(2, 1);
            if (((FLAG_DA >> 2) & 1) == 1 && *(u16 *)D_PTR(0xdc) == 3 && D_I32(0xe0) == 0x215) {
                ov74_0222FC50(BGCFG, D_PTR(0xdc), 0x54);
            } else {
                ov74_0222EC08(BGCFG, D_PTR(0xdc), 0x54);
            }
            ov74_0223539C(1, 0x38, (void *)D_I32(0x15d8), 2);
            CLEAR_FLAG_DA();
            break;
        case 58:
            OS_ResetSystem(0);
            break;
        default:
            break;
        }
    }

    if (D_I32(0x29e8) != 0) {
        /* r1 is the pointer itself, r2 and r3 are what the asm leaves there (see r3Left) */
        ((void (*)(void *, u32, u32, u32))D_I32(0x29e8))(appData, D_I32(0x29e8), 0, r3Left);
    }
    ov74_022358C8(D_I32(0x29f4));
    return 0;
}
