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
undefined4 GetBgTilemapBuffer();
undefined4 FillBgTilemapRect(void *, unsigned char, unsigned short, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char);
undefined4 LoadRectToBgTilemapRect(void *, unsigned char, void *, unsigned char, unsigned char, unsigned char, unsigned char);
extern undefined ov31_0225EF48;
void ov31_0225E060(undefined4 param_1, uint param_2, int param_3, undefined4 param_4);
#pragma force_active on
void ov31_0225E060(undefined4 param_1, uint param_2, int param_3, undefined4 param_4) {
    unsigned char *new_var;
    int iVar1;
    unsigned char *pcVar3;
    int iVar4;
    uint uVar2;
    if (!pcVar3) {
    }
    iVar1 = GetBgTilemapBuffer(param_1, param_2 & 0xff);
    if (param_3 != 6) {
        pcVar3 = (&ov31_0225EF48) + (param_3 * 0x20);
        iVar4 = 0;
        uVar2 = 0xff;
        uVar2 = param_2;
        uVar2 = uVar2 & uVar2;
        do {
            new_var = &pcVar3[3];
            if ((*pcVar3) == '\x01') {
                LoadRectToBgTilemapRect(param_1, uVar2, iVar1 + ((((uint)((byte)pcVar3[1])) + (((uint)((byte)pcVar3[2])) * 0x20)) * 2), pcVar3[3], pcVar3[4], pcVar3[5], pcVar3[6]);
            } else if ((*pcVar3) == '\x02') {
                FillBgTilemapRect(param_1, uVar2, 0, *new_var, pcVar3[4], pcVar3[5], pcVar3[6], 0);
            }
            iVar4 = iVar4 + 1;
            pcVar3 = pcVar3 + 8;
        } while (iVar4 < 4);
    }
    return;
}
#pragma force_active reset
