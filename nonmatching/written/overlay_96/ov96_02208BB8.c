#include "global.h"

typedef struct UnkStruct_ov96_02208BB8_Obj {
    u8 filler_00[0x58];
    s32 unk_58;
    s32 unk_5C;
    u8 filler_60[0x1C];
    s32 unk_7C;
    s32 unk_80;
    s32 unk_84;
    s32 unk_88;
    s32 unk_8C;
    s32 unk_90;
    u8 filler_94[0x10];
    u8 unk_A4;
    u8 unk_A5;
    u8 unk_A6;
    u8 filler_A7[3];
    u8 unk_AA;
    u8 unk_AB;
    u8 filler_AC[5];
    u8 unk_B1;
} UnkStruct_ov96_02208BB8_Obj;

typedef struct UnkStruct_ov96_02208BB8_Racer {
    UnkStruct_ov96_02208BB8_Obj *obj;
    u16 x;
    u16 y;
} UnkStruct_ov96_02208BB8_Racer;

typedef struct UnkStruct_ov96_02208BB8_Item {
    u32 flag;
    u32 x;
    u32 y;
} UnkStruct_ov96_02208BB8_Item;

typedef struct UnkStruct_ov96_02208BB8_Obstacle {
    u32 flag;
    u8 filler_04[0xC];
    u16 x;
    u16 y;
} UnkStruct_ov96_02208BB8_Obstacle;

typedef struct UnkStruct_ov96_02208BB8_Cell {
    s32 x;
    s32 y;
    s32 unk_08;
    s32 unk_0C;
    s16 score;
    s16 index;
} UnkStruct_ov96_02208BB8_Cell;

typedef struct UnkStruct_ov96_02208BB8 {
    UnkStruct_ov96_02208BB8_Racer racers[4];
    UnkStruct_ov96_02208BB8_Item items20[20];
    UnkStruct_ov96_02208BB8_Item items10[10];
    UnkStruct_ov96_02208BB8_Obstacle *obstacles;
    u8 filler_18C[4];
    UnkStruct_ov96_02208BB8_Cell cells[48];
    u8 filler_550[8];
    u8 unk_558;
} UnkStruct_ov96_02208BB8;

typedef struct UnkStruct_ov96_02208BB8_Target {
    u8 filler_00[8];
    s32 unk_08;
    s32 unk_0C;
} UnkStruct_ov96_02208BB8_Target;

/* the game returns a u16; the asm takes it as a signed word */
extern int LCRandom(void);
extern void ov96_021EB0A4(void *a0, int x, int y, int *outX, int *outY);
extern void ov96_021EB03C(void *a0, int x, int y, int *outX, int *outY);
extern int ov96_022090A8(UnkStruct_ov96_02208BB8_Cell *cell, u16 x, u16 y);
extern int ov96_022090D8(UnkStruct_ov96_02208BB8_Cell *cell);
extern UnkStruct_ov96_02208BB8_Target *ov96_02208FB8(UnkStruct_ov96_02208BB8 *p);

void ov96_02208BB8(UnkStruct_ov96_02208BB8 *p, u32 idx) {
    /* same layout as the asm's frame (sp+0x20 up): the outputs of the three position calls, then
     * the racer copies at sp+0x38 and the two item copies */
    struct {
        int outY;
        int outX;
        int roundedY;
        int roundedX;
        int tileY;
        int tileX;
        UnkStruct_ov96_02208BB8_Racer racers[4];
        UnkStruct_ov96_02208BB8_Item items10[10];
        UnkStruct_ov96_02208BB8_Item items20[20];
    } frame;
    UnkStruct_ov96_02208BB8_Obj *self;
    UnkStruct_ov96_02208BB8_Racer *me;
    UnkStruct_ov96_02208BB8_Obstacle *obstacles;
    UnkStruct_ov96_02208BB8_Target *target;
    int i, j, k;
    UnkStruct_ov96_02208BB8_Racer pushed[3];

    /* the asm pushes {r3, r4, r5, r6, r7, lr} right above its racer copies, so a racer index of 49..51 reads them */
    __asm__ volatile("movs %0, r3" : "=l"(((u32 *)pushed)[0]) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(((u32 *)pushed)[1]) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(((u32 *)pushed)[2]) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(((u32 *)pushed)[3]) : : "cc");
    __asm__ volatile("movs %0, r7" : "=l"(((u32 *)pushed)[4]) : : "cc");
    __asm__ volatile("mov %0, lr" : "=r"(((u32 *)pushed)[5]));

    self = p->racers[idx].obj;
    if (self->unk_AB != 0 || self->unk_A6 == 1 || self->unk_A4 != 0) {
        return;
    }

    for (i = 0; i < 4; i++) {
        UnkStruct_ov96_02208BB8_Obj *obj;

        frame.racers[i] = p->racers[i];
        obj = frame.racers[i].obj;
        ov96_021EB0A4(((void **)obj)[obj->unk_B1], obj->unk_58 / FX32_ONE, obj->unk_5C / FX32_ONE, &frame.tileX, &frame.tileY);
        ov96_021EB03C(((void **)obj)[obj->unk_B1], frame.tileX << 12, frame.tileY << 12, &frame.roundedX, &frame.roundedY);
        frame.racers[i].x = frame.roundedX / FX32_ONE;
        frame.racers[i].y = frame.roundedY / FX32_ONE;
    }
    me = (idx - 49 < 3) ? &pushed[idx - 49] : &frame.racers[idx];

    for (i = 0; i < 20; i++) {
        frame.items20[i] = p->items20[i];
    }
    for (i = 0; i < 10; i++) {
        frame.items10[i] = p->items10[i];
    }

    obstacles = p->obstacles;

    for (i = 0; i < 48; i++) {
        p->cells[i].index = i;
        p->cells[i].x = me->x - 0x50 + (i % 6) * 32;
        p->cells[i].y = me->y - 0x30 + (i / 6) * 32;
        p->cells[i].unk_08 = me->x - 0x60 + (i % 6) * 32 + LCRandom() % 32;
        p->cells[i].unk_0C = me->y - 0x80 + (i / 6) * 32 + LCRandom() % 32;
    }

    for (i = 0; i < 48; i++) {
        p->cells[i].score = 0;
    }

    for (j = 0; j < 2; j++) {
        for (i = 0; i < 4; i++) {
            p->cells[(u8)(i + 19)].score += 2;
        }
    }

    for (k = 0; k < 48; k++) {
        UnkStruct_ov96_02208BB8_Cell *cell = &p->cells[k];

        for (i = 0; i < 5; i++) {
            if (obstacles[i].flag != 0 && ov96_022090A8(cell, obstacles[i].x, obstacles[i].y) != 0) {
                cell->score += 7;
            }
        }
        for (i = 0; i < 4; i++) {
            if (i != idx && ov96_022090A8(cell, frame.racers[i].x, frame.racers[i].y) != 0) {
                cell->score -= 3;
            }
        }
        for (i = 0; i < 20; i++) {
            if (frame.items20[i].flag == 0) {
                break;
            }
            if (ov96_022090A8(cell, frame.items20[i].x, frame.items20[i].y) != 0) {
                cell->score -= 2;
            }
        }
        for (i = 0; i < 10; i++) {
            if (frame.items10[i].flag == 0) {
                break;
            }
            if (ov96_022090A8(cell, frame.items10[i].x, frame.items10[i].y) != 0) {
                cell->score += 2;
            }
        }
        if (ov96_022090D8(cell) == 0) {
            cell->score -= 100;
        }
    }

    {
        u32 row = (u16)(self->unk_5C / FX32_ONE);

        if (row > 0x100) {
            for (i = 0; i < 6; i++) {
                p->cells[30 + i].score += 3;
            }
        } else if (row < 0x100) {
            for (i = 0; i < 6; i++) {
                p->cells[i].score += 3;
            }
        }
    }

    if (self->unk_AA != 0) {
        u32 col;

        for (i = 0; i < 6; i++) {
            p->cells[30 + i].score += self->unk_AA;
        }
        col = (u16)(self->unk_58 / FX32_ONE);
        if (col > 0x100) {
            for (i = 0; i < 3; i++) {
                p->cells[30 + i].score += 2;
            }
        } else if (col < 0x100) {
            for (i = 0; i < 3; i++) {
                p->cells[33 + i].score += 2;
            }
        }
    }

    target = ov96_02208FB8(p);

    if (idx >= p->unk_558) {
        ov96_021EB0A4(((void **)me->obj)[me->obj->unk_B1], me->x, me->y, &frame.outX, &frame.outY);
        me->obj->unk_7C = frame.outX << 12;
        me->obj->unk_80 = frame.outY << 12;
        me->obj->unk_84 = 0;
        me->obj->unk_88 = target->unk_08 << 12;
        me->obj->unk_8C = target->unk_0C << 12;
        me->obj->unk_90 = 0;
        me->obj->unk_A5 = 1;
    }
}
