#include "global.h"
#include "error_handling.h"
#include "heap.h"
#include "sys_task_api.h"
#include "unk_0201010C.h"

extern void sub_0200FCDC(u16 color);
extern void SetMasterBrightness(int screen, int brightness);
extern void sub_0200FF88(void *arg0, void *arg1, int a2, int a3, int heapID);
extern void sub_0200FFB4(void *arg0, void *arg1, int heapID);
extern s32 FX_Div(s32 numer, s32 denom);
extern u32 FX_Sqrt(s32 val);
extern s32 _s32_div_f(s32 numer, s32 denom);
extern const s16 FX_SinCosTable_[];
extern void sub_02012DD8(void *a0, const void *a1);
extern int sub_02012E10(void *a0);
extern int sub_020131F4(int a0, int a1);
extern void sub_02013220(int a0, int a1, int a2, int a3);
extern void sub_020132A8(int a0, int a1, int a2);
extern int sub_020132E8(int a0, int a1);
extern int sub_0201333C(int a0);
extern void sub_02013364(int a0, int a1, int a2, int a3, int a4, int a5);
extern void sub_02013424(void *a0, int a1, int a2);
extern void sub_02013440(void *a0, int a1, int a2, int a3, int a4);
extern void sub_02013468(void *a0, int a1, int a2, int a3);
extern void sub_02013488(void *a0, int a1, int a2, int a3, int a4, int a5, int a6);

typedef struct {
    u32 field_00;
    u32 field_04;
    u32 field_08;
    u32 state;
    u32 field_10;
    void *work;
    void *field_18;
    void *field_1C;
    u32 heapID;
    u16 field_24;
    u16 pad_26;
    u32 field_28;
    u32 field_2C;
} FadeData;

typedef struct {
    s32 field_00;
    s32 field_04;
    s32 field_08;
    s32 field_0C;
    s32 field_10;
    s32 field_14;
    u32 field_18;
} BrightWork;

// .rodata
static const u8 _020F5D58[] = { 0xC0, 0x00, 0x00, 0x00 };
static const u8 _020F5D5C[] = { 0x00, 0xC0, 0x00, 0x00 };
static const u8 _020F5D60[] = { 0x00, 0xC0, 0x01, 0x00 };
static const u8 _020F5D64[] = { 0xC0, 0x00, 0x01, 0x00 };
static const u8 _020F5D68[] = {
    0x60, 0x00, 0x00, 0x00, 0x60, 0xC0, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x1F, 0x20, 0x3F, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x1F, 0x3F, 0x20, 0x01, 0x00
};
static const u8 _020F5D80[] = {
    0x60, 0x00, 0x01, 0x00, 0x60, 0xC0, 0x01, 0x00, 0x00, 0x00, 0x49, 0x7F, 0x20, 0x3F, 0x01, 0x00
};
static const u8 _020F5D90[] = {
    0x00, 0x60, 0x01, 0x00, 0xC0, 0x60, 0x01, 0x00
};
static const u8 _020F5D98[] = {
    0x00, 0x5E, 0x01, 0x00, 0xC0, 0x62, 0x01, 0x00
};
static const u8 _020F5DA0[] = {
    0x00, 0x00, 0xFF, 0x3F, 0x00, 0x3F, 0x20, 0x00
};
static const u8 _020F5DA8[] = {
    0xFF, 0x3F, 0x00, 0x00, 0x00, 0x3F, 0x20, 0x01
};
static const u8 _020F5DB0[] = {
    0x5E, 0x00, 0x00, 0x00, 0x62, 0xC0, 0x00, 0x00
};
static const u8 _020F5DB8[] = {
    0x00, 0x60, 0x00, 0x00, 0xC0, 0x60, 0x00, 0x00,
    0x00, 0x00, 0x49, 0x7F, 0x3F, 0x20, 0x00, 0x00
};
static const u8 _020F5DC8[] = {
    0x00, 0x00, 0xFF, 0x3F, 0x00, 0x3F, 0x20, 0x00
};
static const u8 _020F5DD0[] = {
    0xFF, 0x3F, 0x00, 0x00, 0x00, 0x3F, 0x20, 0x01
};
static const u8 _020F5DD8[] = {
    0x00, 0x02, 0x00, 0x00, 0x80, 0x00, 0x20, 0x01,
    0x00, 0x3F, 0x20, 0x01
};
static const u8 _020F5DE4[] = {
    0x00, 0x00, 0x00, 0x02, 0x80, 0x00, 0x20, 0x01, 0x00, 0x3F, 0x20, 0x00
};
static const u8 _020F5DF0[] = {
    0x40, 0x00, 0x00, 0x00, 0x80, 0x40, 0x00, 0x00, 0xC0, 0x80, 0x00, 0x00
};
static const u8 _020F5DFC[] = {
    0x00, 0x00, 0x00, 0xC0,
    0x00, 0x00, 0xFF, 0xC0, 0x00, 0x20, 0x3F, 0x01
};
static const u8 _020F5E08[] = {
    0x00, 0x00, 0xFF, 0xC0, 0x80, 0x60, 0x80, 0x60,
    0x00, 0x3F, 0x20, 0x01
};
static const u8 _020F5E14[] = {
    0x80, 0x60, 0x80, 0x60, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x3F, 0x20, 0x00
};
static const u8 _020F5E20[] = {
    0x80, 0x60, 0x80, 0x60, 0x00, 0x00, 0xFF, 0xC0, 0x00, 0x20, 0x3F, 0x01
};
static const u8 _020F5E2C[] = {
    0x00, 0x00, 0xFF, 0xC0,
    0x00, 0x00, 0x00, 0xC0, 0x00, 0x3F, 0x20, 0x01
};
static const u8 _020F5E38[] = {
    0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0xFF, 0xC0,
    0x00, 0x3F, 0x20, 0x00
};
static const u8 _020F5E44[] = {
    0x00, 0x00, 0xFF, 0xC0, 0x80, 0x60, 0x80, 0x60, 0x00, 0x20, 0x3F, 0x00
};
static const u8 _020F5E50[] = {
    0x00, 0x00, 0xFF, 0xC0, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x20, 0x3F, 0x00
};
static const u8 _020F5E5C[] = {
    0x00, 0x00, 0xFF, 0xC0,
    0x80, 0x00, 0x80, 0xC0, 0x00, 0x3F, 0x20, 0x01
};
static const u8 _020F5E68[] = {
    0x80, 0x00, 0x80, 0xC0, 0x00, 0x00, 0xFF, 0xC0,
    0x00, 0x3F, 0x20, 0x00
};
static const u8 _020F5E74[] = {
    0x80, 0x00, 0x60, 0x00, 0x38, 0x8E, 0x00, 0x00, 0x00, 0x20, 0x3F, 0x01
};
static const u8 _020F5E80[] = {
    0x80, 0x00, 0x80, 0xC0, 0x00, 0x00, 0x80, 0xC0, 0x00, 0x20, 0x3F, 0x01
};
static const u8 _020F5E8C[] = {
    0x80, 0x00, 0x80, 0xC0,
    0x80, 0x00, 0xFF, 0xC0, 0x01, 0x20, 0x3F, 0x01
};
static const u8 _020F5E98[] = {
    0x00, 0x02, 0x00, 0x00, 0x80, 0x00, 0xB0, 0xFF,
    0x00, 0x3F, 0x20, 0x01
};
static const u8 _020F5EA4[] = {
    0x00, 0x00, 0x80, 0xC0, 0x80, 0x00, 0x80, 0xC0, 0x00, 0x20, 0x3F, 0x00
};
static const u8 _020F5EB0[] = {
    0x80, 0x00, 0xFF, 0xC0, 0x80, 0x00, 0x80, 0xC0, 0x01, 0x20, 0x3F, 0x00
};
static const u8 _020F5EBC[] = {
    0x00, 0x40, 0x01, 0x00,
    0x40, 0x80, 0x01, 0x00, 0x80, 0xC0, 0x01, 0x00
};
static const u8 _020F5EC8[] = {
    0x00, 0x01, 0x00, 0x00, 0x80, 0x00, 0x60, 0x00,
    0x00, 0x3F, 0x20, 0x01
};
static const u8 _020F5ED4[] = {
    0x00, 0x00, 0x00, 0x01, 0x80, 0x00, 0x60, 0x00, 0x00, 0x3F, 0x20, 0x00
};
static const u8 _020F5EE0[] = {
    0x00, 0x00, 0x00, 0x02, 0x80, 0x00, 0xB0, 0xFF, 0x00, 0x3F, 0x20, 0x00
};
static const u8 _020F5EEC[] = {
    0x00, 0x00, 0xFF, 0x30,
    0x00, 0x2F, 0xFF, 0x60, 0x00, 0x60, 0xFF, 0x90, 0x00, 0x90, 0xFF, 0xC0
};
static const u8 _020F5EFC[] = {
    0x00, 0x00, 0x00, 0x30,
    0xFF, 0x2F, 0xFF, 0x60, 0x00, 0x60, 0x00, 0x90, 0xFF, 0x90, 0xFF, 0xC0
};
static const u8 _020F5F0C[] = {
    0xFF, 0x00, 0xFF, 0x30,
    0x00, 0x2F, 0x00, 0x60, 0xFF, 0x60, 0xFF, 0x90, 0x00, 0x90, 0x00, 0xC0
};
static const u8 _020F5F1C[] = {
    0x00, 0x00, 0xFF, 0x30,
    0x00, 0x2F, 0xFF, 0x60, 0x00, 0x60, 0xFF, 0x90, 0x00, 0x90, 0xFF, 0xC0
};

// .data
static u8 _0210F64C[8] = { 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00 };
static u8 _0210F654[8] = { 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00 };
static u8 _0210F65C[8] = { 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00 };
static u8 _0210F664[8] = { 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00 };
static u8 _0210F66C[8] = { 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00 };
static u8 _0210F674[8] = { 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00 };
static u8 _0210F67C[8] = { 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00 };
static u8 _0210F684[8] = { 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00 };
static u8 _0210F68C[8] = { 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00 };
static u8 _0210F694[8] = { 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00 };
static u8 _0210F69C[24] = {
    0x00, 0x5E, 0xFF, 0x62, 0x80, 0x60, 0x80, 0x60, 0x00, 0x3F, 0x20, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x33, 0x0B, 0x00, 0x00
};
static u8 _0210F6B4[24] = {
    0x80, 0x60, 0x80, 0x60, 0x00, 0x5E, 0xFF, 0x62, 0x00, 0x3F, 0x20, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x33, 0x0B, 0x00, 0x00
};

// Forward declarations
static void sub_02010B14(FadeData *data, u32 type);
static int sub_02010BB4(FadeData *data);
static int sub_02010BF4(void *work);
static void sub_0201289C(FadeData *data, const void *table);
static int sub_020128E0(FadeData *data);
static void sub_0201164C(FadeData *data, const void *table);
static int sub_0201169C(FadeData *data);
static void sub_020116EC(FadeData *data, const void *table1, const void *table2);
static int sub_02011744(FadeData *data);
static void sub_02011884(FadeData *data, const void *table);
static int sub_020118BC(FadeData *data);
static void sub_02011B5C(FadeData *data, const void *table);
static int sub_02011B94(FadeData *data);
static void sub_02011D60(FadeData *data, const void *table);
static int sub_02011D98(FadeData *data);
static void sub_02011FF8(FadeData *data, const void *table);
static int sub_02012030(FadeData *data);
static void sub_020122B8(FadeData *data, const void *table);
static int sub_020122F8(FadeData *data);
static void sub_020125EC(FadeData *data, const void *table);
static int sub_0201262C(FadeData *data);
static void sub_02012B1C(FadeData *data, const void *table);
static int sub_02012B80(FadeData *data);
static s32 sub_020109BC(s32 angle);
static s32 sub_020109D8(s32 angle, s32 radius);
static void sub_02010A00(s32 angle, s32 *buf, int count, int start);
static s32 sub_02010A54(s32 angle, s32 halfSize);
static s32 sub_02010A6C(int start, int end, int steps);
static s32 sub_02010A7C(s32 base, s32 offset);
static void sub_02010A8C(s32 *dst, const s32 *delta);
static void sub_02010AB0(s32 *startPos, s32 *endPos, s32 *deltaPos, const u8 *startVals, const u8 *endVals, int steps);
void sub_02010C38(void *arg);
void sub_02010E64(void *buf, int mode, int screen, int heapID);
void sub_02010EC8(void *buf);
static void sub_02010ED0(void *buf);
void *sub_02010EE0(void *buf, int index);
void sub_02010F00(SysTask *task, void *data);
void sub_02010F34(int screen, void *ptr, int a2);
void sub_02010F84(void *a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9);
void sub_02010FEC(void *a0, int a1, int a2, int a3);
void sub_02011068(void *a0, int a1, int a2, int a3);
static void sub_02011080(void *buf, u32 a1, int a2, int a3, int a4);
static SysTask *sub_020110C4(void *data);
static void sub_02011130(void *arg);

static void sub_020110DC(void *a0, void *a1, int a2, int a3);
static void sub_020110F4(void *a0, void *a1, int a2);
static void sub_02011104(SysTask *task, void *data);
static void sub_020117A0(void *work, const void *table, int duration, int screen, int a4, int a5);
static int sub_020117FC(void *work);
static void sub_02011918(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7, int a8);
static int sub_020119F4(void *work);
static void sub_02011A44(s32 radius, int a1, int center, int target, s32 *outLeft, s32 *outRight);
static void sub_02011AD8(void *work);
static void sub_02011BF0(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7, int a8);
static int sub_02011CB8(void *work);
static void sub_02011D08(void *work);
static void sub_02011DEC(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7, int a8);
static int sub_02011EC0(void *work);
static void sub_02011F10(void *work);
static void sub_02012090(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7, int a8);
static int sub_020121A4(void *work);
static void sub_020121F4(void *work);
static void sub_02012204(void *work);
static void sub_02012238(void *work, void *entry);
static void sub_02012290(void *work);
static void sub_02012358(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7, int a8);
static int sub_02012454(void *work);
static void sub_020124AC(void *work);
static void sub_020124B0(void *work);
static void sub_020125D4(void *a0, int a1, int a2);
static void sub_0201268C(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7, int a8);
static int sub_0201275C(void *work);
static void sub_020127B4(void *work);
static void sub_020127B8(void *work);
static void sub_02012884(void *a0, int a1, int a2);
static void sub_02012940(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7);
static int sub_02012A2C(void *work);
static void sub_02012A8C(void *work);
static void sub_02012A90(void *work);
static void sub_02012ACC(const void *param, void *scanBuf, int progress, int total);
static void sub_02012BE8(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7);
static int sub_02012C68(void *work, FadeData *data);
static void sub_02012CDC(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7);
static int sub_02012D4C(void *work, FadeData *data);

// ============================================================
// FadeFunc_00 - FadeFunc_42
// ============================================================

int FadeFunc_00(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        data->field_28 = 1;
        data->field_2C = 1;
        sub_02010B14(data, 1);
        return 0;
    }
    return sub_02010BB4(data);
}

int FadeFunc_01(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        data->field_28 = 0;
        data->field_2C = 1;
        sub_02010B14(data, 0);
        return 0;
    }
    return sub_02010BB4(data);
}

int FadeFunc_02(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        *(const u8 **)&_0210F64C[0] = _020F5D60;
        sub_0200FCDC(data->field_24);
        sub_0201289C(data, _0210F64C);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_020128E0(data);
}

int FadeFunc_03(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        *(const u8 **)&_0210F64C[0x10] = _020F5D5C;
        sub_0200FCDC(data->field_24);
        sub_0201289C(data, _0210F65C);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_020128E0(data);
}

int FadeFunc_04(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        *(const u8 **)&_0210F64C[0x20] = _020F5D64;
        sub_0200FCDC(data->field_24);
        sub_0201289C(data, _0210F66C);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_020128E0(data);
}

int FadeFunc_05(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        *(const u8 **)&_0210F64C[0x28] = _020F5D58;
        sub_0200FCDC(data->field_24);
        sub_0201289C(data, _0210F674);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_020128E0(data);
}

int FadeFunc_06(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_0201164C(data, _020F5E2C);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_0201169C(data);
}

int FadeFunc_07(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_0201164C(data, _020F5E38);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_0201169C(data);
}

int FadeFunc_08(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        *(const u8 **)&_0210F64C[0x08] = _020F5D90;
        sub_0200FCDC(data->field_24);
        sub_0201289C(data, _0210F654);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_020128E0(data);
}

int FadeFunc_09(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        *(const u8 **)&_0210F64C[0x38] = _020F5D68;
        sub_0200FCDC(data->field_24);
        sub_0201289C(data, _0210F684);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_020128E0(data);
}

int FadeFunc_10(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        *(const u8 **)&_0210F64C[0x48] = _020F5D80;
        sub_0200FCDC(data->field_24);
        sub_0201289C(data, _0210F694);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_020128E0(data);
}

int FadeFunc_11(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        *(const u8 **)&_0210F64C[0x40] = _020F5DB8;
        sub_0200FCDC(data->field_24);
        sub_0201289C(data, _0210F68C);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_020128E0(data);
}

int FadeFunc_12(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_0201164C(data, _020F5E5C);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_0201169C(data);
}

int FadeFunc_13(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_0201164C(data, _020F5E68);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_0201169C(data);
}

int FadeFunc_14(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_020116EC(data, _020F5E80, _020F5E8C);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_02011744(data);
}

int FadeFunc_15(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_020116EC(data, _020F5EA4, _020F5EB0);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_02011744(data);
}

int FadeFunc_16(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_02011884(data, _020F5EC8);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_020118BC(data);
}

int FadeFunc_17(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_02011884(data, _020F5ED4);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_020118BC(data);
}

int FadeFunc_18(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_02011884(data, _020F5DD8);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_020118BC(data);
}

int FadeFunc_19(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_02011884(data, _020F5DE4);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_020118BC(data);
}

int FadeFunc_20(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_02011B5C(data, _020F5DD0);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_02011B94(data);
}

int FadeFunc_21(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_02011B5C(data, _020F5DC8);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_02011B94(data);
}

int FadeFunc_22(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_0201164C(data, _020F5E08);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_0201169C(data);
}

int FadeFunc_23(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_0201164C(data, _020F5E14);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_0201169C(data);
}

int FadeFunc_24(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_0201164C(data, _020F5E20);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_0201169C(data);
}

int FadeFunc_25(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_0201164C(data, _020F5E44);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_0201169C(data);
}

int FadeFunc_26(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_02011D60(data, _020F5DA8);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_02011D98(data);
}

int FadeFunc_27(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_02011D60(data, _020F5DA0);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_02011D98(data);
}

int FadeFunc_28(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        struct {
            const u8 *ptr0;
            const u8 *ptr1;
            u16 field_08;
            u16 field_0A;
            u8 field_0C;
            u8 field_0D;
            u16 field_0E;
        } params;
        params.ptr0 = _020F5EEC;
        params.ptr1 = _020F5EFC;
        params.field_08 = 4;
        params.field_0A = 0;
        params.field_0C = 0x3f;
        params.field_0D = 0x20;
        params.field_0E = 1;
        sub_0200FCDC(data->field_24);
        sub_02011FF8(data, &params);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_02012030(data);
}

int FadeFunc_29(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        struct {
            const u8 *ptr0;
            const u8 *ptr1;
            u16 field_08;
            u16 field_0A;
            u8 field_0C;
            u8 field_0D;
            u16 field_0E;
        } params;
        params.ptr0 = _020F5F0C;
        params.ptr1 = _020F5F1C;
        params.field_08 = 4;
        params.field_0A = 0;
        params.field_0C = 0x3f;
        params.field_0D = 0x20;
        params.field_0E = 0;
        sub_0200FCDC(data->field_24);
        sub_02011FF8(data, &params);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_02012030(data);
}

int FadeFunc_30(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        *(const u8 **)&_0210F64C[0x30] = _020F5EBC;
        sub_0200FCDC(data->field_24);
        sub_0201289C(data, _0210F67C);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_020128E0(data);
}

int FadeFunc_31(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        *(const u8 **)&_0210F64C[0x18] = _020F5DF0;
        sub_0200FCDC(data->field_24);
        sub_0201289C(data, _0210F664);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_020128E0(data);
}

int FadeFunc_32(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        u16 params[4];
        // _020F5D58 + 0x30 offset = read from _020F5D88 (which is part of _020F5D68 array)
        // Actually: ldr r1, =_020F5D58; ldrh r2, [r1, #0x30] means read halfword at _020F5D58+0x30
        const u16 *src = (const u16 *)((const u8 *)_020F5D58 + 0x30);
        params[0] = src[0];
        params[1] = src[1];
        params[2] = src[2];
        params[3] = src[3];
        sub_0200FCDC(data->field_24);
        sub_020122B8(data, params);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_020122F8(data);
}

int FadeFunc_33(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        u16 params[4];
        const u16 *src = (const u16 *)((const u8 *)_020F5D98 + 0x28);
        params[0] = src[0];
        params[1] = src[1];
        params[2] = src[2];
        params[3] = src[3];
        sub_0200FCDC(data->field_24);
        sub_020122B8(data, params);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_020122F8(data);
}

int FadeFunc_34(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        u16 params[4];
        const u16 *src = (const u16 *)((const u8 *)_020F5D58 + 0x20);
        params[0] = src[0];
        params[1] = src[1];
        params[2] = src[2];
        params[3] = src[3];
        sub_0200FCDC(data->field_24);
        sub_020125EC(data, params);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_0201262C(data);
}

int FadeFunc_35(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        u16 params[4];
        const u16 *src = (const u16 *)((const u8 *)_020F5D58 + 0x18);
        params[0] = src[0];
        params[1] = src[1];
        params[2] = src[2];
        params[3] = src[3];
        sub_0200FCDC(data->field_24);
        sub_020125EC(data, params);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_0201262C(data);
}

int FadeFunc_36(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_02011884(data, _020F5E98);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_020118BC(data);
}

int FadeFunc_37(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_02011884(data, _020F5EE0);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_020118BC(data);
}

int FadeFunc_38(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_0201164C(data, _020F5DFC);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_0201169C(data);
}

int FadeFunc_39(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_0201164C(data, _020F5E50);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_0201169C(data);
}

int FadeFunc_40(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        *(const u8 **)&_0210F64C[0x5c] = _020F5D98;
        sub_0200FCDC(data->field_24);
        sub_02012B1C(data, _0210F69C);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_02012B80(data);
}

int FadeFunc_41(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        *(const u8 **)&_0210F64C[0x74] = _020F5DB0;
        sub_0200FCDC(data->field_24);
        sub_02012B1C(data, _0210F6B4);
        data->field_28 = 0;
        data->field_2C = 0;
        return 0;
    }
    return sub_02012B80(data);
}

int FadeFunc_42(void *arg) {
    FadeData *data = arg;
    if (data->state == 0) {
        sub_0200FCDC(data->field_24);
        sub_02012DD8(data, _020F5E74);
        data->field_28 = 1;
        data->field_2C = 0;
        return 0;
    }
    return sub_02012E10(data);
}

// ============================================================
// Math utility functions
// ============================================================

static s32 sub_020109BC(s32 angle) {
    int idx = angle >> 4;
    s16 sinVal = FX_SinCosTable_[idx * 2];
    s16 cosVal = FX_SinCosTable_[idx * 2 + 1];
    return FX_Div(sinVal, cosVal);
}

static s32 sub_020109D8(s32 angle, s32 radius) {
    s32 tanVal = sub_020109BC(angle);
    s64 result = (s64)tanVal * ((s32)radius << 12);
    result = (result + (1 << 11)) >> 12;
    return (s32)(result >> 12);
}

static void sub_02010A00(s32 angle, s32 *buf, int count, int start) {
    s32 tanVal;
    s32 curFx;
    int i;

    tanVal = sub_020109BC(angle);
    if (start >= count) {
        return;
    }
    curFx = start << 12;
    buf += start;
    for (i = start; i < count; i++) {
        s64 result = (s64)tanVal * curFx;
        result = (result + (1 << 11)) >> 12;
        *buf++ = (s32)(result >> 12);
        curFx += (1 << 12);
    }
}

static s32 sub_02010A54(s32 angle, s32 halfSize) {
    s32 tanVal = sub_020109BC(angle);
    s32 half = ((u32)halfSize + ((u32)halfSize >> 31)) >> 1;
    return FX_Div(half << 12, tanVal);
}

static s32 sub_02010A6C(int start, int end, int steps) {
    return _s32_div_f((end - start) << 7, steps);
}

static s32 sub_02010A7C(s32 base, s32 offset) {
    s32 result = base + offset;
    if (result < 0) {
        result = 0;
    }
    if (result > 255) {
        result = 255;
    }
    return result;
}

static void sub_02010A8C(s32 *dst, const s32 *delta) {
    dst[0] += delta[0];
    dst[1] += delta[1];
    dst[2] += delta[2];
    dst[3] += delta[3];
}

static void sub_02010AB0(s32 *startPos, s32 *endPos, s32 *deltaPos, const u8 *startVals, const u8 *endVals, int steps) {
    startPos[0] = startVals[0] << 7;
    startPos[1] = startVals[1] << 7;
    startPos[2] = startVals[2] << 7;
    startPos[3] = startVals[3] << 7;
    endPos[0] = endVals[0];
    endPos[1] = endVals[1];
    endPos[2] = endVals[2];
    endPos[3] = endVals[3];
    deltaPos[0] = sub_02010A6C(startVals[0], endVals[0], steps);
    deltaPos[1] = sub_02010A6C(startVals[1], endVals[1], steps);
    deltaPos[2] = sub_02010A6C(startVals[2], endVals[2], steps);
    deltaPos[3] = sub_02010A6C(startVals[3], endVals[3], steps);
}

// ============================================================
// Brightness fade functions
// ============================================================

static void sub_02010B14(FadeData *data, u32 type) {
    BrightWork *work;
    s32 startBright, endBright;

    work = Heap_Alloc((enum HeapID)data->heapID, 0x1C);
    data->work = work;
    {
        u8 *p = (u8 *)work;
        int i;
        for (i = 0x1C; i != 0; i--) {
            *p++ = 0;
        }
    }
    if (type == 0) {
        if (data->field_24 == 0x7FFF) {
            startBright = 16;
            endBright = 0;
        } else if (data->field_24 == 0) {
            startBright = -16;
            endBright = 0;
        } else {
            startBright = -16;
            endBright = 0;
            GF_AssertFail();
        }
    } else {
        if (data->field_24 == 0x7FFF) {
            startBright = 0;
            endBright = 16;
        } else if (data->field_24 == 0) {
            startBright = 0;
            endBright = -16;
        } else {
            startBright = 0;
            endBright = -16;
            GF_AssertFail();
        }
    }
    SetMasterBrightness(data->field_10, startBright);
    work->field_00 = data->field_04;
    work->field_04 = data->field_08;
    work->field_08 = 0;
    work->field_0C = startBright << 7;
    work->field_10 = endBright << 7;
    work->field_14 = sub_02010A6C(startBright, endBright, data->field_04);
    work->field_18 = data->field_10;
    data->state++;
}

static int sub_02010BB4(FadeData *data) {
    int ret = 0;
    BrightWork *work = data->work;

    switch (data->state) {
    case 1:
        if (sub_02010BF4(work) == 1) {
            data->state++;
        }
        break;
    case 2:
        Heap_Free(work);
        data->work = 0;
        ret = 1;
        data->state++;
        break;
    case 3:
        ret = 1;
        break;
    }
    return ret;
}

static int sub_02010BF4(void *arg) {
    s32 *work = arg;
    int ret = 0;
    s32 count;
    s32 tick;

    tick = work[2] + 1;
    work[2] = tick;
    if (tick >= work[1]) {
        work[2] = 0;
        count = work[0] - 1;
        if (count > 0) {
            work[0] = count;
            work[3] = work[3] + work[5];
        } else {
            ret = 1;
            work[3] = work[4];
        }
        {
            s32 val = work[3];
            s32 rounded;
            if (val < 0) {
                rounded = (val + 127) >> 7;
            } else {
                rounded = val >> 7;
            }
            SetMasterBrightness(work[6], rounded);
        }
    }
    return ret;
}

// ============================================================
// sub_02010C38 - HBlank handler (NONMATCHING)
// ============================================================

#ifdef NONMATCHING
void sub_02010C38(void *arg) {
    // placeholder
}
#else
// clang-format off
asm void sub_02010C38(void *arg) {
    push {r4, r5, r6, lr}
    add r4, r0, #0
    bne _02010C42
    bl GF_AssertFail
_02010C42:
    ldr r0, =0x04000006
    ldrh r0, [r0]
    cmp r0, #0xc0
    bge _02010CE8
    add r5, r0, #1
    cmp r5, #0xbf
    ble _02010C52
    sub r5, #0xc0
_02010C52:
    ldr r0, [r4, #4]
    cmp r0, #1
    bne _02010D02
    add r0, r4, #0
    mov r1, #0
    bl sub_02010EE0
    ldr r3, [r4, #8]
    lsl r5, r5, #1
    mov r4, #6
    add r1, r0, r5
    lsl r4, r4, #6
    ldrsh r2, [r1, r4]
    lsl r4, r4, #2
    ldrsh r1, [r0, r5]
    ldr r0, [r0, r4]
    cmp r0, #0
    ldr r0, =0x04000004
    bne _02010CBC
    cmp r3, #0
    bne _02010C9C
    ldrh r4, [r0]
    mov r3, #2
    tst r3, r4
    beq _02010CE8
    lsl r3, r1, #8
    mov r1, #0xff
    lsl r1, r1, #8
    and r3, r1
    lsl r1, r2, #0x18
    lsr r1, r1, #0x18
    orr r1, r3
    strh r1, [r0, #0x3c]
    mov r1, #0xc0
    add r0, #0x40
    strh r1, [r0]
    pop {r4, r5, r6, pc}
_02010C9C:
    ldrh r3, [r0]
    mov r0, #2
    tst r0, r3
    beq _02010CE8
    mov r0, #0xff
    lsl r1, r1, #8
    lsl r0, r0, #8
    and r1, r0
    lsl r0, r2, #0x18
    lsr r0, r0, #0x18
    orr r0, r1
    ldr r1, =0x04001040
    strh r0, [r1]
    mov r0, #0xc0
    strh r0, [r1, #4]
    pop {r4, r5, r6, pc}
_02010CBC:
    cmp r3, #0
    bne _02010CE0
    ldrh r4, [r0]
    mov r3, #2
    tst r3, r4
    beq _02010CE8
    lsl r3, r1, #8
    mov r1, #0xff
    lsl r1, r1, #8
    and r3, r1
    lsl r1, r2, #0x18
    lsr r1, r1, #0x18
    orr r1, r3
    strh r1, [r0, #0x3e]
    mov r1, #0xc0
    add r0, #0x42
    strh r1, [r0]
    pop {r4, r5, r6, pc}
_02010CE0:
    ldrh r3, [r0]
    mov r0, #2
    tst r0, r3
    bne _02010CEA
_02010CE8:
    b _02010E50
_02010CEA:
    mov r0, #0xff
    lsl r1, r1, #8
    lsl r0, r0, #8
    and r1, r0
    lsl r0, r2, #0x18
    lsr r0, r0, #0x18
    orr r0, r1
    ldr r1, =0x04001042
    strh r0, [r1]
    mov r0, #0xc0
    strh r0, [r1, #4]
    pop {r4, r5, r6, pc}
_02010D02:
    add r0, r4, #0
    mov r1, #0
    bl sub_02010EE0
    add r3, r0, #0
    lsl r5, r5, #1
    mov r6, #6
    add r1, r3, r5
    lsl r6, r6, #6
    ldrsh r2, [r1, r6]
    lsl r6, r6, #2
    ldrsh r1, [r3, r5]
    ldr r3, [r3, r6]
    ldr r0, [r4, #8]
    cmp r3, #0
    bne _02010D68
    cmp r0, #0
    ldr r0, =0x04000004
    bne _02010D48
    ldrh r6, [r0]
    mov r3, #2
    tst r3, r6
    beq _02010DAC
    lsl r3, r1, #8
    mov r1, #0xff
    lsl r1, r1, #8
    and r3, r1
    lsl r1, r2, #0x18
    lsr r1, r1, #0x18
    orr r1, r3
    strh r1, [r0, #0x3c]
    mov r1, #0xc0
    add r0, #0x40
    strh r1, [r0]
    b _02010DAC
_02010D48:
    ldrh r3, [r0]
    mov r0, #2
    tst r0, r3
    beq _02010DAC
    mov r0, #0xff
    lsl r1, r1, #8
    lsl r0, r0, #8
    and r1, r0
    lsl r0, r2, #0x18
    lsr r0, r0, #0x18
    orr r0, r1
    ldr r1, =0x04001040
    strh r0, [r1]
    mov r0, #0xc0
    strh r0, [r1, #4]
    b _02010DAC
_02010D68:
    cmp r0, #0
    ldr r0, =0x04000004
    bne _02010D8E
    ldrh r6, [r0]
    mov r3, #2
    tst r3, r6
    beq _02010DAC
    lsl r3, r1, #8
    mov r1, #0xff
    lsl r1, r1, #8
    and r3, r1
    lsl r1, r2, #0x18
    lsr r1, r1, #0x18
    orr r1, r3
    strh r1, [r0, #0x3e]
    mov r1, #0xc0
    add r0, #0x42
    strh r1, [r0]
    b _02010DAC
_02010D8E:
    ldrh r3, [r0]
    mov r0, #2
    tst r0, r3
    beq _02010DAC
    mov r0, #0xff
    lsl r1, r1, #8
    lsl r0, r0, #8
    and r1, r0
    lsl r0, r2, #0x18
    lsr r0, r0, #0x18
    orr r0, r1
    ldr r1, =0x04001042
    strh r0, [r1]
    mov r0, #0xc0
    strh r0, [r1, #4]
_02010DAC:
    add r0, r4, #0
    mov r1, #1
    bl sub_02010EE0
    ldr r3, [r4, #8]
    mov r4, #6
    add r1, r0, r5
    lsl r4, r4, #6
    ldrsh r2, [r1, r4]
    lsl r4, r4, #2
    ldrsh r1, [r0, r5]
    ldr r0, [r0, r4]
    cmp r0, #0
    ldr r0, =0x04000004
    bne _02010E0E
    cmp r3, #0
    bne _02010DEE
    ldrh r4, [r0]
    mov r3, #2
    tst r3, r4
    beq _02010E50
    lsl r3, r1, #8
    mov r1, #0xff
    lsl r1, r1, #8
    and r3, r1
    lsl r1, r2, #0x18
    lsr r1, r1, #0x18
    orr r1, r3
    strh r1, [r0, #0x3c]
    mov r1, #0xc0
    add r0, #0x40
    strh r1, [r0]
    pop {r4, r5, r6, pc}
_02010DEE:
    ldrh r3, [r0]
    mov r0, #2
    tst r0, r3
    beq _02010E50
    mov r0, #0xff
    lsl r1, r1, #8
    lsl r0, r0, #8
    and r1, r0
    lsl r0, r2, #0x18
    lsr r0, r0, #0x18
    orr r0, r1
    ldr r1, =0x04001040
    strh r0, [r1]
    mov r0, #0xc0
    strh r0, [r1, #4]
    pop {r4, r5, r6, pc}
_02010E0E:
    cmp r3, #0
    bne _02010E32
    ldrh r4, [r0]
    mov r3, #2
    tst r3, r4
    beq _02010E50
    lsl r3, r1, #8
    mov r1, #0xff
    lsl r1, r1, #8
    and r3, r1
    lsl r1, r2, #0x18
    lsr r1, r1, #0x18
    orr r1, r3
    strh r1, [r0, #0x3e]
    mov r1, #0xc0
    add r0, #0x42
    strh r1, [r0]
    pop {r4, r5, r6, pc}
_02010E32:
    ldrh r3, [r0]
    mov r0, #2
    tst r0, r3
    beq _02010E50
    mov r0, #0xff
    lsl r1, r1, #8
    lsl r0, r0, #8
    and r1, r0
    lsl r0, r2, #0x18
    lsr r0, r0, #0x18
    orr r0, r1
    ldr r1, =0x04001042
    strh r0, [r1]
    mov r0, #0xc0
    strh r0, [r1, #4]
_02010E50:
    pop {r4, r5, r6, pc}
    nop
}
// clang-format on
#endif

// ============================================================
// Buffer management
// ============================================================

void sub_02010E64(void *buf, int mode, int screen, int heapID) {
    u32 *p = buf;
    switch (mode) {
    case 0:
    case 1: {
        u32 *mem = Heap_Alloc((enum HeapID)heapID, 0x604);
        p[0] = (u32)mem;
        p[1] = 1;
        p[2] = screen;
        *(u32 *)((u8 *)mem + 0x600) = mode;
        break;
    }
    case 2: {
        u32 *mem = Heap_Alloc((enum HeapID)heapID, 0xC08);
        int i;
        p[0] = (u32)mem;
        p[1] = 2;
        p[2] = screen;
        for (i = 0; i < 2; i++) {
            *(u32 *)((u8 *)mem + i * 0x604 + 0x600) = i;
        }
        break;
    }
    default:
        return;
    }
}

void sub_02010EC8(void *buf) {
    sub_02010ED0(buf);
}

static void sub_02010ED0(void *buf) {
    u32 *p = buf;
    Heap_Free((void *)p[0]);
    p[0] = 0;
}

void *sub_02010EE0(void *buf, int index) {
    u32 *p = buf;
    if ((int)p[1] <= index) {
        GF_AssertFail();
    }
    return (void *)((u8 *)(void *)p[0] + index * 0x604);
}

void sub_02010F00(SysTask *task, void *data) {
    u32 *p = data;
    int count = (int)p[1];
    int i;
    for (i = 0; i < count; i++) {
        void *slot = sub_02010EE0(data, i);
        memcpy(slot, (u8 *)slot + 0xC0, 0x300);
    }
    SysTask_Destroy(task);
}

void sub_02010F34(int screen, void *ptr, int a2) {
    if (screen == 0) {
        sub_02013424(ptr, 0, a2);
        return;
    }
    sub_02013424(ptr, 1, a2);
    sub_02013440(ptr, 0x3f, 0, 0, a2);
    sub_02013488(ptr, 0, 0, 0, 0, 0, a2);
    sub_02013468(ptr, 0x20, 0, a2);
}

void sub_02010F84(void *a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9) {
    if (a4 == 0) {
        sub_02013220(a1, 0, a5, a6);
        sub_020132A8(a2, 0, a6);
        sub_02013364(a3, a5, a7, a8, a9, a6);
    } else {
        sub_02013440(a0, a5, 0, a3, a6);
        sub_02013468(a0, a2, 0, a6);
        sub_02013488(a0, a9, a5, a7, a8, a3, a6);
    }
}

void sub_02010FEC(void *a0, int a1, int a2, int a3) {
    u8 v0, v1;
    v0 = (u8)sub_020132E8(a1, a2);
    v1 = v0;
    v0 = (u8)sub_0201333C(a2);
    if (a3 == 0) {
        sub_02013220(v0 & 0x1F, 0, a1, a2);
        sub_020132A8(v1 & 0x1F, 0, a2);
    } else {
        sub_02013440(a0, v0 & 0x1F, 0, a1, a2);
        sub_02013468(a0, v1 & 0x1F, 0, a2);
    }
}

void sub_02011068(void *a0, int a1, int a2, int a3) {
    if (a3 == 0) {
        sub_020131F4(a1, a2);
        return;
    }
    sub_02013424(a0, a1, a2);
}

// ============================================================
// Internal functions
// ============================================================

static void sub_02011080(void *buf, u32 a1, int a2, int a3, int a4) {
    u8 *p = buf;
    memset(p, 0, 0xC3 * 4);
    if (a1 == 1) {
        *(u32 *)(p + 0x180) = a3;
        p[0x308] = (u8)a1;
        p[0x309] = (u8)a2;
    } else {
        *(u32 *)(p + 0x180) = a3;
        *(u32 *)(p + 0x304) = a4;
        p[0x308] = (u8)a1;
        p[0x309] = (u8)a2;
    }
}

static SysTask *sub_020110C4(void *data) {
    return SysTask_CreateOnVWaitQueue(sub_02011104, data, 0x3FF);
}

static void sub_020110DC(void *a0, void *a1, int a2, int a3) {
    u8 *p = a1;
    sub_0200FF88(a0, a1, (int)sub_02011130, (int)p[0x309], a2);
}

static void sub_020110F4(void *a0, void *a1, int a2) {
    u8 *p = (u8 *)a1;
    sub_0200FFB4(a0, a1, (int)p[0x309]);
}

static void sub_02011104(SysTask *task, void *data) {
    u8 *p = data;
    int i;
    for (i = 0; i < 2; i++) {
        memcpy(p, p + 0xC0, 0xC0);
        p += 0xC0 + 0xC4;
    }
    SysTask_Destroy(task);
}

// ============================================================
// sub_02011130 - HBlank callback (NONMATCHING)
// ============================================================

#ifdef NONMATCHING
void sub_02011130(void *arg) {
    // placeholder
}
#else
// clang-format off
asm void sub_02011130(void *arg) {
    push {r3, r4, r5, lr}
    add r4, r0, #0
    bne _0201113A
    bl GF_AssertFail
_0201113A:
    ldr r0, =0x04000006
    ldrh r0, [r0]
    cmp r0, #0xc0
    bge _020111BC
    add r0, r0, #1
    cmp r0, #0xbf
    ble _0201114A
    sub r0, #0xc0
_0201114A:
    mov r2, #0xc2
    lsl r2, r2, #2
    ldrb r1, [r4, r2]
    cmp r1, #1
    beq _02011156
    b _020112F0
_02011156:
    add r0, r4, r0
    add r0, #0xc0
    ldrb r0, [r0]
    cmp r0, #0
    bne _02011226
    add r0, r2, #1
    ldrb r0, [r4, r0]
    cmp r0, #0
    ldr r0, =0x04000004
    bne _02011186
    ldrh r2, [r0]
    mov r1, #2
    tst r1, r2
    beq _020111A0
    add r0, #0x46
    ldrh r2, [r0]
    mov r1, #0x3f
    bic r2, r1
    mov r1, #0x3f
    orr r2, r1
    mov r1, #0x20
    orr r1, r2
    strh r1, [r0]
    b _020111A0
_02011186:
    ldrh r1, [r0]
    mov r0, #2
    tst r0, r1
    beq _020111A0
    ldr r1, =0x0400104A
    mov r0, #0x3f
    ldrh r2, [r1]
    bic r2, r0
    mov r0, #0x3f
    orr r2, r0
    mov r0, #0x20
    orr r0, r2
    strh r0, [r1]
_020111A0:
    ldr r0, =0x00000309
    ldrb r1, [r4, r0]
    mov r0, #6
    lsl r0, r0, #6
    ldr r0, [r4, r0]
    cmp r0, #0
    bne _020111EC
    cmp r1, #0
    bne _020111D0
    ldr r2, =0x04000004
    mov r0, #2
    ldrh r1, [r2]
    tst r0, r1
    bne _020111BE
_020111BC:
    b _02011634
_020111BE:
    add r2, #0x44
    ldrh r1, [r2]
    mov r0, #0x3f
    bic r1, r0
    mov r0, #0x20
    orr r1, r0
    orr r0, r1
    strh r0, [r2]
    pop {r3, r4, r5, pc}
_020111D0:
    ldr r0, =0x04000004
    ldrh r1, [r0]
    mov r0, #2
    tst r0, r1
    beq _020112D8
    ldr r1, =0x04001048
    mov r0, #0x3f
    ldrh r2, [r1]
    bic r2, r0
    mov r0, #0x20
    orr r2, r0
    orr r0, r2
    strh r0, [r1]
    pop {r3, r4, r5, pc}
_020111EC:
    cmp r1, #0
    ldr r0, =0x04000004
    bne _0201120C
    ldrh r1, [r0]
    mov r2, #2
    tst r1, r2
    beq _020112D8
    add r0, #0x44
    ldrh r3, [r0]
    ldr r1, =0xFFFFC0FF
    and r3, r1
    lsl r1, r2, #0xc
    orr r3, r1
    orr r1, r3
    strh r1, [r0]
    pop {r3, r4, r5, pc}
_0201120C:
    ldrh r1, [r0]
    mov r0, #2
    tst r0, r1
    beq _020112D8
    ldr r2, =0x04001048
    ldr r0, =0xFFFFC0FF
    ldrh r1, [r2]
    and r1, r0
    lsr r0, r2, #0xd
    orr r1, r0
    orr r0, r1
    strh r0, [r2]
    pop {r3, r4, r5, pc}
_02011226:
    add r0, r2, #1
    ldrb r0, [r4, r0]
    cmp r0, #0
    ldr r0, =0x04000004
    bne _0201124A
    ldrh r2, [r0]
    mov r1, #2
    tst r1, r2
    beq _02011262
    add r0, #0x46
    ldrh r2, [r0]
    mov r1, #0x3f
    bic r2, r1
    mov r1, #0x20
    orr r2, r1
    orr r1, r2
    strh r1, [r0]
    b _02011262
_0201124A:
    ldrh r1, [r0]
    mov r0, #2
    tst r0, r1
    beq _02011262
    ldr r1, =0x0400104A
    mov r0, #0x3f
    ldrh r2, [r1]
    bic r2, r0
    mov r0, #0x20
    orr r2, r0
    orr r0, r2
    strh r0, [r1]
_02011262:
    ldr r0, =0x00000309
    ldrb r1, [r4, r0]
    mov r0, #6
    lsl r0, r0, #6
    ldr r0, [r4, r0]
    cmp r0, #0
    ldr r0, =0x04000004
    bne _020112AE
    cmp r1, #0
    bne _02011292
    ldrh r2, [r0]
    mov r1, #2
    tst r1, r2
    beq _020112D8
    add r0, #0x44
    ldrh r2, [r0]
    mov r1, #0x3f
    bic r2, r1
    mov r1, #0x3f
    orr r2, r1
    mov r1, #0x20
    orr r1, r2
    strh r1, [r0]
    pop {r3, r4, r5, pc}
_02011292:
    ldrh r1, [r0]
    mov r0, #2
    tst r0, r1
    beq _020112D8
    ldr r1, =0x04001048
    mov r0, #0x3f
    ldrh r2, [r1]
    bic r2, r0
    mov r0, #0x3f
    orr r2, r0
    mov r0, #0x20
    orr r0, r2
    strh r0, [r1]
    pop {r3, r4, r5, pc}
_020112AE:
    cmp r1, #0
    bne _020112D0
    ldrh r1, [r0]
    mov r2, #2
    tst r1, r2
    beq _020112D8
    add r0, #0x44
    ldrh r3, [r0]
    ldr r1, =0xFFFFC0FF
    and r3, r1
    mov r1, #0x3f
    lsl r1, r1, #8
    orr r3, r1
    lsl r1, r2, #0xc
    orr r1, r3
    strh r1, [r0]
    pop {r3, r4, r5, pc}
_020112D0:
    ldrh r1, [r0]
    mov r0, #2
    tst r0, r1
    bne _020112DA
_020112D8:
    b _02011634
_020112DA:
    ldr r2, =0x04001048
    ldr r0, =0xFFFFC0FF
    ldrh r1, [r2]
    and r1, r0
    mov r0, #0x3f
    lsl r0, r0, #8
    orr r1, r0
    lsr r0, r2, #0xd
    orr r0, r1
    strh r0, [r2]
    pop {r3, r4, r5, pc}
_020112F0:
    add r1, r4, r0
    add r1, #0xc0
    ldrb r1, [r1]
    cmp r1, #0
    bne _020113BC
    add r1, r2, #1
    ldrb r1, [r4, r1]
    cmp r1, #0
    ldr r1, =0x04000004
    bne _02011320
    ldrh r3, [r1]
    mov r2, #2
    tst r2, r3
    beq _0201133A
    add r1, #0x46
    ldrh r3, [r1]
    mov r2, #0x3f
    bic r3, r2
    mov r2, #0x3f
    orr r3, r2
    mov r2, #0x20
    orr r2, r3
    strh r2, [r1]
    b _0201133A
_02011320:
    ldrh r2, [r1]
    mov r1, #2
    tst r1, r2
    beq _0201133A
    ldr r2, =0x0400104A
    mov r1, #0x3f
    ldrh r3, [r2]
    bic r3, r1
    mov r1, #0x3f
    orr r3, r1
    mov r1, #0x20
    orr r1, r3
    strh r1, [r2]
_0201133A:
    ldr r1, =0x00000309
    ldrb r2, [r4, r1]
    mov r1, #6
    lsl r1, r1, #6
    ldr r1, [r4, r1]
    cmp r1, #0
    ldr r1, =0x04000004
    bne _02011382
    cmp r2, #0
    bne _02011368
    ldrh r3, [r1]
    mov r2, #2
    tst r2, r3
    beq _0201138E
    add r1, #0x44
    ldrh r3, [r1]
    mov r2, #0x3f
    bic r3, r2
    mov r2, #0x20
    orr r3, r2
    orr r2, r3
    strh r2, [r1]
    b _0201149A
_02011368:
    ldrh r2, [r1]
    mov r1, #2
    tst r1, r2
    beq _0201138E
    ldr r2, =0x04001048
    mov r1, #0x3f
    ldrh r3, [r2]
    bic r3, r1
    mov r1, #0x20
    orr r3, r1
    orr r1, r3
    strh r1, [r2]
    b _0201149A
_02011382:
    cmp r2, #0
    bne _020113A2
    ldrh r2, [r1]
    mov r3, #2
    tst r2, r3
    bne _02011390
_0201138E:
    b _0201149A
_02011390:
    add r1, #0x44
    ldrh r5, [r1]
    ldr r2, =0xFFFFC0FF
    and r5, r2
    lsl r2, r3, #0xc
    orr r5, r2
    orr r2, r5
    strh r2, [r1]
    b _0201149A
_020113A2:
    ldrh r2, [r1]
    mov r1, #2
    tst r1, r2
    beq _0201149A
    ldr r3, =0x04001048
    ldr r1, =0xFFFFC0FF
    ldrh r2, [r3]
    and r2, r1
    lsr r1, r3, #0xd
    orr r2, r1
    orr r1, r2
    strh r1, [r3]
    b _0201149A
_020113BC:
    add r1, r2, #1
    ldrb r1, [r4, r1]
    cmp r1, #0
    ldr r1, =0x04000004
    bne _020113E0
    ldrh r3, [r1]
    mov r2, #2
    tst r2, r3
    beq _020113F8
    add r1, #0x46
    ldrh r3, [r1]
    mov r2, #0x3f
    bic r3, r2
    mov r2, #0x20
    orr r3, r2
    orr r2, r3
    strh r2, [r1]
    b _020113F8
_020113E0:
    ldrh r2, [r1]
    mov r1, #2
    tst r1, r2
    beq _020113F8
    ldr r2, =0x0400104A
    mov r1, #0x3f
    ldrh r3, [r2]
    bic r3, r1
    mov r1, #0x20
    orr r3, r1
    orr r1, r3
    strh r1, [r2]
_020113F8:
    ldr r1, =0x00000309
    ldrb r2, [r4, r1]
    mov r1, #6
    lsl r1, r1, #6
    ldr r1, [r4, r1]
    cmp r1, #0
    ldr r1, =0x04000004
    bne _0201145C
    cmp r2, #0
    bne _02011440
    ldrh r3, [r1]
    mov r2, #2
    tst r2, r3
    beq _0201149A
    add r1, #0x44
    ldrh r3, [r1]
    mov r2, #0x3f
    bic r3, r2
    mov r2, #0x3f
    orr r3, r2
    mov r2, #0x20
    orr r2, r3
    strh r2, [r1]
    b _0201149A
_02011440:
    ldrh r2, [r1]
    mov r1, #2
    tst r1, r2
    beq _0201149A
    ldr r2, =0x04001048
    mov r1, #0x3f
    ldrh r3, [r2]
    bic r3, r1
    mov r1, #0x3f
    orr r3, r1
    mov r1, #0x20
    orr r1, r3
    strh r1, [r2]
    b _0201149A
_0201145C:
    cmp r2, #0
    bne _0201147E
    ldrh r2, [r1]
    mov r3, #2
    tst r2, r3
    beq _0201149A
    add r1, #0x44
    ldrh r5, [r1]
    ldr r2, =0xFFFFC0FF
    and r5, r2
    mov r2, #0x3f
    lsl r2, r2, #8
    orr r5, r2
    lsl r2, r3, #0xc
    orr r2, r5
    strh r2, [r1]
    b _0201149A
_0201147E:
    ldrh r2, [r1]
    mov r1, #2
    tst r1, r2
    beq _0201149A
    ldr r3, =0x04001048
    ldr r1, =0xFFFFC0FF
    ldrh r2, [r3]
    and r2, r1
    mov r1, #0x3f
    lsl r1, r1, #8
    orr r2, r1
    lsr r1, r3, #0xd
    orr r1, r2
    strh r1, [r3]
_0201149A:
    mov r1, #0x61
    lsl r1, r1, #2
    add r1, r4, r1
    add r0, r1, r0
    add r0, #0xc0
    ldrb r0, [r0]
    cmp r0, #0
    ldr r0, =0x00000309
    bne _02011570
    ldrb r0, [r4, r0]
    cmp r0, #0
    ldr r0, =0x04000004
    bne _020114D0
    ldrh r3, [r0]
    mov r2, #2
    tst r2, r3
    beq _020114EA
    add r0, #0x46
    ldrh r3, [r0]
    mov r2, #0x3f
    bic r3, r2
    mov r2, #0x3f
    orr r3, r2
    mov r2, #0x20
    orr r2, r3
    strh r2, [r0]
    b _020114EA
_020114D0:
    ldrh r2, [r0]
    mov r0, #2
    tst r0, r2
    beq _020114EA
    ldr r2, =0x0400104A
    mov r0, #0x3f
    ldrh r3, [r2]
    bic r3, r0
    mov r0, #0x3f
    orr r3, r0
    mov r0, #0x20
    orr r0, r3
    strh r0, [r2]
_020114EA:
    ldr r0, =0x00000309
    ldrb r2, [r4, r0]
    mov r0, #6
    lsl r0, r0, #6
    ldr r0, [r1, r0]
    cmp r0, #0
    bne _02011536
    cmp r2, #0
    bne _02011518
    ldr r2, =0x04000004
    mov r0, #2
    ldrh r1, [r2]
    tst r0, r1
    beq _02011522
    add r2, #0x44
    ldrh r1, [r2]
    mov r0, #0x3f
    bic r1, r0
    mov r0, #0x20
    orr r1, r0
    orr r0, r1
    strh r0, [r2]
    pop {r3, r4, r5, pc}
_02011518:
    ldr r0, =0x04000004
    ldrh r1, [r0]
    mov r0, #2
    tst r0, r1
    bne _02011524
_02011522:
    b _02011634
_02011524:
    ldr r1, =0x04001048
    mov r0, #0x3f
    ldrh r2, [r1]
    bic r2, r0
    mov r0, #0x20
    orr r2, r0
    orr r0, r2
    strh r0, [r1]
    pop {r3, r4, r5, pc}
_02011536:
    cmp r2, #0
    ldr r0, =0x04000004
    bne _02011556
    ldrh r1, [r0]
    mov r2, #2
    tst r1, r2
    beq _02011634
    add r0, #0x44
    ldrh r3, [r0]
    ldr r1, =0xFFFFC0FF
    and r3, r1
    lsl r1, r2, #0xc
    orr r3, r1
    orr r1, r3
    strh r1, [r0]
    pop {r3, r4, r5, pc}
_02011556:
    ldrh r1, [r0]
    mov r0, #2
    tst r0, r1
    beq _02011634
    ldr r2, =0x04001048
    ldr r0, =0xFFFFC0FF
    ldrh r1, [r2]
    and r1, r0
    lsr r0, r2, #0xd
    orr r1, r0
    orr r0, r1
    strh r0, [r2]
    pop {r3, r4, r5, pc}
_02011570:
    ldrb r0, [r4, r0]
    cmp r0, #0
    ldr r0, =0x04000004
    bne _02011592
    ldrh r3, [r0]
    mov r2, #2
    tst r2, r3
    beq _020115AA
    add r0, #0x46
    ldrh r3, [r0]
    mov r2, #0x3f
    bic r3, r2
    mov r2, #0x20
    orr r3, r2
    orr r2, r3
    strh r2, [r0]
    b _020115AA
_02011592:
    ldrh r2, [r0]
    mov r0, #2
    tst r0, r2
    beq _020115AA
    ldr r2, =0x0400104A
    mov r0, #0x3f
    ldrh r3, [r2]
    bic r3, r0
    mov r0, #0x20
    orr r3, r0
    orr r0, r3
    strh r0, [r2]
_020115AA:
    ldr r0, =0x00000309
    ldrb r2, [r4, r0]
    mov r0, #6
    lsl r0, r0, #6
    ldr r0, [r1, r0]
    cmp r0, #0
    ldr r0, =0x04000004
    bne _020115F6
    cmp r2, #0
    bne _020115DA
    ldrh r2, [r0]
    mov r1, #2
    tst r1, r2
    beq _02011634
    add r0, #0x44
    ldrh r2, [r0]
    mov r1, #0x3f
    bic r2, r1
    mov r1, #0x3f
    orr r2, r1
    mov r1, #0x20
    orr r1, r2
    strh r1, [r0]
    pop {r3, r4, r5, pc}
_020115DA:
    ldrh r1, [r0]
    mov r0, #2
    tst r0, r1
    beq _02011634
    ldr r1, =0x04001048
    mov r0, #0x3f
    ldrh r2, [r1]
    bic r2, r0
    mov r0, #0x3f
    orr r2, r0
    mov r0, #0x20
    orr r0, r2
    strh r0, [r1]
    pop {r3, r4, r5, pc}
_020115F6:
    cmp r2, #0
    bne _02011618
    ldrh r1, [r0]
    mov r2, #2
    tst r1, r2
    beq _02011634
    add r0, #0x44
    ldrh r3, [r0]
    ldr r1, =0xFFFFC0FF
    and r3, r1
    mov r1, #0x3f
    lsl r1, r1, #8
    orr r3, r1
    lsl r1, r2, #0xc
    orr r1, r3
    strh r1, [r0]
    pop {r3, r4, r5, pc}
_02011618:
    ldrh r1, [r0]
    mov r0, #2
    tst r0, r1
    beq _02011634
    ldr r2, =0x04001048
    ldr r0, =0xFFFFC0FF
    ldrh r1, [r2]
    and r1, r0
    mov r0, #0x3f
    lsl r0, r0, #8
    orr r1, r0
    lsr r0, r2, #0xd
    orr r0, r1
    strh r0, [r2]
_02011634:
    pop {r3, r4, r5, pc}
    nop
}
// clang-format on
#endif

// ============================================================
// Window/wipe fade init + update functions
// ============================================================

static void sub_0201164C(FadeData *data, const void *table) {
    void *work;
    u8 *w;

    work = Heap_Alloc((enum HeapID)data->heapID, 0x4C);
    data->work = work;
    w = work;
    sub_020117A0(work, table, data->field_04, data->field_08, data->field_10, (int)data->field_18);
    if (((const u8 *)table)[8] == 0) {
        sub_02011068((void *)(int)data->field_18, 1, *(u32 *)(w + 0x30), *(u32 *)(w + 0x44));
    } else {
        sub_02011068((void *)(int)data->field_18, 2, *(u32 *)(w + 0x30), *(u32 *)(w + 0x44));
    }
    data->state++;
}

static int sub_0201169C(FadeData *data) {
    int ret = 0;
    u8 *work = data->work;

    switch (data->state) {
    case 1:
        if (sub_020117FC(work) == 1) {
            sub_02010F34(*(u32 *)(work + 0x44), data->field_18, data->field_10);
            data->state++;
        }
        break;
    case 2:
        Heap_Free(work);
        data->work = 0;
        ret = 1;
        data->state++;
        break;
    case 3:
        ret = 1;
        break;
    }
    return ret;
}

static void sub_020116EC(FadeData *data, const void *table1, const void *table2) {
    void *work;
    u8 *w;

    work = Heap_Alloc((enum HeapID)data->heapID, 0x98);
    data->work = work;
    w = work;
    sub_020117A0(work, table1, data->field_04, data->field_08, data->field_10, (int)data->field_18);
    sub_020117A0((u8 *)work + 0x4C, table2, data->field_04, data->field_08, data->field_10, (int)data->field_18);
    sub_02011068((void *)(int)data->field_18, 3, data->field_10, *(u32 *)(w + 0x44));
    data->state++;
}

static int sub_02011744(FadeData *data) {
    int ret = 0;
    u8 *work = data->work;

    switch (data->state) {
    case 1: {
        int r0 = sub_020117FC(work);
        int r1 = sub_020117FC((u8 *)work + 0x4C);
        if (r0 + r1 == 2) {
            sub_02010F34(*(u32 *)(work + 0x44), data->field_18, data->field_10);
            data->state++;
        }
        break;
    }
    case 2:
        Heap_Free(work);
        data->work = 0;
        ret = 1;
        data->state++;
        break;
    case 3:
        ret = 1;
        break;
    }
    return ret;
}

static void sub_020117A0(void *work, const void *table, int duration, int screen, int a4, int a5) {
    u8 *w = work;
    const u8 *t = table;

    sub_02010AB0((s32 *)(w + 0x20), (s32 *)w, (s32 *)(w + 0x10), t, t + 4, duration);
    *(u32 *)(w + 0x30) = a4;
    *(u32 *)(w + 0x34) = t[8];
    *(u32 *)(w + 0x38) = duration;
    *(u32 *)(w + 0x3C) = screen;
    *(u32 *)(w + 0x40) = 0;
    *(u32 *)(w + 0x48) = a5;
    *(u32 *)(w + 0x44) = t[11];
    sub_02010F84((void *)a5, t[0], t[1], t[2], t[3], *(u32 *)(w + 0x44), t[9], t[10], t[8], a4);
}

static int sub_020117FC(void *work) {
    u8 *w = work;
    s32 tick;
    s32 dur;

    tick = *(s32 *)(w + 0x40) + 1;
    *(s32 *)(w + 0x40) = tick;
    dur = *(s32 *)(w + 0x3C);
    if (tick >= dur) {
        *(s32 *)(w + 0x40) = 0;
        s32 count = *(s32 *)(w + 0x38) - 1;
        if (count > 0) {
            *(s32 *)(w + 0x38) = count;
            sub_02010A8C((s32 *)w, (const s32 *)(w + 0x10));
        } else {
            sub_02013488((void *)(int)*(u32 *)(w + 0x48), *(s32 *)(w + 0x20), *(s32 *)(w + 0x24), *(s32 *)(w + 0x28), *(s32 *)(w + 0x2C), *(u32 *)(w + 0x34), *(u32 *)(w + 0x30));
            return 1;
        }
        {
            s32 v0 = *(s32 *)w;
            s32 v1 = *(s32 *)(w + 4);
            s32 v2 = *(s32 *)(w + 8);
            s32 val = *(s32 *)(w + 0xC);
            s32 r;
            if (val < 0) {
                r = (val + 127) >> 7;
            } else {
                r = val >> 7;
            }
            s32 r0, r1, r2;
            if (v0 < 0) {
                r0 = (v0 + 127) >> 7;
            } else {
                r0 = v0 >> 7;
            }
            if (v1 < 0) {
                r1 = (v1 + 127) >> 7;
            } else {
                r1 = v1 >> 7;
            }
            if (v2 < 0) {
                r2 = (v2 + 127) >> 7;
            } else {
                r2 = v2 >> 7;
            }
            sub_02013488((void *)(int)*(u32 *)(w + 0x48), r0, r1, r2, r, *(u32 *)(w + 0x34), *(u32 *)(w + 0x30));
        }
    }
    return 0;
}

// ============================================================
// Circle/iris fade functions
// ============================================================

static void sub_02011884(FadeData *data, const void *table) {
    void *work = Heap_Alloc((enum HeapID)data->heapID, 0x38);
    data->work = work;
    sub_02011918(work, table, data->field_04, data->field_08, data->field_10, (int)data->field_18, (int)data->field_1C, data->heapID, 0);
    data->state++;
}

static int sub_020118BC(FadeData *data) {
    int ret = 0;
    u8 *work = data->work;

    switch (data->state) {
    case 1:
        if (sub_020119F4(work) == 1) {
            sub_02010F34(*(u32 *)(work + 0x2C), *(void **)(work + 0x30), data->field_10);
            data->state++;
        }
        break;
    case 2:
        sub_02010EC8(work);
        Heap_Free(data->work);
        data->work = 0;
        ret = 1;
        data->state++;
        break;
    case 3:
        ret = 1;
        break;
    default:
        GF_AssertFail();
        break;
    }
    return ret;
}

static void sub_02011918(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7, int a8) {
    u8 *w = work;
    const u8 *t = table;
    s32 delta;
    s16 v0, v1;

    v0 = *(s16 *)t;
    v1 = *(s16 *)(t + 2);
    delta = sub_02010A6C(v0, v1, duration);
    sub_02010E64(w, t[8], a4, a7);
    *(s32 *)(w + 0x0C) = v0 << 7;
    *(s32 *)(w + 0x10) = *(s16 *)(t + 4);
    *(s32 *)(w + 0x14) = *(s16 *)(t + 6);
    *(s32 *)(w + 0x18) = delta;
    *(s32 *)(w + 0x1C) = duration;
    *(s32 *)(w + 0x20) = screen;
    *(s32 *)(w + 0x24) = 0;
    *(void **)(w + 0x30) = (void *)a5;
    *(u32 *)(w + 0x34) = a6;
    *(u32 *)(w + 0x28) = a7;
    *(u32 *)(w + 0x2C) = t[11];
    sub_02011AD8(w);

    SysTask_CreateOnVWaitQueue(sub_02010F00, w, 0x3FF);

    {
        s16 *slot = sub_02010EE0(w, 0);
        sub_02010F84((void *)a5, t[9], t[10], t[8], a4, *(s16 *)((u8 *)slot + 0x300), 0, *(s16 *)((u8 *)slot + 0x480), 0xC0, *(u32 *)(w + 0x2C));
    }

    if (t[8] == 0) {
        sub_02011068((void *)a5, 1, a4, *(u32 *)(w + 0x2C));
    } else {
        sub_02011068((void *)a5, 2, a4, *(u32 *)(w + 0x2C));
    }

    sub_0200FF88((void *)*(u32 *)(w + 0x34), w, (int)sub_02010C38, a4, a7);
}

static int sub_020119F4(void *work) {
    u8 *w = work;
    s32 tick = *(s32 *)(w + 0x24) + 1;
    *(s32 *)(w + 0x24) = tick;
    if (tick >= *(s32 *)(w + 0x20)) {
        *(s32 *)(w + 0x24) = 0;
        s32 count = *(s32 *)(w + 0x1C) - 1;
        if (count > 0) {
            *(s32 *)(w + 0x1C) = count;
            *(s32 *)(w + 0x0C) += *(s32 *)(w + 0x18);
            sub_02011AD8(w);
            SysTask_CreateOnVWaitQueue(sub_02010F00, w, 0x3FF);
        } else {
            sub_0200FFB4((void *)*(u32 *)(w + 0x34), (void *)*(u32 *)(w + 0x08), *(u32 *)(w + 0x28));
            return 1;
        }
    }
    return 0;
}

static void sub_02011A44(s32 radius, int a1, int center, int target, s32 *outLeft, s32 *outRight) {
    s32 diff;
    s32 r;
    s32 rounded;

    if (radius < 0) {
        rounded = (radius + 127) >> 7;
    } else {
        rounded = radius >> 7;
    }

    diff = target - center;
    if (diff < 0) {
        diff = -diff;
    }
    if (diff >= rounded) {
        *outLeft = 0;
        *outRight = 0;
        return;
    }

    {
        s32 diffFx = diff << 12;
        s32 roundedFx = rounded << 12;
        s64 prod1 = (s64)diffFx * roundedFx;
        s64 prod2 = (s64)diffFx * diffFx;
        s32 val1 = (s32)(((prod1 + (1 << 11)) >> 12) >> 12);
        s32 val2 = (s32)(((prod2 + (1 << 11)) >> 12) >> 12);
        r = FX_Sqrt(val1 - val2) >> 12;
    }

    *outLeft = a1 - r;
    if (*outLeft < 0) {
        *outLeft = 0;
    }
    *outRight = *outLeft + r * 2;
    if (*outRight > 255) {
        *outRight = 255;
    }
}

static void sub_02011AD8(void *work) {
    u8 *w = work;
    s16 *slot;
    s32 left, right;
    int i;

    slot = sub_02010EE0(w, 0);

    for (i = 0; i < 0xC0; i++) {
        s32 radius = *(s32 *)(w + 0x14);
        if (i <= radius) {
            sub_02011A44(*(s32 *)(w + 0x0C), *(s32 *)(w + 0x10), i, i, &left, &right);
        } else if (i <= radius * 2) {
            s32 mirrorIdx = radius * 2 - i;
            left = *(s16 *)((u8 *)slot + mirrorIdx * 2 + 0x300);
            right = *(s16 *)((u8 *)slot + mirrorIdx * 2 + 0x480);
        } else {
            sub_02011A44(*(s32 *)(w + 0x0C), *(s32 *)(w + 0x10), i, i, &left, &right);
        }
        *(s16 *)((u8 *)slot + i * 2 + 0x300) = (s16)left;
        *(s16 *)((u8 *)slot + i * 2 + 0x480) = (s16)right;
    }
}

// ============================================================
// Shutter fade functions
// ============================================================

static void sub_02011B5C(FadeData *data, const void *table) {
    void *work = Heap_Alloc((enum HeapID)data->heapID, 0x30);
    data->work = work;
    sub_02011BF0(work, table, data->field_04, data->field_08, data->field_10, (int)data->field_18, (int)data->field_1C, data->heapID, 0);
    data->state++;
}

static int sub_02011B94(FadeData *data) {
    int ret = 0;
    u8 *work = data->work;

    switch (data->state) {
    case 1:
        if (sub_02011CB8(work) == 1) {
            sub_02010F34(*(u32 *)(work + 0x20), *(void **)(work + 0x24), data->field_10);
            data->state++;
        }
        break;
    case 2:
        sub_02010EC8(work);
        Heap_Free(data->work);
        data->work = 0;
        ret = 1;
        data->state++;
        break;
    case 3:
        ret = 1;
        break;
    default:
        GF_AssertFail();
        break;
    }
    return ret;
}

static void sub_02011BF0(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7, int a8) {
    u8 *w = work;
    const u8 *t = table;
    s32 delta;

    delta = sub_02010A6C(*(u16 *)t, *(u16 *)(t + 2), duration);
    sub_02010E64(w, t[4], a4, a7);
    *(s32 *)(w + 0x0C) = *(u16 *)t << 7;
    *(s32 *)(w + 0x10) = delta;
    *(s32 *)(w + 0x14) = duration;
    *(s32 *)(w + 0x18) = screen;
    *(s32 *)(w + 0x1C) = 0;
    *(void **)(w + 0x24) = (void *)a5;
    *(u32 *)(w + 0x28) = a6;
    *(u32 *)(w + 0x2C) = a7;
    *(u32 *)(w + 0x20) = t[7];
    sub_02011D08(w);

    SysTask_CreateOnVWaitQueue(sub_02010F00, w, 0x3FF);

    {
        s16 *slot = sub_02010EE0(w, 0);
        sub_02010F84((void *)a5, t[5], t[6], t[4], a4, *(s16 *)((u8 *)slot + 0x300), 0, *(s16 *)((u8 *)slot + 0x480), 0xC0, *(u32 *)(w + 0x20));
    }

    if (t[4] == 0) {
        sub_02011068((void *)a5, 1, a4, *(u32 *)(w + 0x20));
    } else {
        sub_02011068((void *)a5, 2, a4, *(u32 *)(w + 0x20));
    }

    sub_0200FF88((void *)*(u32 *)(w + 0x28), w, (int)sub_02010C38, a4, a7);
}

static int sub_02011CB8(void *work) {
    u8 *w = work;
    s32 tick = *(s32 *)(w + 0x1C) + 1;
    *(s32 *)(w + 0x1C) = tick;
    if (tick >= *(s32 *)(w + 0x18)) {
        *(s32 *)(w + 0x1C) = 0;
        s32 count = *(s32 *)(w + 0x14) - 1;
        if (count > 0) {
            *(s32 *)(w + 0x14) = count;
            *(s32 *)(w + 0x0C) += *(s32 *)(w + 0x10);
            sub_02011D08(w);
            SysTask_CreateOnVWaitQueue(sub_02010F00, w, 0x3FF);
        } else {
            sub_0200FFB4((void *)*(u32 *)(w + 0x28), (void *)*(u32 *)(w + 0x08), *(u32 *)(w + 0x2C));
            return 1;
        }
    }
    return 0;
}

static void sub_02011D08(void *work) {
    u8 *w = work;
    s32 buf[0xC0];
    s16 *slot;
    s32 val;
    int i;

    slot = sub_02010EE0(w, 0);
    val = *(s32 *)(w + 0x0C);
    if (val < 0) {
        val = (val + 127) >> 7;
    } else {
        val = val >> 7;
    }
    sub_02010A00(val, buf, 0xC0, 0);

    for (i = 0; i < 0xC0; i++) {
        s16 left = (s16)sub_02010A7C(0x80, -buf[i]);
        s16 right = (s16)sub_02010A7C(0x80, buf[i]);
        *(s16 *)((u8 *)slot + i * 2 + 0x300) = left;
        *(s16 *)((u8 *)slot + i * 2 + 0x480) = right;
    }
}

// ============================================================
// Rotation fade functions
// ============================================================

static void sub_02011D60(FadeData *data, const void *table) {
    void *work = Heap_Alloc((enum HeapID)data->heapID, 0x34);
    data->work = work;
    sub_02011DEC(work, table, data->field_04, data->field_08, data->field_10, (int)data->field_18, (int)data->field_1C, data->heapID, 0);
    data->state++;
}

static int sub_02011D98(FadeData *data) {
    int ret = 0;
    u8 *work = data->work;

    switch (data->state) {
    case 1:
        if (sub_02011EC0(work) == 1) {
            sub_02010F34(*(u32 *)(work + 0x24), *(void **)(work + 0x28), data->field_10);
            data->state++;
        }
        break;
    case 2:
        sub_02010EC8(work);
        Heap_Free(data->work);
        data->work = 0;
        ret = 1;
        data->state++;
        break;
    case 3:
        ret = 1;
        break;
    }
    return ret;
}

static void sub_02011DEC(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7, int a8) {
    u8 *w = work;
    const u8 *t = table;
    u16 startAngle = *(u16 *)t;
    u16 endAngle = *(u16 *)(t + 2);
    s32 delta;

    delta = _s32_div_f(endAngle - startAngle, duration);
    sub_02010E64(w, t[4], a4, a7);
    *(s32 *)(w + 0x0C) = 2 << 18;
    *(u32 *)(w + 0x10) = startAngle;
    *(s32 *)(w + 0x14) = delta;
    *(s32 *)(w + 0x18) = duration;
    *(s32 *)(w + 0x1C) = screen;
    *(s32 *)(w + 0x20) = 0;
    *(void **)(w + 0x28) = (void *)a5;
    *(u32 *)(w + 0x2C) = a6;
    *(u32 *)(w + 0x30) = a7;
    *(u32 *)(w + 0x24) = t[7];
    sub_02011F10(w);

    SysTask_CreateOnVWaitQueue(sub_02010F00, w, 0x3FF);

    {
        s16 *slot = sub_02010EE0(w, 0);
        sub_02010F84((void *)a5, t[5], t[6], t[4], a4, *(s16 *)((u8 *)slot + 0x3C0), 0, *(s16 *)((u8 *)slot + 0x540), 0xC0, *(u32 *)(w + 0x24));
    }

    if (t[4] == 0) {
        sub_02011068((void *)a5, 1, a4, *(u32 *)(w + 0x24));
    } else {
        sub_02011068((void *)a5, 2, a4, *(u32 *)(w + 0x24));
    }

    sub_0200FF88((void *)*(u32 *)(w + 0x2C), w, (int)sub_02010C38, a4, a7);
}

static int sub_02011EC0(void *work) {
    u8 *w = work;
    s32 tick = *(s32 *)(w + 0x20) + 1;
    *(s32 *)(w + 0x20) = tick;
    if (tick >= *(s32 *)(w + 0x1C)) {
        *(s32 *)(w + 0x20) = 0;
        s32 count = *(s32 *)(w + 0x18) - 1;
        if (count > 0) {
            *(s32 *)(w + 0x18) = count;
            *(u32 *)(w + 0x10) += *(s32 *)(w + 0x14);
            sub_02011F10(w);
            SysTask_CreateOnVWaitQueue(sub_02010F00, w, 0x3FF);
        } else {
            sub_0200FFB4((void *)*(u32 *)(w + 0x2C), (void *)*(u32 *)(w + 0x08), *(u32 *)(w + 0x30));
            return 1;
        }
    }
    return 0;
}

static void sub_02011F10(void *work) {
    u8 *w = work;
    s32 buf[0xC0 + 3];
    s16 *slot;
    s32 angle, tanAmpl, halfSlot;
    int numVisible;
    s32 start, end, frac, tmp;
    int i;

    slot = sub_02010EE0(w, 0);

    angle = *(u32 *)(w + 0x10);
    {
        s32 fixedRadius = *(s32 *)(w + 0x0C);
        int idx = (angle >> 4) * 2;
        s16 sv = FX_SinCosTable_[idx];
        s64 result = (s64)sv * fixedRadius;
        result = (result + (1 << 11)) >> 12;
        tanAmpl = (s32)(result >> 12);
    }

    halfSlot = _s32_div_f(tanAmpl * 2, 0x15);
    frac = (halfSlot + 1) * 2;
    end = 0xB4 - frac;
    start = 0xB4 + frac;
    frac = _s32_div_f(0xFFFF * (s32)end, start);
    tmp = frac;
    if (tmp < 0) {
        tmp = (tmp + 1) >> 1;
    } else {
        tmp = tmp >> 1;
    }
    numVisible = sub_02010A54(tmp, 0x100) >> 12;
    if (numVisible >= 0xC0) {
        GF_AssertFail();
    }
    sub_02010A00(tmp, buf, numVisible, 0);

    for (i = 0; i < 0x60; i++) {
        s32 peak = tanAmpl;
        s32 idx2 = numVisible - (i + 1);
        if (idx2 > 0) {
            if (buf[idx2] > tanAmpl) {
                peak = buf[idx2];
            }
        }
        s16 left = (s16)sub_02010A7C(0x80, -peak);
        s16 right = (s16)sub_02010A7C(0x80, peak);
        s16 left16 = (s16)(left << 16 >> 16);
        s16 right16 = (s16)(right << 16 >> 16);
        *(s16 *)((u8 *)slot + i * 2 + 0x300) = left16;
        *(s16 *)((u8 *)slot + i * 2 + 0x480) = right16;
        {
            int mirror = 0xBF - i;
            s16 *mslot = (s16 *)((u8 *)slot + mirror * 2);
            *(s16 *)((u8 *)mslot + 0x300) = left16;
            *(s16 *)((u8 *)mslot + 0x480) = right16;
        }
    }
}

// ============================================================
// Multi-band fade functions
// ============================================================

static void sub_02011FF8(FadeData *data, const void *table) {
    void *work = Heap_Alloc((enum HeapID)data->heapID, 0x30);
    data->work = work;
    sub_02012090(work, table, data->field_04, data->field_08, data->field_10, (int)data->field_18, (int)data->field_1C, data->heapID, 0);
    data->state++;
}

static int sub_02012030(FadeData *data) {
    int ret = 0;
    u8 *work = data->work;

    switch (data->state) {
    case 1:
        if (sub_020121A4(work) == 1) {
            sub_02010F34(*(u32 *)(work + 0x20), *(void **)(work + 0x24), data->field_10);
            data->state++;
        }
        break;
    case 2:
        sub_020121F4(work);
        sub_02010EC8(work);
        Heap_Free(data->work);
        data->work = 0;
        ret = 1;
        data->state++;
        break;
    case 3:
        ret = 1;
        break;
    default:
        GF_AssertFail();
        break;
    }
    return ret;
}

static void sub_02012090(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7, int a8) {
    u8 *w = work;
    const u8 *t = table;
    u16 numBands = *(u16 *)(t + 8);
    int i;

    {
        void *bands = Heap_Alloc((enum HeapID)a7, 0x30 * numBands);
        *(void **)(w + 0x0C) = bands;
        if (bands == 0) {
            GF_AssertFail();
        }
    }
    *(u32 *)(w + 0x10) = numBands;

    for (i = 0; i < numBands; i++) {
        u8 *bandWork = (u8 *)*(void **)(w + 0x0C) + i * 0x30;
        sub_02010AB0((s32 *)(bandWork + 0x20), (s32 *)bandWork, (s32 *)(bandWork + 0x10),
                     (const u8 *)(*(u32 *)(t + 0) + i * 4), (const u8 *)(*(u32 *)(t + 4) + i * 4), duration);
    }

    sub_02010E64(w, *(u16 *)(t + 0x0A), a4, a7);
    *(s32 *)(w + 0x14) = duration;
    *(s32 *)(w + 0x18) = screen;
    *(s32 *)(w + 0x1C) = 0;
    *(void **)(w + 0x24) = (void *)a5;
    *(u32 *)(w + 0x28) = a6;
    *(u32 *)(w + 0x2C) = a7;
    *(u32 *)(w + 0x20) = *(u16 *)(t + 0x0E);
    sub_02012204(w);

    SysTask_CreateOnVWaitQueue(sub_02010F00, w, 0x3FF);

    {
        s16 *slot = sub_02010EE0(w, 0);
        sub_02010F84((void *)a5, t[0x0C], t[0x0D], *(u16 *)(t + 0x0A), a4, *(s16 *)((u8 *)slot + 0x300), 0, *(s16 *)((u8 *)slot + 0x480), 0xC0, *(u32 *)(w + 0x20));
    }

    if (*(u16 *)(t + 0x0A) == 0) {
        sub_02011068((void *)*(u32 *)(w + 0x24), 1, a4, *(u32 *)(w + 0x20));
    } else {
        sub_02011068((void *)*(u32 *)(w + 0x24), 2, a4, *(u32 *)(w + 0x20));
    }

    sub_0200FF88((void *)*(u32 *)(w + 0x28), w, (int)sub_02010C38, a4, a7);
}

static int sub_020121A4(void *work) {
    u8 *w = work;
    s32 tick = *(s32 *)(w + 0x1C) + 1;
    *(s32 *)(w + 0x1C) = tick;
    if (tick >= *(s32 *)(w + 0x18)) {
        *(s32 *)(w + 0x1C) = 0;
        s32 count = *(s32 *)(w + 0x14) - 1;
        if (count > 0) {
            *(s32 *)(w + 0x14) = count;
            sub_02012290(w);
            sub_02012204(w);
            SysTask_CreateOnVWaitQueue(sub_02010F00, w, 0x3FF);
        } else {
            sub_0200FFB4((void *)*(u32 *)(w + 0x28), (void *)*(u32 *)(w + 0x08), *(u32 *)(w + 0x2C));
            return 1;
        }
    }
    return 0;
}

static void sub_020121F4(void *work) {
    u8 *w = work;
    Heap_Free(*(void **)(w + 0x0C));
    *(void **)(w + 0x0C) = 0;
}

static void sub_02012204(void *work) {
    u8 *w = work;
    s16 *slot;
    int i;

    slot = sub_02010EE0(w, 0);
    memset((u8 *)slot + 0x300, 0, 0x300);

    for (i = *(u32 *)(w + 0x10) - 1; i >= 0; i--) {
        sub_02012238(w, (u8 *)*(void **)(w + 0x0C) + i * 0x30);
    }
}

static void sub_02012238(void *work, void *entry) {
    s16 *slot;
    u8 *e = entry;
    s32 v0, v1, v2, v3;
    s32 startY, endY;

    slot = sub_02010EE0(work, 0);

    v0 = *(s32 *)e;
    v1 = *(s32 *)(e + 8);
    v2 = *(s32 *)(e + 0xC);
    v3 = *(s32 *)(e + 4);

    if (v0 < 0) {
        startY = (v0 + 127) >> 7;
    } else {
        startY = v0 >> 7;
    }
    if (v1 < 0) {
        endY = (v1 + 127) >> 7;
    } else {
        endY = v1 >> 7;
    }

    if (startY < endY) {
        s16 *p = (s16 *)((u8 *)slot + startY * 2);
        s16 left16 = (s16)(startY << 16 >> 16);
        s16 end16 = (s16)(v2 < 0 ? (v2 + 127) >> 7 : v2 >> 7);
        s16 v3_16 = (s16)(v3 < 0 ? (v3 + 127) >> 7 : v3 >> 7);
        (void)left16;
        (void)end16;
        (void)v3_16;

        // Simplified: just write values
        while (startY < endY) {
            *(s16 *)((u8 *)p + 0x300) = (s16)(v0 < 0 ? (v0 + 127) >> 7 : v0 >> 7);
            *(s16 *)((u8 *)p + 0x480) = (s16)(v1 < 0 ? (v1 + 127) >> 7 : v1 >> 7);
            startY++;
            p++;
        }
    }
}

static void sub_02012290(void *work) {
    u8 *w = work;
    int count = *(u32 *)(w + 0x10);
    int i;
    for (i = 0; i < count; i++) {
        u8 *entry = (u8 *)*(void **)(w + 0x0C) + i * 0x30;
        sub_02010A8C((s32 *)entry, (const s32 *)(entry + 0x10));
    }
}

// ============================================================
// Scan-line based symmetric fade
// ============================================================

static void sub_020122B8(FadeData *data, const void *table) {
    void *work = Heap_Alloc((enum HeapID)data->heapID, 0x38);
    data->work = work;
    memset(work, 0, 0x38);
    sub_02012358(work, table, data->field_04, data->field_08, data->field_10, (int)data->field_18, (int)data->field_1C, data->heapID, 0);
    data->state++;
}

static int sub_020122F8(FadeData *data) {
    int ret = 0;
    u8 *work = data->work;

    switch (data->state) {
    case 1:
        if (sub_02012454(work) == 1) {
            sub_02010F34(*(u32 *)(work + 0x28), *(void **)(work + 0x30), data->field_10);
            data->state++;
        }
        break;
    case 2:
        sub_020124AC(work);
        sub_02010EC8(work);
        Heap_Free(data->work);
        data->work = 0;
        ret = 1;
        data->state++;
        break;
    case 3:
        ret = 1;
        break;
    default:
        GF_AssertFail();
        break;
    }
    return ret;
}

static void sub_02012358(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7, int a8) {
    u8 *w = work;
    const u8 *t = table;

    *(s32 *)(w + 0x0C) = 0;
    *(u32 *)(w + 0x10) = *(u16 *)t;
    *(s32 *)(w + 0x14) = *(u16 *)(t + 2) - *(u16 *)t;
    sub_02010E64(w, 2, a4, a7);
    *(s32 *)(w + 0x18) = duration;
    *(s32 *)(w + 0x1C) = 0;
    *(s32 *)(w + 0x20) = screen;
    *(s32 *)(w + 0x24) = 0;
    *(void **)(w + 0x30) = (void *)a5;
    *(u32 *)(w + 0x34) = a6;
    *(u32 *)(w + 0x2C) = a7;
    *(u32 *)(w + 0x28) = *(u16 *)(t + 6);

    sub_020125D4(w + 0x0C, *(s32 *)(w + 0x1C), *(s32 *)(w + 0x18));
    sub_020124B0(w);

    SysTask_CreateOnVWaitQueue(sub_02010F00, w, 0x3FF);

    {
        s16 *slot0 = sub_02010EE0(w, 0);
        s16 *slot1 = sub_02010EE0(w, 1);

        sub_02010F84((void *)a5, t[4], t[5], 0, a4, *(s16 *)((u8 *)slot0 + 0x300), 0, *(s16 *)((u8 *)slot0 + 0x480), 0xC0, *(u32 *)(w + 0x28));
        sub_02010F84((void *)a5, t[4], t[5], 1, a4, *(s16 *)((u8 *)slot1 + 0x300), 0, *(s16 *)((u8 *)slot1 + 0x480), 0xC0, *(u32 *)(w + 0x28));
    }

    sub_02011068((void *)a5, 3, a4, *(u32 *)(w + 0x28));
    sub_0200FF88((void *)*(u32 *)(w + 0x34), w, (int)sub_02010C38, a4, a7);
}

static int sub_02012454(void *work) {
    u8 *w = work;
    s32 tick = *(s32 *)(w + 0x24) + 1;
    *(s32 *)(w + 0x24) = tick;
    if (tick >= *(s32 *)(w + 0x20)) {
        *(s32 *)(w + 0x24) = 0;
        s32 nextStep = *(s32 *)(w + 0x1C) + 1;
        if (nextStep <= *(s32 *)(w + 0x18)) {
            *(s32 *)(w + 0x1C) = nextStep;
            sub_020125D4(w + 0x0C, *(s32 *)(w + 0x18), *(s32 *)(w + 0x18));
            sub_020124B0(w);
            SysTask_CreateOnVWaitQueue(sub_02010F00, w, 0x3FF);
        } else {
            sub_0200FFB4((void *)*(u32 *)(w + 0x34), (void *)*(u32 *)(w + 0x08), *(u32 *)(w + 0x2C));
            return 1;
        }
    }
    return 0;
}

static void sub_020124AC(void *work) {
    (void)work;
}

static void sub_020124B0(void *work) {
    u8 *w = work;
    s16 *slot0, *slot1;
    int i;
    u16 rem;
    u16 complement;

    rem = (u16)_s32_div_f(*(s32 *)(w + 0x0C), 0x3FFF);
    slot0 = sub_02010EE0(w, 0);
    slot1 = sub_02010EE0(w, 1);

    for (i = 0; i < 0x60; i++) {
        if (*(s32 *)(w + 0x0C) < 0x3FFF) {
            s32 val = sub_020109D8(rem, 0x60 - i);
            if (val > 0x7F) val = 0x7F;
            {
                int mirrorIdx = 0xBF - i;
                s16 *mslot = (s16 *)((u8 *)slot0 + mirrorIdx * 2);
                s16 left = (s16)(0x80 - val);
                *(s16 *)((u8 *)mslot + 0x300) = left;
                *(s16 *)((u8 *)mslot + 0x480) = 0x80;
                *(s16 *)((u8 *)slot1 + i * 2 + 0x300) = 0x80;
                *(s16 *)((u8 *)slot1 + i * 2 + 0x480) = (s16)(val + 0x80);
            }
        } else {
            int mirrorIdx = 0xBF - i;
            s16 *mslot = (s16 *)((u8 *)slot0 + mirrorIdx * 2);
            *(s16 *)((u8 *)mslot + 0x300) = 0;
            *(s16 *)((u8 *)mslot + 0x480) = 0x80;
            *(s16 *)((u8 *)slot1 + i * 2 + 0x300) = 0x80;
            *(s16 *)((u8 *)slot1 + i * 2 + 0x480) = 0xFF;
        }
    }

    complement = 0x3FFF - rem;
    slot1 = (s16 *)((u8 *)slot1 + 0xC0);
    for (i = 0x60; i < 0xC0; i++) {
        if (*(s32 *)(w + 0x0C) < 0x3FFF) {
            int mirrorIdx = 0xBF - i;
            s16 *mslot = (s16 *)((u8 *)slot0 + mirrorIdx * 2);
            *(s16 *)((u8 *)mslot + 0x300) = 0x80;
            *(s16 *)((u8 *)mslot + 0x480) = 0x80;
            *(s16 *)((u8 *)slot1 + 0x300) = 0x80;
            *(s16 *)((u8 *)slot1 + 0x480) = 0x80;
        } else {
            s32 val = sub_020109D8(complement, i - 0x60);
            if (val > 0x7F) val = 0x7F;
            {
                int mirrorIdx = 0xBF - i;
                s16 *mslot = (s16 *)((u8 *)slot0 + mirrorIdx * 2);
                *(s16 *)((u8 *)mslot + 0x300) = 0;
                *(s16 *)((u8 *)mslot + 0x480) = (s16)(0x80 - val);
                *(s16 *)((u8 *)slot1 + 0x300) = (s16)(val + 0x80);
                *(s16 *)((u8 *)slot1 + 0x480) = 0xFF;
            }
        }
        slot1 = (s16 *)((u8 *)slot1 + 2);
    }
}

static void sub_020125D4(void *a0, int a1, int a2) {
    s32 *p = a0;
    s32 val = p[2] * a1;
    p[0] = _s32_div_f(val, a2) + p[1];
}

// ============================================================
// Dual-screen symmetric fade
// ============================================================

static void sub_020125EC(FadeData *data, const void *table) {
    void *work = Heap_Alloc((enum HeapID)data->heapID, 0x38);
    data->work = work;
    memset(work, 0, 0x38);
    sub_0201268C(work, table, data->field_04, data->field_08, data->field_10, (int)data->field_18, (int)data->field_1C, data->heapID, 0);
    data->state++;
}

static int sub_0201262C(FadeData *data) {
    int ret = 0;
    u8 *work = data->work;

    switch (data->state) {
    case 1:
        if (sub_0201275C(work) == 1) {
            sub_02010F34(*(u32 *)(work + 0x28), *(void **)(work + 0x30), data->field_10);
            data->state++;
        }
        break;
    case 2:
        sub_020127B4(work);
        sub_02010EC8(work);
        Heap_Free(data->work);
        data->work = 0;
        ret = 1;
        data->state++;
        break;
    case 3:
        ret = 1;
        break;
    default:
        GF_AssertFail();
        break;
    }
    return ret;
}

static void sub_0201268C(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7, int a8) {
    u8 *w = work;
    const u8 *t = table;

    *(u32 *)(w + 0x0C) = *(u16 *)t;
    *(u32 *)(w + 0x10) = *(u16 *)t;
    *(s32 *)(w + 0x14) = *(u16 *)(t + 2) - *(u16 *)t;
    sub_02010E64(w, 2, a4, a7);
    *(s32 *)(w + 0x18) = duration;
    *(s32 *)(w + 0x1C) = 0;
    *(s32 *)(w + 0x20) = screen;
    *(s32 *)(w + 0x24) = 0;
    *(void **)(w + 0x30) = (void *)a5;
    *(u32 *)(w + 0x34) = a6;
    *(u32 *)(w + 0x2C) = a7;
    *(u32 *)(w + 0x28) = *(u16 *)(t + 6);

    sub_020127B8(w);

    SysTask_CreateOnVWaitQueue(sub_02010F00, w, 0x3FF);

    sub_02010EE0(w, 0);
    sub_02010EE0(w, 1);

    sub_02010F84((void *)a5, t[4], t[5], 0, a4, 0, 0, 0xFF, 0xC0, *(u32 *)(w + 0x28));
    sub_02010F84((void *)a5, t[4], t[5], 1, a4, 0, 0, 0xFF, 0xC0, *(u32 *)(w + 0x28));

    sub_02011068((void *)a5, 3, a4, *(u32 *)(w + 0x28));
    sub_0200FF88((void *)*(u32 *)(w + 0x34), w, (int)sub_02010C38, a4, a7);
}

static int sub_0201275C(void *work) {
    u8 *w = work;
    s32 tick = *(s32 *)(w + 0x24) + 1;
    *(s32 *)(w + 0x24) = tick;
    if (tick >= *(s32 *)(w + 0x20)) {
        *(s32 *)(w + 0x24) = 0;
        s32 nextStep = *(s32 *)(w + 0x1C) + 1;
        if (nextStep <= *(s32 *)(w + 0x18)) {
            *(s32 *)(w + 0x1C) = nextStep;
            sub_02012884(w + 0x0C, *(s32 *)(w + 0x18), *(s32 *)(w + 0x18));
            sub_020127B8(w);
            SysTask_CreateOnVWaitQueue(sub_02010F00, w, 0x3FF);
        } else {
            sub_0200FFB4((void *)*(u32 *)(w + 0x34), (void *)*(u32 *)(w + 0x08), *(u32 *)(w + 0x2C));
            return 1;
        }
    }
    return 0;
}

static void sub_020127B4(void *work) {
    (void)work;
}

static void sub_020127B8(void *work) {
    u8 *w = work;
    s16 *slot0, *slot1;
    u16 angle;
    u16 complement;
    int i;

    angle = (u16)*(s32 *)(w + 0x0C);
    slot0 = sub_02010EE0(w, 0);
    slot1 = sub_02010EE0(w, 1);
    complement = 0x3FFF - angle;

    for (i = 0; i < 0x60; i++) {
        s32 val0 = sub_020109D8(angle, 0x60 - i);
        s32 val1 = sub_020109D8(complement, 0x60 - i);
        if (val0 > 0x7F) val0 = 0x7F;
        if (val1 > 0x7F) val1 = 0x7F;

        {
            s16 left0 = (s16)((0x80 - val1) << 16 >> 16);
            s16 right0 = (s16)((0x80 - val0) << 16 >> 16);
            int mirrorIdx = 0xBF - i;

            *(s16 *)((u8 *)slot0 + i * 2 + 0x300) = left0;
            *(s16 *)((u8 *)slot0 + i * 2 + 0x480) = right0;

            {
                s16 *mslot = (s16 *)((u8 *)slot0 + mirrorIdx * 2);
                *(s16 *)((u8 *)mslot + 0x300) = left0;
                *(s16 *)((u8 *)mslot + 0x480) = right0;
            }

            s16 left1 = (s16)((val0 + 0x80) << 16 >> 16);
            s16 right1 = (s16)((val1 + 0x80) << 16 >> 16);

            *(s16 *)((u8 *)slot1 + i * 2 + 0x300) = left1;
            *(s16 *)((u8 *)slot1 + i * 2 + 0x480) = right1;

            {
                s16 *mslot = (s16 *)((u8 *)slot1 + mirrorIdx * 2);
                *(s16 *)((u8 *)mslot + 0x300) = left1;
                *(s16 *)((u8 *)mslot + 0x480) = right1;
            }
        }
    }
}

static void sub_02012884(void *a0, int a1, int a2) {
    s32 *p = a0;
    s32 val = p[2] * a1;
    p[0] = _s32_div_f(val, a2) + p[1];
}

// ============================================================
// Scan-line pattern fade
// ============================================================

static void sub_0201289C(FadeData *data, const void *table) {
    void *work;
    work = Heap_Alloc((enum HeapID)data->heapID, 0xCD * 4);
    data->work = work;
    memset(work, 0, 0xCD * 4);
    sub_02012940(work, table, data->field_04, data->field_08, data->field_10, (int)data->field_18, (int)data->field_1C, data->heapID);
    data->state++;
}

static int sub_020128E0(FadeData *data) {
    int ret = 0;
    u8 *work = data->work;

    switch (data->state) {
    case 1:
        if (sub_02012A2C(work) == 1) {
            sub_02010F34(*(u32 *)(work + 0xC9 * 4), *(void **)(work + 0xCA * 4 + 8), data->field_10);
            data->state++;
        }
        break;
    case 2:
        sub_02012A8C(work);
        Heap_Free(data->work);
        data->work = 0;
        ret = 1;
        data->state++;
        break;
    case 3:
        ret = 1;
        break;
    default:
        GF_AssertFail();
        break;
    }
    return ret;
}

static void sub_02012940(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7) {
    u8 *w = work;
    const u8 *t = table;

    sub_02011080(w, 0, a5, 1, 0);

    if (*(u16 *)(t + 6) == 0) {
        memset(w, 1, 0xC0);
        memset(w + 0xC0, 1, 0xC0);
    } else {
        memset(w, 0, 0xC0);
        memset(w + 0xC0, 0, 0xC0);
    }

    *(u32 *)(w + 0xC3 * 4) = *(u32 *)t;
    *(u32 *)(w + 0xC3 * 4 + 4) = *(u16 *)(t + 4);
    *(u32 *)(w + 0xC3 * 4 + 0x18) = *(u16 *)(t + 6);
    *(u32 *)(w + 0xC3 * 4 + 0x1C) = a7;
    *(u32 *)(w + 0xC3 * 4 + 0x08) = duration;
    *(u32 *)(w + 0xC3 * 4 + 0x0C) = 0;
    *(u32 *)(w + 0xC3 * 4 + 0x10) = screen;
    *(u32 *)(w + 0xC3 * 4 + 0x14) = 0;
    *(u32 *)(w + 0xC3 * 4 + 0x20) = a6;
    *(u32 *)(w + 0xC3 * 4 + 0x24) = a4;

    sub_020110DC((void *)a6, w, a7, 0);

    if (*(u16 *)(t + 6) == 1) {
        sub_02010F84((void *)a6, 0x20, 0x3f, 0, a5, 0, 0, 0, 0, *(u16 *)(t + 6));
    } else {
        sub_02010F84((void *)a6, 0x3f, 0x20, 0, a5, 0, 0, 0, 0, *(u16 *)(t + 6));
    }

    sub_02011068((void *)a6, 1, a5, *(u32 *)(w + 0xC9 * 4));
}

static int sub_02012A2C(void *work) {
    u8 *w = work;
    u32 off_320 = 0x320;
    s32 tick = *(s32 *)(w + off_320) + 1;
    *(s32 *)(w + off_320) = tick;
    s32 dur = *(s32 *)(w + off_320 - 4);
    if (tick >= dur) {
        *(s32 *)(w + off_320) = 0;
        s32 step = *(s32 *)(w + off_320 - 8) + 1;
        s32 total = *(s32 *)(w + off_320 - 0x0C);
        if (step <= total) {
            *(s32 *)(w + off_320 - 8) = step;
            sub_02012A90(w);
            sub_020110C4(w);
        } else {
            sub_020110F4((void *)*(u32 *)(w + off_320 + 0x10), w, *(u32 *)(w + off_320 + 8));
            return 1;
        }
    }
    return 0;
}

static void sub_02012A8C(void *work) {
    (void)work;
}

static void sub_02012A90(void *work) {
    u8 *w = work;
    int count = *(u32 *)(w + 0x310);
    int i;
    for (i = 0; i < count; i++) {
        const u8 *param = (const u8 *)*(u32 *)(w + 0x30C) + i * 4;
        sub_02012ACC(param, w, *(u32 *)(w + 0x318), *(u32 *)(w + 0x314));
    }
}

static void sub_02012ACC(const void *param, void *scanBuf, int progress, int total) {
    const u8 *p = param;
    u8 startVal = p[0];
    u8 endVal = p[1];
    u8 *buf = scanBuf;
    int current;
    u8 fillVal;
    int lo, hi;

    current = _s32_div_f((int)(endVal - startVal) * progress, total) + startVal;

    if (startVal <= endVal) {
        lo = startVal;
        hi = endVal;
        fillVal = *(u16 *)(p + 2);
    } else {
        lo = endVal;
        hi = startVal;
        if (*(u16 *)(p + 2) == 0) {
            fillVal = 1;
        } else {
            fillVal = 0;
        }
    }

    if (lo < hi) {
        int j;
        for (j = lo; j < hi; j++) {
            if (j == current) {
                if (fillVal != 0) {
                    fillVal = 1;
                } else {
                    fillVal = 0;
                }
            }
            buf[j] = fillVal;
        }
    }
}

// ============================================================
// Two-pass scan-line pattern fade
// ============================================================

static void sub_02012B1C(FadeData *data, const void *table) {
    void *work;
    const u8 *t = table;

    work = Heap_Alloc((enum HeapID)data->heapID, 0xE2 * 4);
    data->work = work;
    memset(work, 0, 0xE2 * 4);

    if (t[0xB] == 0) {
        sub_02012BE8(work, t, data->field_04, data->field_08, data->field_10, (int)data->field_18, (int)data->field_1C, data->heapID);
    } else {
        sub_02012CDC(work, t, data->field_04, data->field_08, data->field_10, (int)data->field_18, (int)data->field_1C, data->heapID);
    }
    data->state++;
}

static int sub_02012B80(FadeData *data) {
    int ret = 0;
    u8 *work = data->work;

    switch (data->state) {
    case 1:
        if (*(u8 *)(work + 0x386) == 0) {
            if (sub_02012C68(work, data) == 1) {
                sub_02010F34(data->field_28, data->field_18, data->field_10);
                data->state++;
            }
        } else {
            if (sub_02012D4C(work, data) == 1) {
                sub_02010F34(data->field_28, data->field_18, data->field_10);
                data->state++;
            }
        }
        break;
    case 2:
        Heap_Free(work);
        data->work = 0;
        ret = 1;
        data->state++;
        break;
    case 3:
        ret = 1;
        break;
    default:
        GF_AssertFail();
        break;
    }
    return ret;
}

static void sub_02012BE8(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7) {
    u8 *w = work;
    const u8 *t = table;
    s32 offset;

    {
        s64 result = (s64)(duration << 12) * (s32)*(u32 *)(t + 0x14);
        result = (result + (1 << 11)) >> 12;
        offset = (s32)(result >> 12);
    }
    w[0x384] = (u8)(duration - offset);
    *(const u8 **)(w + 0x380) = t;
    w[0x386] = t[0xB];

    sub_020117A0(w, t + 0x0C, w[0x384], screen, a4, a5);

    if (t[8] == 0) {
        sub_02011068((void *)a5, 1, a4, t[0xB]);
    } else {
        sub_02011068((void *)a5, 2, a4, t[0xB]);
    }
    w[0x385] = 0;
}

static int sub_02012C68(void *work, FadeData *data) {
    u8 *w = work;
    int ret = 0;
    const u8 *t;

    switch (w[0x385]) {
    case 0:
        if (sub_020117FC(w) == 1) {
            w[0x385]++;
            t = *(const u8 **)(w + 0x380);
            sub_02012940(w + 0x4C, t + 0x0C, w[0x384], data->field_08, data->field_10, (int)data->field_18, (int)data->field_1C, (int)data->heapID);
        }
        break;
    case 1:
        if (sub_02012A2C(w + 0x4C) == 1) {
            ret = 1;
            w[0x385]++;
        }
        break;
    case 2:
        ret = 1;
        break;
    }
    (void)ret;
}

static void sub_02012CDC(void *work, const void *table, int duration, int screen, int a4, int a5, int a6, int a7) {
    u8 *w = work;
    const u8 *t = table;
    s32 offset;

    {
        s64 result = (s64)(duration << 12) * (s32)*(u32 *)(t + 0x14);
        result = (result + (1 << 11)) >> 12;
        offset = (s32)(result >> 12);
    }
    w[0x384] = (u8)offset;
    *(const u8 **)(w + 0x380) = t;
    w[0x386] = t[0xB];

    sub_02012940(w + 0x4C, t + 0x0C, w[0x384], screen, a4, a5, a6, a7);
    w[0x385] = 0;
}

static int sub_02012D4C(void *work, FadeData *data) {
    u8 *w = work;
    int ret = 0;
    const u8 *t;

    switch (w[0x385]) {
    case 0:
        if (sub_02012A2C(w + 0x4C) == 1) {
            w[0x385]++;
            t = *(const u8 **)(w + 0x380);
            sub_020117A0(w, t + 0x0C, w[0x384], data->field_08, data->field_10, (int)data->field_18);

            {
                u8 *paramPtr = (u8 *)*(u32 *)(w + 0x380);
                if (paramPtr[8] == 0) {
                    sub_02011068((void *)(int)data->field_18, 1, data->field_10, paramPtr[0xB]);
                } else {
                    sub_02011068((void *)(int)data->field_18, 2, data->field_10, paramPtr[0xB]);
                }
            }
        }
        break;
    case 1:
        if (sub_020117FC(w) == 1) {
            ret = 1;
            w[0x385]++;
        }
        break;
    case 2:
        ret = 1;
        break;
    }
    return ret;
}
