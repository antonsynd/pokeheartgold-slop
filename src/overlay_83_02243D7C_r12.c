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
typedef int code();
typedef void *pointer;
typedef unsigned short wchar16;
undefined4 sub_0200CE7C(void *, unsigned char, unsigned int, unsigned int, int, void *, unsigned int, unsigned int);
undefined4 GetMonData(void *, int, void *);
undefined4 ov80_02237D8C();
undefined4 ScheduleWindowCopyToVram(void *);
undefined4 ov80_02237B58();
undefined4 Party_GetMonByIndex(void *, int);
undefined4 ov83_02244BA8();
undefined4 FillWindowPixelBuffer(void *, unsigned char);
void ov83_022449D4(int param_1, undefined4 param_2);
inline undefined4 inline_fn(undefined4 arg0, int arg1) {
    return GetMonData(arg0, arg1, 0);
}
#pragma force_active on
void ov83_022449D4(int param_1, undefined4 param_2) {
    undefined1 uVar1;
    int iVar2;
    int iVar3;
    undefined4 uVar4;
    undefined4 uVar5;
    int iVar6;
    int iVar7;
    FillWindowPixelBuffer(param_2, 0);
    iVar2 = ov80_02237D8C(*((undefined1 *)(param_1 + 9)));
    if (0 == iVar2) {
        iVar2 = 0x28;
        iVar6 = 0x50;
    } else {
        iVar2 = 8;
        iVar6 = 0x30;
    }
    iVar3 = ov80_02237B58(*((undefined1 *)(param_1 + 9)), 1);
    iVar7 = 0;
    if (0 < iVar3) {
        do {
            uVar4 = Party_GetMonByIndex(*((undefined4 *)(param_1 + 0x55c)), iVar7);
            uVar5 = GetMonData(uVar4, 0xa1, 0);
            sub_0200CE7C(*((undefined4 *)(param_1 + 0x2b4)), 1, uVar5, 3, 0, param_2, iVar2, 1);
            uVar1 = inline_fn(uVar4, 0x6f);
            ov83_02244BA8(param_1, param_2, iVar6, 1, 0, uVar1);
            iVar7 = iVar7 + 1;
            iVar2 = iVar2 + 0x40;
            iVar6 = iVar6 + 0x40;
        } while (iVar7 < iVar3);
    }
    ScheduleWindowCopyToVram(param_2);
    return;
}
#pragma force_active reset
