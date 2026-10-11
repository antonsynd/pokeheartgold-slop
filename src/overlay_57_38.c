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
undefined4 ManagedSprite_TickFrame();
void ov57_02238FC4(undefined4 *param_1);
#pragma force_active on
void ov57_02238FC4(undefined4 *param_1) {
    int iVar1;
    undefined4 *puVar2;
    iVar1 = 0;
    puVar2 = param_1;
    if (0 < (*((int *)(*param_1)))) {
        puVar2 = param_1;
        do {
            ManagedSprite_TickFrame(puVar2[0, 0xc9]);
            iVar1 = iVar1 + 1;
            puVar2 = puVar2 + 1;
        } while ((iVar1 < (*((int *)(*param_1)))) != 0);
    }
    return;
}
#pragma force_active reset
