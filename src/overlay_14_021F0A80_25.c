#pragma warning_errors off
#pragma thumb on
typedef unsigned char undefined;
typedef unsigned char undefined1;
typedef unsigned short undefined2;
typedef unsigned int undefined3;
typedef unsigned int undefined4;
typedef unsigned long long undefined8;
typedef unsigned char byte;
typedef signed char sbyte;
typedef unsigned short ushort;
typedef unsigned short word;
typedef unsigned int uint;
typedef unsigned int dword;
typedef unsigned int ulong;
typedef unsigned long long ulonglong;
typedef unsigned long long qword;
typedef long long longlong;
typedef unsigned char bool;
typedef void code(void);
typedef void *pointer;
typedef unsigned short wchar16;
undefined4 PCStorage_IsBonusWallpaperUnlocked();
undefined4 ov14_021F2270();
undefined4 ov14_021E7930();
undefined4 PlaySE(unsigned short);
void ov14_021F131C(int param_1);
#pragma force_active on
void ov14_021F131C(int param_1) {
    int iVar1;
    uint uVar2;
    uVar2 = (uint)(*((byte *)((*((int *)(param_1 + 0x34))) + 0x44d)));
    if (((0xf + 1) <= uVar2) && (iVar1 = PCStorage_IsBonusWallpaperUnlocked(*((undefined4 *)(param_1 + 4)), uVar2 - 0x10), iVar1 == 0)) {
        PlaySE(0x5f3);
        ov14_021F2270(param_1, 0xc, 0x42);
        return;
    }
    uVar2 = ov14_021E7930(param_1, *((undefined1 *)(param_1 + 0x25)));
    if ((*((byte *)((*((int *)(param_1 + 0x34))) + 0x44d))) == uVar2) {
        PlaySE(0x5f3);
        ov14_021F2270(param_1, 0xc, 0x42);
        return;
    }
    if ((*((unsigned char *)(param_1 + 0x25))) != (*((unsigned char *)(param_1 + 0x1f)))) {
        PlaySE(0x5dc);
        ov14_021F2270(param_1, 0xc, 0xa5);
        return;
    }
    PlaySE(0x5dd);
    ov14_021F2270(param_1, 0xc, 0x47);
    return;
}
#pragma force_active reset
