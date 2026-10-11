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
undefined4 ov14_021F6B28();
undefined4 GridInputHandler_GetNextInput();
undefined4 ov14_021E8544();
undefined4 GridInputHandler_SetNextInput();
undefined4 GridInputHandler_HandleInput_AllowHold();
int ov14_021F74B0(int param_1);
#pragma force_active on
int ov14_021F74B0(int param_1) {
    undefined4 uVar1;
    int iVar2;
    int iVar3;
    uVar1 = GridInputHandler_GetNextInput(*((undefined4 *)((*((int *)(param_1 + 0x34))) + 0x2c)));
    iVar2 = GridInputHandler_HandleInput_AllowHold(*((undefined4 *)((*((int *)(param_1 + 0x34))) + 0x2c)));
    iVar3 = ov14_021E8544(*((undefined4 *)((*((int *)(param_1 + 0x34))) + 0x2f0)));
    if (iVar3 == 0) {
        if (iVar2 == 0x24) {
            GridInputHandler_SetNextInput(*((undefined4 *)((*((int *)(param_1 + 0x34))) + 0x2c)), uVar1);
            ov14_021F6B28(param_1, uVar1);
            return -1;
        }
    } else {
        if ((iVar2 - 0x21U) <= (2 - 1)) {
            GridInputHandler_SetNextInput(*((undefined4 *)((*((int *)(param_1 + 0x34))) + 0x2c)), uVar1);
            ov14_021F6B28(param_1, uVar1);
            return -1;
        }
        if ((iVar2 == 0x23) || (iVar2 == (-2))) {
            return 0x25;
        }
    }
    return iVar2;
}
#pragma force_active reset
