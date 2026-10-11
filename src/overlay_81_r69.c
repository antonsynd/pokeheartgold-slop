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
long ov81_02242D88();
undefined4 GridInputHandler_GetNextInput();
undefined4 ScheduleWindowCopyToVram(void *);
undefined4 ov81_02243140();
void ov81_02241A38(int param_1);
#pragma force_active on
void ov81_02241A38(int param_1) {
    int new_var;
    uint uVar1;
    uVar1 = GridInputHandler_GetNextInput(*((undefined4 *)(param_1 + 0x464)));
    ov81_02243140(*((undefined4 *)(param_1 + 0x4c)), *((undefined4 *)(param_1 + 0x3dc)), 2);
    new_var = param_1 + 0xe0;
    ScheduleWindowCopyToVram(new_var);
    ScheduleWindowCopyToVram(param_1 + 0xf0);
    if ((3 + 1) <= uVar1) {
        uVar1 = *((undefined4 *)(param_1 + 0x38c));
        ov81_02242D88(uVar1, 1);
    }
    return;
}
#pragma force_active reset
