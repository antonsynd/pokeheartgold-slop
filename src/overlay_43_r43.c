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
undefined4 SetBlendBrightness(int, int, unsigned int);
undefined4 YesNoPrompt_IsInTouchMode();
undefined4 YesNoPrompt_Reset(void *);
undefined4 YesNoPrompt_HandleInput(void *);
int ov43_0222AE2C(undefined4 *param_1, int param_2);
#pragma force_active on
int ov43_0222AE2C(undefined4 *param_1, int param_2) {
    int iVar1;
    undefined4 uVar2;
    iVar1 = YesNoPrompt_HandleInput(*((undefined4 *)(param_2 + 0x60)));
    if ((iVar1 - 1U) <= (2 - 1)) {
        uVar2 = YesNoPrompt_IsInTouchMode(*((undefined4 *)(param_2 + 0x60)));
        *param_1 = uVar2;
        YesNoPrompt_Reset(*((undefined4 *)(param_2 + 0x60)));
        SetBlendBrightness(0, 0x3d, 1);
    }
    return iVar1;
}
#pragma force_active reset
