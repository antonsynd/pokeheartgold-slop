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
undefined4 GF_AssertFail(void);
undefined4 ManagedSprite_SetAnimNoRestart();
void ov112_021F1D58(int param_1, uint param_2);
#pragma force_active on
void ov112_021F1D58(int param_1, uint param_2) {
    int new_var2;
    uint new_var;
    new_var = param_2;
    if ((7 + 1) <= new_var) {
        GF_AssertFail();
    }
    new_var2 = 0x7c;
    ManagedSprite_SetAnimNoRestart(*((undefined4 *)(param_1 + new_var2)), new_var);
    return;
}
#pragma force_active reset
