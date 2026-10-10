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
#define true 1
#define false 0
#define CONCAT11(a, b) ((unsigned short)(((unsigned)(a) << 8) | (unsigned char)(b)))
#define CONCAT12(a, b) (((unsigned)(unsigned char)(a) << 16) | (unsigned short)(b))
#define CONCAT13(a, b) (((unsigned)(unsigned char)(a) << 24) | ((unsigned)(b) & 0xffffff))
#define CONCAT21(a, b) (((unsigned)(unsigned short)(a) << 8) | (unsigned char)(b))
#define CONCAT22(a, b) (((unsigned)(unsigned short)(a) << 16) | (unsigned short)(b))
#define CONCAT31(a, b) (((unsigned)(a) << 8) | (unsigned char)(b))
#define CONCAT44(a, b) (((unsigned long long)(unsigned)(a) << 32) | (unsigned)(b))
#define SUB41(x, n) ((unsigned char)((unsigned)(x) >> ((n) * 8)))
#define SUB42(x, n) ((unsigned short)((unsigned)(x) >> ((n) * 8)))
#define SUB81(x, n) ((unsigned char)((unsigned long long)(x) >> ((n) * 8)))
#define SUB84(x, n) ((unsigned)((unsigned long long)(x) >> ((n) * 8)))
#define ZEXT14(x) ((unsigned)(unsigned char)(x))
#define ZEXT24(x) ((unsigned)(unsigned short)(x))
#define ZEXT48(x) ((unsigned long long)(unsigned)(x))
#define SEXT14(x) ((int)(signed char)(x))
#define SEXT24(x) ((int)(short)(x))
#define SEXT48(x) ((long long)(int)(x))
#define CARRY4(a, b) ((unsigned)(a) + (unsigned)(b) < (unsigned)(a))
#define SCARRY4(a, b) ((((int)(a) + (int)(b)) < (int)(a)) != ((int)(b) < 0))
#define SBORROW4(a, b) ((((int)(a) - (int)(b)) > (int)(a)) != ((int)(b) < 0))
#define POPCOUNT(x) __builtin_popcount(x)
#define LZCOUNT(x) ((x) ? __builtin_clz(x) : 32)
undefined4 BufferIntegerAsString(void *, unsigned int, int, unsigned int, int, int);
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);
undefined4 GF_AssertFail(void);
undefined4 MessageFormat_Delete(void *);
undefined4 CopyWindowToVram(void *);
undefined4 String_Delete(void *);
undefined4 FillWindowPixelBuffer(void *, unsigned char);
undefined4 func_0x020f2da0() __asm__("sub_020F2DA0");
void * MessageFormat_New(int);
void * ReadMsgData_ExpandPlaceholders(void *, void *, unsigned int, int);
undefined4 func_0x020f0aa8() __asm__("sub_020F0AA8");
undefined4 DestroyMsgData(void *);
void * NewMsgDataFromNarc(int, int, int, int);
undefined4 func_0x020f0bd8() __asm__("sub_020F0BD8");


unsigned long long _dflt(int);
unsigned long long _ddiv(unsigned long long, unsigned long long);
int _dfix(unsigned long long);

void ov96_021FFD80(int param_1, int param_2, int param_3)
{
    unsigned char *puVar2;
    unsigned char *puVar3;
    unsigned char *puVar4;
    unsigned long long uVar5;
    int iVar1;

    FillWindowPixelBuffer((undefined *)(param_1 + 4), 0);
    uVar5 = _dflt(param_3 * 10);
    uVar5 = _ddiv(uVar5, 0x4090000000000000ULL);
    iVar1 = _dfix(uVar5);
    if (9 < iVar1) {
        GF_AssertFail();
    }
    puVar2 = (unsigned char *)NewMsgDataFromNarc(1, 0x1b, 0x135, *(int *)(param_1 + 0x14));
    puVar3 = (unsigned char *)MessageFormat_New(*(int *)(param_1 + 0x14));
    BufferIntegerAsString(puVar3, 0, param_2, 2, 2, 1);
    BufferIntegerAsString(puVar3, 1, iVar1, 1, 2, 1);
    puVar4 = (unsigned char *)ReadMsgData_ExpandPlaceholders(puVar3, puVar2, 0xa2, *(int *)(param_1 + 0x14));
    AddTextPrinterParameterizedWithColor((undefined *)(param_1 + 4), 4, puVar4, 0, 0, 0xff, 0xf0e00, (undefined *)0x0);
    String_Delete(puVar4);
    MessageFormat_Delete(puVar3);
    DestroyMsgData(puVar2);
    CopyWindowToVram((undefined *)(param_1 + 4));
}
