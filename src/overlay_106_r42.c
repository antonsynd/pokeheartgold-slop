#pragma warning_errors off
void ov106_021E63E0(void);
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
#define true           1
#define false          0
#define CONCAT11(a, b) ((unsigned short)(((unsigned)(a) << 8) | (unsigned char)(b)))
#define CONCAT12(a, b) (((unsigned)(unsigned char)(a) << 16) | (unsigned short)(b))
#define CONCAT13(a, b) (((unsigned)(unsigned char)(a) << 24) | ((unsigned)(b) & 0xffffff))
#define CONCAT21(a, b) (((unsigned)(unsigned short)(a) << 8) | (unsigned char)(b))
#define CONCAT22(a, b) (((unsigned)(unsigned short)(a) << 16) | (unsigned short)(b))
#define CONCAT31(a, b) (((unsigned)(a) << 8) | (unsigned char)(b))
#define CONCAT44(a, b) (((unsigned long long)(unsigned)(a) << 32) | (unsigned)(b))
#define SUB41(x, n)    ((unsigned char)((unsigned)(x) >> ((n) * 8)))
#define SUB42(x, n)    ((unsigned short)((unsigned)(x) >> ((n) * 8)))
#define SUB81(x, n)    ((unsigned char)((unsigned long long)(x) >> ((n) * 8)))
#define SUB84(x, n)    ((unsigned)((unsigned long long)(x) >> ((n) * 8)))
#define ZEXT14(x)      ((unsigned)(unsigned char)(x))
#define ZEXT24(x)      ((unsigned)(unsigned short)(x))
#define ZEXT48(x)      ((unsigned long long)(unsigned)(x))
#define SEXT14(x)      ((int)(signed char)(x))
#define SEXT24(x)      ((int)(short)(x))
#define SEXT48(x)      ((long long)(int)(x))
#define CARRY4(a, b)   ((unsigned)(a) + (unsigned)(b) < (unsigned)(a))
#define SCARRY4(a, b)  ((((int)(a) + (int)(b)) < (int)(a)) != ((int)(b) < 0))
#define SBORROW4(a, b) ((((int)(a) - (int)(b)) > (int)(a)) != ((int)(b) < 0))
#define POPCOUNT(x)    __builtin_popcount(x)
#define LZCOUNT(x)     ((x) ? __builtin_clz(x) : 32)
undefined4 GfGfx_EngineASetPlanes();
undefined4 ov106_021E6418();
undefined4 ov106_021E6408();
undefined4 ov106_021E6520();
undefined4 MI_CpuFill8();
undefined4 Main_SetVBlankIntrCB(void *, void *);
undefined4 Heap_Alloc(int, unsigned int);
undefined4 NARC_New(int, int);
undefined4 HBlankInterruptDisable(void);
undefined4 GfGfx_EngineBSetPlanes();
#define uRam04000050 (*(volatile undefined2 *)0x04000050)
#define uRam04001050 (*(volatile undefined2 *)0x04001050)
#define uRam04000304 (*(volatile ushort *)0x04000304)
extern undefined4 ov106_021E70E0;
undefined4 ov106_021E6814(int param_1, undefined4 param_2, undefined4 param_3, undefined4 param_4);
#pragma force_active on
undefined4 ov106_021E6814(int param_1, undefined4 param_2, undefined4 param_3, undefined4 param_4)

{
    undefined4 uVar1;
    int iVar2;

    Main_SetVBlankIntrCB(0, 0);
    HBlankInterruptDisable();
    GfGfx_EngineASetPlanes(0);
    GfGfx_EngineBSetPlanes(0);
    uRam04000050 = 0;
    uRam04001050 = 0;
    uRam04000304 = uRam04000304 | 0x8000;
    uVar1 = Heap_Alloc(0x99, 0x6040);
    *(undefined4 *)(param_1 + 0x418) = uVar1;
    MI_CpuFill8(*(undefined4 *)(param_1 + 0x418), 0, 0x6040);
    iVar2 = *(int *)(param_1 + 0x418);
    *(undefined1 **)(iVar2 + 0x14) = &ov106_021E70E0;
    uVar1 = NARC_New(0xf7, 0x99);
    *(undefined4 *)(iVar2 + 4) = uVar1;
    ov106_021E6408();
    ov106_021E6418(iVar2);
    ov106_021E6520(param_1);
    Main_SetVBlankIntrCB(((unsigned int)ov106_021E63E0), *(undefined4 *)(param_1 + 0x418));
    return 4;
}
#pragma force_active reset
