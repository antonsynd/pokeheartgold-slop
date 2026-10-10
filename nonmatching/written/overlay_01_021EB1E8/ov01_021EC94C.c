#include "global.h"

typedef struct UnkStruct_ov01_021EC94C_Fog {
    u8 filler_00[0x4c];
    void *fogMan;
} UnkStruct_ov01_021EC94C_Fog;

typedef struct UnkStruct_ov01_021EC94C_Field {
    u8 filler_00[0x104];
    UnkStruct_ov01_021EC94C_Fog *unk_104;
} UnkStruct_ov01_021EC94C_Field;

typedef struct UnkStruct_ov01_021EC94C_Fade {
    void *unk_00;
    u8 filler_04[0x30 - 4];
} UnkStruct_ov01_021EC94C_Fade;

typedef struct UnkStruct_ov01_021EC94C_Data {
    u8 filler_00[4];
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    u8 filler_0A[0x1c - 0x0a];
    UnkStruct_ov01_021EC94C_Fade unk_1C;
    u8 unk_4C[0xb4 - 0x4c];
    int unk_B4;
} UnkStruct_ov01_021EC94C_Data;

typedef struct UnkStruct_ov01_021EC94C {
    UnkStruct_ov01_021EC94C_Field *unk_00;
    void *unk_04;
    u8 filler_08[4];
    u8 unk_0C[0x40 - 0x0c];
    void *unk_40;
    u8 filler_44[0xf58 - 0x44];
    UnkStruct_ov01_021EC94C_Data *unk_F58;
    u8 filler_F5C[0xf62 - 0xf5c];
    u16 state;
    u16 unk_F64;
    u16 unk_F66;
    int unk_F68;
    void *unk_F6C;
} UnkStruct_ov01_021EC94C;

extern void ov01_021EDA7C(void *task, void *system);
extern void *SysTask_CreateOnMainQueue(void (*func)(void *, void *), void *data, u32 priority);
extern void ov01_021EC504(void *a, void *system, int b, int c, int d, int e, int f, int g, int h, void (*callback)(void *, int));
extern void ov01_021EC5FC(void *a, void *b, void *fogMan, int d, int e, int f, int g, int h);
extern int ov01_021EC538(void *a);
extern int ov01_021EC650(void *a, void *b, int c);
extern void ov01_021EC678(void *fogMan, int b, int c, int d);
extern void ov01_021EC7C8(void *a);
extern void ov01_021EC85C(void *system, void (*callback1)(void *, int), int c, int d, int e, void (*callback2)(void *));
extern void ov01_021ECBB4(void *system, int a);
extern void ov01_021ECC70(void *a);
extern void ov01_021EC52C(void *a, int b, int c, int d, int e);
extern void ov01_021EC790(void *a, int b, int c);
extern void ov01_021EDAE0(void *system);
extern int ov01_021EC7AC(void *a);
extern void ov01_021EA864(void *fogMan, int b, int c, int d, int e, int f);
extern void ov01_021EBCA4(void *a);
extern void ov01_021EC2E4(void *a, void (*callback)(void *));
extern void ov01_021EC470(void *system, void *b, void *c);
extern void ov01_021EC300(void *system);

void ov01_021EC94C(void *task, UnkStruct_ov01_021EC94C *param1) {
    UnkStruct_ov01_021EC94C *v0 = param1;
    UnkStruct_ov01_021EC94C_Data *v2;
    int v3;
    int v4;

    v2 = v0->unk_F58;

    switch (v0->state) {
    case 0:
        ov01_021EC504(v2, v0, 1, 8, 20, 1, -1, 1, 2, ov01_021ECBB4);
        ov01_021EC5FC(v2->unk_4C, &v2->unk_1C, v0->unk_00->unk_104->fogMan, 3, 0x726F, 0x6B5A, 1, v0->unk_F64);

        v2->unk_B4 = 0;

        v0->unk_F6C = SysTask_CreateOnMainQueue(ov01_021EDA7C, v0, 100);
        v0->unk_F68 = 30;
        v0->state = 1;
        break;
    case 1:
        v3 = ov01_021EC538(v2);

        if (v2->unk_B4 > 0) {
            v2->unk_B4--;
        } else {
            v4 = ov01_021EC650(v2->unk_4C, &v2->unk_1C, v0->unk_F64);

            if (v4 == 1 && v3 == 3) {
                v0->state = 3;
            }
        }
        break;
    case 2:
        ov01_021EC504(v2, v0, 20, 1, 20, 1, -1, 1, 2, ov01_021ECBB4);

        if (v0->unk_F64 != 0) {
            v2->unk_1C.unk_00 = v0->unk_00->unk_104->fogMan;
            ov01_021EC678(v2->unk_1C.unk_00, 3, 0x726F, 0x6B5A);

            ov01_021EC7C8(&v2->unk_1C);
        }

        ov01_021EC85C(v0, ov01_021ECBB4, 20, 10, 1, ov01_021ECC70);
        v0->unk_F6C = SysTask_CreateOnMainQueue(ov01_021EDA7C, v0, 100);
        v0->unk_F68 = 30;
        v0->state = 3;
        break;
    case 3:
        if (v2->unk_06-- <= 0) {
            ov01_021ECBB4(v0, v2->unk_04);
            v2->unk_06 = v2->unk_08;
        }

        if (v0->unk_F66 == 5) {
            ov01_021EC52C(v2, 0, 8, 1, -1);

            if (v0->unk_F64 != 0) {
                ov01_021EC790(&v2->unk_1C, 1, 0);
            }

            v2->unk_B4 = 0;
            v0->state = 4;

            ov01_021EDAE0(v0);
        }
        break;
    case 4:
        v3 = ov01_021EC538(v2);

        if (v2->unk_B4 > 0) {
            v2->unk_B4--;
        } else {
            if (v0->unk_F64 != 0) {
                v4 = ov01_021EC7AC(&v2->unk_1C);
            } else {
                v4 = 1;
            }

            if (v4 == 1 && v3 == 3) {
                if (v0->unk_40 == &v0->unk_0C) {
                    v0->state = 5;
                }
            }
        }
        break;
    case 5:
        if (v0->unk_F64 != 0) {
            ov01_021EA864(v2->unk_1C.unk_00, 1, 0, 0, 0, 0);
        }

        ov01_021EBCA4(v0->unk_04);
        break;
    default:
        break;
    }

    if (v0->state != 5 && v0->state != 0) {
        ov01_021EC2E4(&v0->unk_0C, ov01_021ECC70);
        ov01_021EC470(v0, NULL, NULL);
        ov01_021EC300(v0);
    }
}
