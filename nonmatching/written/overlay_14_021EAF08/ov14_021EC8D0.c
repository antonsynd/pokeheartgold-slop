typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x8];
    s32 unk8;
    u8 pad_c[0x20];
    void *unk2C;
    u8 pad30[0x2c0];
    void *unk2F0;
    u8 pad2F4[0x3dc4];
    s32 unk40B8;
    s32 unk40BC;
} UnkStruct_ov14_021EC8D0_34;

typedef struct {
    u8 pad0[0x21];
    u8 unk21;
    u8 pad22[0x3];
    u8 unk25;
    u8 unk26;
    u8 pad27[0xd];
    UnkStruct_ov14_021EC8D0_34 *unk34;
} UnkStruct_ov14_021EC8D0;

s32 ov14_021F6A34(void);
s32 ov14_021F6A14(void);
BOOL ov14_021E6070(UnkStruct_ov14_021EC8D0 *a0, u32 a1, u32 a2, u32 a3);
void PlaySE(u32 a0);
void System_GetTouchNewCoords(void *a0, void *a1);
BOOL ov14_021E7588(UnkStruct_ov14_021EC8D0 *a0, u32 a1);
void ov14_021F2A18(UnkStruct_ov14_021EC8D0_34 *a0, u32 a1, u32 a2);
s32 ov14_021F083C(UnkStruct_ov14_021EC8D0 *a0, u32 a1);
void ov14_021E765C(UnkStruct_ov14_021EC8D0 *a0);
void GridInputHandler_SetNextInput(void *a0, u8 a1);
void GridInputHandler_SetButtonInputMode(void *a0, u32 a1);
s32 GridInputHandler_GetNextInput(void *a0);
BOOL ov14_021E85E4(void *a0);
BOOL ov14_021E8648(void *a0);
s32 ov14_021F0EE8(UnkStruct_ov14_021EC8D0 *a0, u32 a1);
s32 ov14_021F0D34(UnkStruct_ov14_021EC8D0 *a0, u32 a1);
BOOL ov14_021F7B7C(UnkStruct_ov14_021EC8D0 *a0);
s32 ov14_021F2330(UnkStruct_ov14_021EC8D0 *a0, u32 a1, u32 a2);
u32 ov14_021F70C0(UnkStruct_ov14_021EC8D0 *a0);
void ov14_021F6408(UnkStruct_ov14_021EC8D0 *a0, u32 a1);
void ov14_021E8620(void *a0);
void ov14_021E8634(void *a0);
s32 ov14_021F0244(UnkStruct_ov14_021EC8D0 *a0, u32 a1);
void ov14_021F29E4(UnkStruct_ov14_021EC8D0_34 *a0, u32 a1, u32 a2);
s32 ov14_021F2490(UnkStruct_ov14_021EC8D0 *a0, u32 a1, u32 a2);
void ov14_021E76B8(UnkStruct_ov14_021EC8D0 *a0);
s32 ov14_021F0D58(UnkStruct_ov14_021EC8D0 *a0, u32 a1);
void ov14_021F1004(UnkStruct_ov14_021EC8D0 *a0, s32 a1);
s32 ov14_021F2270(UnkStruct_ov14_021EC8D0 *a0, u32 a1, u32 a2);
s32 ov14_021F1580(UnkStruct_ov14_021EC8D0 *a0, u32 a1);

static s32 Finish(UnkStruct_ov14_021EC8D0 *a0)
{
    if (ov14_021E85E4(a0->unk34->unk2F0) == 1) {
        return ov14_021F0EE8(a0, 0x29);
    }
    if (ov14_021E8648(a0->unk34->unk2F0) == 1) {
        return ov14_021F0D34(a0, 0x29);
    }
    return 0x29;
}

s32 ov14_021EC8D0(UnkStruct_ov14_021EC8D0 *a0)
{
    s32 idx;
    u32 sel;
    s32 next;

    idx = ov14_021F6A34();
    if (idx != -1) {
        if (ov14_021E6070(a0, idx + 0x1e, 0xac, 0)) {
            PlaySE(0x5eb);
            System_GetTouchNewCoords(&a0->unk34->unk40B8, &a0->unk34->unk40BC);
            ov14_021E7588(a0, idx + 0x1e);
            ov14_021F2A18(a0->unk34, 9, 0);
            return ov14_021F083C(a0, idx + 0x1e);
        }
        ov14_021E765C(a0);
        GridInputHandler_SetNextInput(a0->unk34->unk2C, idx + 0x1e);
        GridInputHandler_SetButtonInputMode(a0->unk34->unk2C, 1);
        return Finish(a0);
    }
    idx = ov14_021F6A14();
    if (idx != -1) {
        if (ov14_021E6070(a0, idx, 0xac, 0)) {
            PlaySE(0x5eb);
            System_GetTouchNewCoords(&a0->unk34->unk40B8, &a0->unk34->unk40BC);
            ov14_021E7588(a0, idx);
            ov14_021F2A18(a0->unk34, 9, 0);
            return ov14_021F083C(a0, idx);
        }
        ov14_021E765C(a0);
        GridInputHandler_SetNextInput(a0->unk34->unk2C, idx);
        GridInputHandler_SetButtonInputMode(a0->unk34->unk2C, 1);
        return Finish(a0);
    }
    if (ov14_021F7B7C(a0) == 1) {
        next = GridInputHandler_GetNextInput(a0->unk34->unk2C);
        if (ov14_021E6070(a0, next, 0xac, 0)) {
            PlaySE(0x5dd);
            a0->unk21 = next;
            a0->unk26 = 1;
            return ov14_021F2330(a0, 0xf, 0x97);
        }
        return 0x29;
    }
    sel = ov14_021F70C0(a0);
    if (sel == 0xfffffffd) {
        next = GridInputHandler_GetNextInput(a0->unk34->unk2C);
        if ((u32)next < 0x25) {
            if (ov14_021E7588(a0, next) == 1) {
                if (ov14_021E8648(a0->unk34->unk2F0) == 0) {
                    ov14_021F6408(a0, 0);
                    ov14_021E8620(a0->unk34->unk2F0);
                }
            } else {
                if (ov14_021E8648(a0->unk34->unk2F0) == 1) {
                    ov14_021E8634(a0->unk34->unk2F0);
                }
            }
        } else {
            ov14_021E765C(a0);
            if (ov14_021E8648(a0->unk34->unk2F0) == 1) {
                ov14_021E8634(a0->unk34->unk2F0);
            }
        }
        PlaySE(0x5dc);
        if (a0->unk34->unk8 == 0) {
            return 0x29;
        }
        return ov14_021F0244(a0, 0x4b);
    }
    if (sel == 0xfffffffe) {
        if (ov14_021E85E4(a0->unk34->unk2F0) == 0) {
            PlaySE(0x633);
            return ov14_021F2490(a0, 1, 0xa1);
        }
        PlaySE(0x5dc);
        GridInputHandler_SetNextInput(a0->unk34->unk2C, (s32)a0->unk25 % 6 + 0x25);
        GridInputHandler_SetButtonInputMode(a0->unk34->unk2C, 1);
        return ov14_021F0EE8(a0, 0x29);
    }
    if (sel == 0xffffffff || sel == 0xfffffffc) {
        return 0x29;
    }
    if (sel <= 0x2d && sel >= 0x24) {
        switch (sel) {
        case 0x24:
            PlaySE(0x633);
            ov14_021F29E4(a0->unk34, 9, 8);
            return ov14_021F2490(a0, 1, 0xa1);
        case 0x25:
        case 0x26:
        case 0x27:
        case 0x28:
        case 0x29:
        case 0x2a:
            PlaySE(0x5dd);
            ov14_021E76B8(a0);
            return ov14_021F0D58(a0, sel - 0x25);
        case 0x2b:
            PlaySE(0x5dc);
            ov14_021E76B8(a0);
            ov14_021F1004(a0, -1);
            GridInputHandler_SetNextInput(a0->unk34->unk2C, (s32)a0->unk25 % 6 + 0x25);
            GridInputHandler_SetButtonInputMode(a0->unk34->unk2C, 1);
            return Finish(a0);
        case 0x2c:
            PlaySE(0x5dc);
            ov14_021E76B8(a0);
            ov14_021F1004(a0, 1);
            GridInputHandler_SetNextInput(a0->unk34->unk2C, (s32)a0->unk25 % 6 + 0x25);
            GridInputHandler_SetButtonInputMode(a0->unk34->unk2C, 1);
            return Finish(a0);
        case 0x2d:
            PlaySE(0x5dc);
            GridInputHandler_SetNextInput(a0->unk34->unk2C, (s32)a0->unk25 % 6 + 0x25);
            return ov14_021F2270(a0, 0xe, 0xa0);
        }
    }
    if (!ov14_021E6070(a0, sel, 0xac, 0)) {
        return 0x29;
    }
    PlaySE(0x5eb);
    ov14_021E7588(a0, sel);
    return ov14_021F1580(a0, sel);
}
