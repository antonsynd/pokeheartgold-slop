#include "global.h"

typedef struct UnkStruct_ov07_02220978_Data {
    void *battleAnimSys;
    u32 unk_04;
    s8 dir;
    u8 pad_09[0xb];
    int type;
    u32 unk_18[3];
    int startBattler;
    int endBattler;
    int position[3];
} UnkStruct_ov07_02220978_Data;

typedef struct UnkStruct_ov07_02220978_Base {
    u32 unk_00;
    int x;
    int y;
    int z;
} UnkStruct_ov07_02220978_Base;

typedef struct UnkStruct_ov07_02220978_Emitter {
    u8 pad_00[0x20];
    UnkStruct_ov07_02220978_Base **base;
    u32 unk_24;
    int x;
    int y;
    int z;
} UnkStruct_ov07_02220978_Emitter;

extern int ov07_02231924(void *sys, int battler);
extern void ov07_02220938(void *emitter, void *data, int *pos);
extern void ov07_022208F8(void *emitter, void *data, int *pos);
extern int ov07_0221BFC0(void *sys);
extern u8 ov07_02221664(void *data);
extern void ov07_02231B90(void *sys, int battler, int *pos);
extern void ov07_02221734(void *data, int *pos);
extern void ov07_02231BC0(void *sys, int battler, int *pos);
extern void ov07_02231D10(void *sys, int battler, int *pos);
extern void ov07_02231CE0(void *sys, int battler, int *pos);
extern void ov07_02231C80(void *sys, int battler, int *pos);
extern void ov07_02231CB0(void *sys, int battler, int *pos);
extern void ov07_0221F9A8(void *sys, int *params, int count);
extern void ov07_02231C20(void *sys, int battler, int *pos);
extern void ov07_02231DA0(void *sys, int battler, int *pos);
extern void ov07_02231C50(void *sys, int battler, int *pos);
extern void ov07_02231D40(void *sys, int battler, int *pos);
extern void ov07_02231BF0(void *sys, int battler, int *pos);
extern void ov07_022216A8(void *data, int battler, int *pos);
extern const int ov07_02235578[14];
extern const int ov07_02235540[14];
extern const int ov07_022354E0[12];

// The original copies a position table onto its stack and indexes the copy with the battler type
// from ov07_02231924, unchecked. The game only returns valid types; for anything else the original
// reads whatever lies around its frame (zeros in the unused part, the five registers it pushed, then
// the caller's stack). FrameRead models those words so the C reads the same ones for every index.
static int FrameRead(u32 address, u32 sp, u32 entrySp, u32 tableBase, const int *table, u32 words, const u32 *saved) {
    if (address - tableBase < words * 4) {
        return table[(address - tableBase) / 4];
    }
    if (address - (entrySp - 20) < 20) {
        return saved[(address - (entrySp - 20)) / 4];
    }
    if (address >= sp && address < entrySp) {
        return 0;
    }
    return *(int *)address;
}

void ov07_02220978(UnkStruct_ov07_02220978_Emitter *emitter, UnkStruct_ov07_02220978_Data *data) {
    u32 saved[5];
    __asm__ volatile("movs %0, r3" : "=l"(saved[0]) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(saved[1]) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(saved[2]) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(saved[3]) : : "cc");
    __asm__ volatile("mov %0, lr" : "=r"(saved[4]));

    u32 sp;
    __asm__ volatile("mov %0, sp" : "=r"(sp));
    u32 entrySp = (u32)__builtin_frame_address(0) + 8;
    u32 frame = entrySp - 0xd0;
    int pos[3];

    pos[0] = 0;
    pos[1] = 0;
    pos[2] = 0;

    switch (data->type) {
    case 1:
        ov07_02231B90(data->battleAnimSys, data->startBattler, pos);
        break;
    case 2:
        ov07_02231B90(data->battleAnimSys, data->endBattler, pos);
        break;
    case 3: {
        int params[4];
        ov07_0221F9A8(data->battleAnimSys, params, 4);
        data->dir = ov07_02221664(data);
        pos[0] = params[1];
        pos[1] = params[2];
        pos[2] = params[3];
        if (params[0] == 1) {
            data->dir = 1;
        }
        pos[0] *= data->dir;
        pos[1] *= data->dir;
    } break;
    case 4:
        ov07_02231B90(data->battleAnimSys, data->startBattler, pos);
        ov07_02221734(data, pos);
        break;
    case 5:
        ov07_02231B90(data->battleAnimSys, data->endBattler, pos);
        ov07_02221734(data, pos);
        break;
    case 6:
        ov07_02231BC0(data->battleAnimSys, data->startBattler, pos);
        break;
    case 7:
        ov07_02231BC0(data->battleAnimSys, data->endBattler, pos);
        break;
    case 8:
        ov07_02231DA0(data->battleAnimSys, data->startBattler, pos);
        break;
    case 9:
        ov07_02231DA0(data->battleAnimSys, data->endBattler, pos);
        break;
    case 10:
        ov07_02231BF0(data->battleAnimSys, data->startBattler, pos);
        break;
    case 11:
        ov07_02231BF0(data->battleAnimSys, data->endBattler, pos);
        break;
    case 12:
        ov07_02220938(emitter, data, pos);
        ov07_02221734(data, pos);
        break;
    case 13:
        ov07_022208F8(emitter, data, pos);
        ov07_02221734(data, pos);
        break;
    case 14:
        ov07_02231C20(data->battleAnimSys, data->startBattler, pos);
        break;
    case 15:
        ov07_02231C20(data->battleAnimSys, data->endBattler, pos);
        break;
    case 16:
        ov07_02231C50(data->battleAnimSys, data->startBattler, pos);
        break;
    case 17:
        ov07_02231C50(data->battleAnimSys, data->endBattler, pos);
        break;
    case 18:
        ov07_02231C80(data->battleAnimSys, data->startBattler, pos);
        break;
    case 19:
        ov07_02231C80(data->battleAnimSys, data->endBattler, pos);
        break;
    case 20:
        ov07_02231CB0(data->battleAnimSys, data->startBattler, pos);
        break;
    case 21:
        ov07_02231CB0(data->battleAnimSys, data->endBattler, pos);
        break;
    case 22:
        ov07_02231CE0(data->battleAnimSys, data->startBattler, pos);
        break;
    case 23:
        ov07_02231CE0(data->battleAnimSys, data->endBattler, pos);
        break;
    case 24:
        ov07_02231D10(data->battleAnimSys, data->startBattler, pos);
        break;
    case 25:
        ov07_02231D10(data->battleAnimSys, data->endBattler, pos);
        break;
    case 26:
        ov07_02231D40(data->battleAnimSys, data->startBattler, pos);
        break;
    case 27:
        ov07_02231D40(data->battleAnimSys, data->endBattler, pos);
        break;
    case 28:
        pos[0] = 0x2ce0;
        pos[1] = 0;
        pos[2] = 0;
        break;
    case 30: {
        int idx;
        if (ov07_0221BFC0(data->battleAnimSys) == 1) {
            idx = 6;
        } else {
            idx = ov07_02231924(data->battleAnimSys, data->startBattler);
        }
        pos[0] = FrameRead(frame + 0x38 + idx * 8, sp, entrySp, frame + 0x38, ov07_02235578, 14, saved);
        pos[1] = FrameRead(frame + 0x3c + idx * 8, sp, entrySp, frame + 0x38, ov07_02235578, 14, saved);
        pos[2] = 0;
    } break;
    case 31: {
        int idx = ov07_02231924(data->battleAnimSys, data->startBattler);
        pos[0] = FrameRead(frame + 0x70 + idx * 8, sp, entrySp, frame + 0x70, ov07_022354E0, 12, saved);
        pos[1] = FrameRead(frame + 0x74 + idx * 8, sp, entrySp, frame + 0x70, ov07_022354E0, 12, saved);
        pos[2] = 0;
    } break;
    case 32: {
        int idx;
        if (ov07_0221BFC0(data->battleAnimSys) == 1) {
            idx = 6;
        } else {
            idx = ov07_02231924(data->battleAnimSys, data->startBattler);
        }
        pos[0] = FrameRead(frame + idx * 8, sp, entrySp, frame, ov07_02235540, 14, saved);
        pos[1] = FrameRead(frame + 4 + idx * 8, sp, entrySp, frame, ov07_02235540, 14, saved);
        pos[2] = 0;
    } break;
    case 33:
        pos[0] = -5000;
        pos[1] = -6000;
        pos[2] = 0;
        break;
    case 34:
        ov07_02231B90(data->battleAnimSys, data->startBattler, pos);
        break;
    case 100:
        ov07_02231B90(data->battleAnimSys, data->startBattler, pos);
        ov07_022216A8(data, data->startBattler, pos);
        break;
    case 101:
        ov07_02231B90(data->battleAnimSys, data->endBattler, pos);
        ov07_022216A8(data, data->endBattler, pos);
        break;
    default:
        break;
    }

    data->position[0] = pos[0];
    data->position[1] = pos[1];
    data->position[2] = pos[2];

    emitter->x = pos[0] + (*emitter->base)->x;
    emitter->y = pos[1] + (*emitter->base)->y;
    emitter->z = pos[2] + (*emitter->base)->z;
}
