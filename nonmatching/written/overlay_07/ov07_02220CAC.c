#include "global.h"

typedef struct UnkStruct_ov07_02220CAC_Data {
    void *battleAnimSys;
    u8 pad_04[0xc];
    int targetMode;
    u8 pad_14[4];
    int axisMode;
    u8 pad_1c[8];
    int startBattler;
    int endBattler;
} UnkStruct_ov07_02220CAC_Data;

typedef struct UnkStruct_ov07_02220CAC_Emitter {
    u8 pad_00[0x50];
    s16 axis[3];
} UnkStruct_ov07_02220CAC_Emitter;

extern int ov07_02231924(void *sys, int battler);
extern int ov07_0223192C(void *sys, int battler);
extern int ov07_0221BFC0(void *sys);

extern u8 ov07_02235CE0[];
extern u8 ov07_02235620[];
extern u8 ov07_022357D0[];
extern u8 ov07_02235B30[];
extern u8 ov07_02235E90[];
extern u8 ov07_02235980[];
extern u8 ov07_02236040[];
extern u8 ov07_022361F0[];
extern const int ov07_022355B0[28];
extern const int ov07_022354D0[4];
extern const int ov07_02235510[12];

#define TABLE_WORD(table, extra) (*(int *)((table) + st * 0x48 + et * 0xc + (extra)))

// Case 24 copies a 6-entry table onto the stack and indexes it with a battler type, unchecked. For a
// type outside the table the original reads whatever lies around its frame: the few words it stored
// there, zeros, the six registers it pushed, then the caller's stack. FrameRead models those words
// so the C reads the same ones.
static int FrameRead(u32 address, u32 sp, u32 entrySp, const u32 *saved, const int *words) {
    u32 base = entrySp - 0x160;

    if (address - (base + 0x28) < 12 * 4) {
        return ov07_02235510[(address - (base + 0x28)) / 4];
    }
    if (address == base + 0) {
        return words[0];
    }
    if (address == base + 4) {
        return words[1];
    }
    if (address == base + 0x14) {
        return words[2];
    }
    if (address == base + 0x18) {
        return words[3];
    }
    if (address - (entrySp - 24) < 24) {
        return saved[(address - (entrySp - 24)) / 4];
    }
    if (address >= sp && address < entrySp) {
        return 0;
    }
    return *(int *)address;
}

void ov07_02220CAC(UnkStruct_ov07_02220CAC_Emitter *emitter, UnkStruct_ov07_02220CAC_Data *data) {
    u32 saved[6];
    __asm__ volatile("movs %0, r3" : "=l"(saved[0]) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(saved[1]) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(saved[2]) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(saved[3]) : : "cc");
    __asm__ volatile("mov %0, lr" : "=r"(saved[5]));
    u32 sp;
    __asm__ volatile("mov %0, sp" : "=r"(sp));
    u32 frameAddress = (u32)__builtin_frame_address(0);
    u32 entrySp = frameAddress + 8;
    saved[4] = *(u32 *)frameAddress;

    s16 axis[3];
    int st;
    int et;
    int i;

    axis[0] = 0;
    axis[1] = 0;
    axis[2] = 0;

    st = ov07_02231924(data->battleAnimSys, data->startBattler);
    et = ov07_02231924(data->battleAnimSys, data->endBattler);

    switch ((u32)data->axisMode) {
    case 0:
        axis[0] = 0;
        axis[1] = 0;
        axis[2] = 0;
        break;
    case 1:
    case 2:
        if (ov07_0221BFC0(data->battleAnimSys) == 1) {
            if (data->targetMode == 2) {
                axis[0] = -0xd08;
                axis[1] = 0x730;
                axis[2] = 0x2e0;
            } else {
                axis[0] = 0x920;
                axis[1] = -0x5a0;
                axis[2] = 0x2e0;
            }
        } else {
            axis[0] = TABLE_WORD(ov07_02235CE0, 0);
            axis[1] = TABLE_WORD(ov07_02235CE0, 4);
            axis[2] = TABLE_WORD(ov07_02235CE0, 8) / 2;
        }
        break;
    case 3:
        axis[0] = -800;
        axis[1] = 0x4b0;
        axis[2] = 500;
        break;
    case 4:
    case 5:
        if (ov07_0221BFC0(data->battleAnimSys) == 1) {
            axis[0] = -TABLE_WORD(ov07_02235CE0, 0);
            axis[1] = TABLE_WORD(ov07_02235CE0, 4);
            axis[2] = TABLE_WORD(ov07_02235CE0, 8) / 2;
        } else if (ov07_0223192C(data->battleAnimSys, data->startBattler) == ov07_0223192C(data->battleAnimSys, data->endBattler)) {
            axis[0] = TABLE_WORD(ov07_02235CE0, 0);
            axis[1] = TABLE_WORD(ov07_02235CE0, 4);
            axis[2] = TABLE_WORD(ov07_02235CE0, 8) / 2;
        } else if (ov07_0223192C(data->battleAnimSys, data->startBattler) == 3) {
            axis[0] = 0xec0;
            axis[1] = 0x840;
            axis[2] = 0x5fc;
        } else {
            axis[0] = -0x1084;
            axis[1] = -0xaa8;
            axis[2] = 0x5fc;
        }
        break;
    case 6:
    case 7: {
        int configs[28];
        int pe[4];
        int p1e1[4];
        int p1p2[4];
        int p1e2[4];
        int p2p1[4];
        int p2e1[4];
        int p2e2[4];
        int contest[4];

        for (i = 0; i < 28; i++) {
            configs[i] = ov07_022355B0[i];
        }
        for (i = 0; i < 4; i++) {
            contest[i] = ov07_022354D0[i];
        }
        for (i = 0; i < 4; i++) {
            pe[i] = configs[i];
            p1e1[i] = configs[4 + i];
            p1p2[i] = configs[8 + i];
            p1e2[i] = configs[12 + i];
            p2p1[i] = configs[16 + i];
            p2e1[i] = configs[20 + i];
            p2e2[i] = configs[24 + i];
        }

        if (ov07_0221BFC0(data->battleAnimSys) == 1) {
            for (i = 0; i < 4; i++) {
                pe[i] = contest[i];
                p1e1[i] = contest[i];
                p1p2[i] = contest[i];
                p1e2[i] = contest[i];
                p2p1[i] = contest[i];
                p2e1[i] = contest[i];
                p2e2[i] = contest[i];
            }
        }

        switch ((u32)st) {
        default:
            axis[0] = pe[0];
            axis[1] = pe[1];
            axis[2] = pe[2];
            break;
        case 1:
            if (pe[3] == 1) {
                axis[0] = pe[0];
                axis[1] = pe[1];
                axis[2] = pe[2];
            } else {
                axis[0] = -pe[0];
                axis[1] = -pe[1];
                axis[2] = -pe[2];
            }
            break;
        case 2:
            if (et == 3) {
                axis[0] = p1e1[0];
                axis[1] = p1e1[1];
                axis[2] = p1e1[2];
            } else if (et == 5) {
                axis[0] = p1e2[0];
                axis[1] = p1e2[1];
                axis[2] = p1e2[2];
            } else {
                axis[0] = p1p2[0];
                axis[1] = p1p2[1];
                axis[2] = p1p2[2];
            }
            break;
        case 3:
            if (et == 2) {
                if (p1e1[3] == 1) {
                    axis[0] = p1e1[0];
                    axis[1] = p1e1[1];
                    axis[2] = p1e1[2];
                } else {
                    axis[0] = -p1e1[0];
                    axis[1] = -p1e1[1];
                    axis[2] = -p1e1[2];
                }
            } else if (et == 5) {
                if (p1p2[3] == 1) {
                    axis[0] = -p2p1[0];
                    axis[1] = -p2p1[1];
                    axis[2] = -p2p1[2];
                } else {
                    axis[0] = p2p1[0];
                    axis[1] = p2p1[1];
                    axis[2] = p2p1[2];
                }
            } else {
                if (p2e1[3] == 1) {
                    axis[0] = p2e1[0];
                    axis[1] = p2e1[1];
                    axis[2] = p2e1[2];
                } else {
                    axis[0] = -p2e1[0];
                    axis[1] = -p2e1[1];
                    axis[2] = -p2e1[2];
                }
            }
            break;
        case 4:
            if (et == 3) {
                axis[0] = p2e1[0];
                axis[1] = p2e1[1];
                axis[2] = p2e1[2];
            } else if (et == 5) {
                axis[0] = p2e2[0];
                axis[1] = p2e2[1];
                axis[2] = p2e2[2];
            } else {
                axis[0] = p2p1[0];
                axis[1] = p2p1[1];
                axis[2] = p2p1[2];
            }
            break;
        case 5:
            if (et == 3) {
                if (p1e1[3] == 1) {
                    axis[0] = p2p1[0];
                    axis[1] = p2p1[1];
                    axis[2] = p2p1[2];
                } else {
                    axis[0] = -p2p1[0];
                    axis[1] = -p2p1[1];
                    axis[2] = -p2p1[2];
                }
            } else if (et == 2) {
                if (p1e1[3] == 1) {
                    axis[0] = p1e2[0];
                    axis[1] = p1e2[1];
                    axis[2] = p1e2[2];
                } else {
                    axis[0] = -p1e2[0];
                    axis[1] = -p1e2[1];
                    axis[2] = -p1e2[2];
                }
            } else {
                if (p1e1[3] == 1) {
                    axis[0] = p2e2[0];
                    axis[1] = p2e2[1];
                    axis[2] = p2e2[2];
                } else {
                    axis[0] = -p2e2[0];
                    axis[1] = -p2e2[1];
                    axis[2] = -p2e2[2];
                }
            }
            break;
        }
    } break;
    case 8:
    case 9:
        if (ov07_0221BFC0(data->battleAnimSys) == 1) {
            if (data->targetMode == 2) {
                axis[0] = -0x920;
                axis[1] = 0x5a0;
                axis[2] = 0x2e0;
            } else {
                axis[0] = 0x920;
                axis[1] = -0x5a0;
                axis[2] = 0x2e0;
            }
        } else {
            axis[0] = TABLE_WORD(ov07_02235620, 0);
            axis[1] = TABLE_WORD(ov07_02235620, 4);
            axis[2] = TABLE_WORD(ov07_02235620, 8) / 2;
        }
        break;
    case 10:
    case 11:
        if (ov07_0221BFC0(data->battleAnimSys) == 1) {
            axis[0] = -0x920;
            axis[1] = 0x5a0;
            axis[2] = 0x2e0;
        } else {
            axis[0] = TABLE_WORD(ov07_022357D0, 0);
            axis[1] = TABLE_WORD(ov07_02235620, 4);
            axis[2] = TABLE_WORD(ov07_02235620, 8) / 2;
        }
        break;
    case 12:
    case 13:
        if (ov07_0221BFC0(data->battleAnimSys) == 1) {
            axis[0] = -0xb78;
            axis[1] = 0x5a0;
            axis[2] = 0x2e0;
        } else {
            axis[0] = TABLE_WORD(ov07_02235B30, 0);
            axis[1] = TABLE_WORD(ov07_02235B30, 4);
            axis[2] = TABLE_WORD(ov07_02235B30, 8);
        }
        break;
    case 14:
    case 15:
        if (ov07_0221BFC0(data->battleAnimSys) == 1) {
            axis[0] = -0x920;
            axis[1] = 0x5a0;
            axis[2] = 0x2e0;
        } else {
            axis[0] = TABLE_WORD(ov07_02235E90, 0);
            axis[1] = TABLE_WORD(ov07_02235E90, 4);
            axis[2] = TABLE_WORD(ov07_02235E90, 8);
        }
        break;
    case 16:
    case 17:
        if (ov07_0221BFC0(data->battleAnimSys) == 1) {
            axis[0] = -0x920;
            axis[1] = 0x5a0;
            axis[2] = 0x2e0;
        } else {
            axis[0] = TABLE_WORD(ov07_02235980, 0);
            axis[1] = TABLE_WORD(ov07_02235980, 4);
            axis[2] = TABLE_WORD(ov07_02235980, 8);
        }
        break;
    case 18:
    case 19:
        if (ov07_0221BFC0(data->battleAnimSys) == 1) {
            axis[0] = -0x920;
            axis[1] = 0x5a0;
            axis[2] = 0x2e0;
        } else {
            axis[0] = TABLE_WORD(ov07_02236040, 0);
            axis[1] = TABLE_WORD(ov07_02236040, 4);
            axis[2] = TABLE_WORD(ov07_02236040, 8);
        }
        break;
    case 20:
    case 21:
        if (ov07_0221BFC0(data->battleAnimSys) == 1) {
            axis[0] = -0x10f0;
            axis[1] = 0x5a0;
            axis[2] = 0x2e0;
        } else {
            axis[0] = TABLE_WORD(ov07_022361F0, 0);
            axis[1] = TABLE_WORD(ov07_022361F0, 4);
            axis[2] = TABLE_WORD(ov07_022361F0, 8);
        }
        break;
    case 22:
        axis[0] = -0xd52;
        axis[1] = -0xa54;
        axis[2] = 0;
        break;
    case 24: {
        int words[4];
        int index;

        words[0] = (int)emitter;
        words[1] = (int)data;
        words[2] = et;
        words[3] = st;
        index = ov07_02231924(data->battleAnimSys, data->startBattler);
        axis[0] = FrameRead(entrySp - 0x160 + 0x28 + index * 8, sp, entrySp, saved, words);
        axis[1] = FrameRead(entrySp - 0x160 + 0x2c + index * 8, sp, entrySp, saved, words);
        axis[2] = 0;
    } break;
    case 25:
        axis[0] = -0xd70;
        axis[1] = 0x7a0;
        axis[2] = 0;
        break;
    case 26:
        if (ov07_0223192C(data->battleAnimSys, data->startBattler) == 3) {
            axis[0] = 0xec0;
            axis[1] = 0x840;
            axis[2] = 0;
        } else {
            axis[0] = -6000;
            axis[1] = -0x898;
            axis[2] = 0;
        }
        break;
    default:
        break;
    }

    emitter->axis[0] = axis[0];
    emitter->axis[1] = axis[1];
    emitter->axis[2] = axis[2];
}
