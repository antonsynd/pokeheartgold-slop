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
undefined4 RemoveWindow(void *);
undefined4 ClearFrameAndWindow2(void *, int);
undefined4 ClearWindowTilemapAndCopyToVram(void *);
undefined4 RemoveTextPrinter();
void ov111_021E69F4(int param_1);
#pragma force_active on
void ov111_021E69F4(int param_1) {
    if ((*((uint *)(param_1 + 0x2c))) != 0xffffffff) {
        RemoveTextPrinter((*((uint *)(param_1 + 0x2c))) & 0xff);
    }
    if ((*((int *)(param_1 + ((((0x1c & 0xFFFFFFFFu) & 0xFFFFFFFFu) & 0xFFFFFFFFu) & 0xFFFFFFFFu)))) != 0) {
        if (1) {
            ClearFrameAndWindow2(param_1 + 0x1c, 0);
            ClearWindowTilemapAndCopyToVram(param_1 + 0x1c);
            RemoveWindow(param_1 + 0x1c);
        }
    }
    return;
}
#pragma force_active reset
