#pragma warning_errors off
extern unsigned char gSystem[];
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
undefined4 sub_0203A914(void);
undefined4 ov96_022043B8();
undefined4 Heap_Free(void *);
undefined4 PokeathlonCourse_FreePtr4HeapAlloc(void *);
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_021EB21C();
undefined4 Main_SetVBlankIntrCB(void *, void *);
undefined4 ObjCharTransfer_Destroy();
undefined4 ObjPlttTransfer_Destroy();
undefined4 PokeathlonCourse_ResetField3A4(void *);
undefined4 OamManager_Free();
undefined4 FontID_Release(unsigned char);
undefined4 Main_SetHBlankIntrCB(void *, void *);
undefined4 ov96_02203A30();
undefined4 ov96_021EA894();
undefined4 ov96_021E9C0C();
undefined4 RemoveWindow(void *);
undefined4 FreeBgTilemapBuffer(void *, unsigned char);
#define sub_021D1175 (*(undefined1 *)((unsigned char *)gSystem + 0x69))
undefined4 GfGfx_SwapDisplay(void);
undefined4 Heap_Destroy(int);
#define uRam04000050 (*(volatile undefined2 *)0x04000050)
undefined4 ov96_02201B98(undefined4 param_1);
#pragma force_active on
undefined4 ov96_02201B98(undefined4 param_1)

{
    undefined4 *puVar1;
    undefined4 *puVar2;
    int iVar3;

    puVar1 = (undefined4 *)PokeathlonCourse_GetHeapAllocPtr4(param_1);
    sub_0203A914();
    PokeathlonCourse_ResetField3A4(param_1);
    FreeBgTilemapBuffer(*puVar1, 0);
    FreeBgTilemapBuffer(*puVar1, 1);
    FreeBgTilemapBuffer(*puVar1, 3);
    FreeBgTilemapBuffer(*puVar1, 4);
    FreeBgTilemapBuffer(*puVar1, 5);
    FreeBgTilemapBuffer(*puVar1, 6);
    FreeBgTilemapBuffer(*puVar1, 7);
    RemoveWindow(puVar1 + 1);
    iVar3 = 0;
    puVar2 = puVar1 + 5;
    do {
        RemoveWindow(puVar2);
        iVar3 = iVar3 + 1;
        puVar2 = puVar2 + 4;
    } while (iVar3 < 3);
    Heap_Free(*puVar1);
    ov96_021EB21C(puVar1[0x12]);
    ov96_021EA894(puVar1[0x176]);
    ov96_021E9C0C(puVar1[0x175]);
    OamManager_Free();
    ObjCharTransfer_Destroy();
    ObjPlttTransfer_Destroy();
    ov96_022043B8(puVar1[0x177]);
    ov96_02203A30(puVar1[0x178]);
    FontID_Release(4);
    Main_SetVBlankIntrCB(0, 0);
    Main_SetHBlankIntrCB(0, 0);
    Heap_Free(puVar1[0x166]);
    PokeathlonCourse_FreePtr4HeapAlloc(param_1);
    sub_021D1175 = 0;
    GfGfx_SwapDisplay();
    uRam04000050 = 0;
    Heap_Destroy(0x92);
    return 1;
}
#pragma force_active reset
