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
undefined4 PCStorage_GetBoxWallpaper();
uint ov14_021E7930(int param_1, undefined4 param_2);
#pragma force_active on
uint ov14_021E7930(int param_1, undefined4 param_2) {
    uint uVar1;
    uVar1 = PCStorage_GetBoxWallpaper(*((undefined4 *)(param_1 + 4)));
    if ((0xf + 1) <= uVar1) {
        uVar1 = uVar1 - 0x10;
    }
    return uVar1;
}
#pragma force_active reset
