#include "global.h"

typedef struct UnkStruct_ov91_0225CEB4_19CC {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04[0xE4];
} UnkStruct_ov91_0225CEB4_19CC;

typedef struct UnkStruct_ov91_0225CEB4_1F38 {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
} UnkStruct_ov91_0225CEB4_1F38;

typedef struct UnkStruct_ov91_0225CEB4 {
    u32 unk_00;
    u8 unk_04[0x19C8];
    UnkStruct_ov91_0225CEB4_19CC unk_19CC;
    u8 unk_1AB4[0x484];
    UnkStruct_ov91_0225CEB4_1F38 unk_1F38;
    u8 unk_1F44[0x30];
    u8 unk_1F74[0x6811];
    u8 unk_8785;
    u8 unk_8786[6];
    u8 unk_878C[4];
} UnkStruct_ov91_0225CEB4;

extern void ov91_0225DD50(void *param0, u16 param1);
extern void ov91_0225DBC0(void *param0, void *param1);
extern void ov91_022601F4(void *param0, void *param1);
extern void ov91_02260218(void *param0, void *param1);
extern void ov91_0225F23C(void *param0);
extern int ov91_0225F25C(void *param0, void *param1);
extern void sub_02037AC0(u8 a0);
extern BOOL sub_02037B38(u8 a0);
extern void PlaySE(u16 sndseq);
extern void ov91_0226031C(void *param0, fx32 param1);
extern void ov91_0225DB7C(void *param0, void *param1);
extern void ov91_0225DB18(void *param0, void *param1);
extern int ov91_0225DB44(void *param0, void *param1);
extern int ov91_0225DBAC(void *param0, void *param1);
extern void ov91_0225DB5C(void *param0, void *param1);
extern void ov91_0225DD20(void *param0, u32 param1);
extern void ov91_022601AC(void *param0, void *param1, u32 param2);
extern void ov91_0225F7A8(void *param0, void *param1);

BOOL ov91_0225CEB4(UnkStruct_ov91_0225CEB4 *param0, u32 param1) {
    BOOL v0;
    BOOL v1 = 1;
    s32 v2;

    if (param0->unk_1F38.unk_00 >= 4) {
        if (param0->unk_8785) {
            v2 = -120;
        } else {
            v2 = 120;
        }

        ov91_0225DD50(&param0->unk_19CC, param0->unk_19CC.unk_02 + v2);
    }

    ov91_0225DBC0(param0->unk_1AB4, &param0->unk_19CC);
    ov91_022601F4(param0->unk_1F74, &param0->unk_19CC);
    ov91_02260218(param0->unk_1F74, &param0->unk_19CC);

    switch (param0->unk_1F38.unk_00) {
    case 0:
        ov91_0225F23C(param0->unk_878C);
        param0->unk_1F38.unk_00++;
        break;
    case 1:
        v0 = ov91_0225F25C(param0->unk_878C, param0);

        if (v0 == 1) {
            param0->unk_1F38.unk_00++;
            sub_02037AC0(2);
        }
        break;
    case 2:
        if (!sub_02037B38(2)) {
            break;
        }

        param0->unk_1F38.unk_00++;
        param0->unk_1F38.unk_08 = 65;
        break;
    case 3:
        param0->unk_1F38.unk_08--;

        if (param0->unk_1F38.unk_08 == 50) {
            PlaySE(0x619);
        }

        if (param0->unk_1F38.unk_08 == 20) {
            PlaySE(0x63D);
        }

        ov91_0226031C(param0->unk_1F74, FX32_CONST(1.0));

        if (param0->unk_1F38.unk_08 == 0) {
            ov91_0225DB7C(&param0->unk_1F38, param0->unk_1AB4);
            param0->unk_1F38.unk_00 = 4;
        }
        break;
    case 4:
        if (param1 == 1) {
            param0->unk_1F38.unk_00 = 5;
        }
        break;
    case 5:
        ov91_0225DB18(&param0->unk_1F38, param0->unk_1AB4);
        PlaySE(0x5DD);
        param0->unk_1F38.unk_00 = 6;
        break;
    case 6:
        v0 = ov91_0225DB44(&param0->unk_1F38, param0->unk_1AB4);

        if (v0 == 0) {
            param0->unk_1F38.unk_00 = 7;
        }
        break;
    case 7:
        v0 = ov91_0225DBAC(&param0->unk_1F38, param0->unk_1AB4);

        if (v0 == 0) {
            param0->unk_1F38.unk_00 = 8;
        }
        break;
    case 8:
        ov91_0225DB5C(&param0->unk_1F38, param0->unk_1AB4);
        ov91_0225DD20(&param0->unk_19CC, 1);
        v1 = 0;
        break;
    }

    ov91_022601AC(param0->unk_1F74, &param0->unk_19CC, param0->unk_00);
    ov91_0225F7A8(param0, param0->unk_1AB4);
    return v1;
}
