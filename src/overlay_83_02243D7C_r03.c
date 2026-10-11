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
undefined4 ov83_02246E08(void *, void *, int);
undefined4 ov80_02237D8C();
void ov83_02244408(int param_1);
#pragma force_active on
void ov83_02244408(int param_1) {
    undefined1 uVar1;
    unsigned int new_var;
    uVar1 = ov80_02237D8C(*((undefined1 *)(param_1 + (new_var = 9))));
    ov83_02246E08(param_1 + 0x2c8, *((undefined4 *)(param_1 + 0x55c)), uVar1);
    return;
}
#pragma force_active reset
