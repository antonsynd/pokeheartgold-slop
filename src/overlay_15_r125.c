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
undefined4 sub_020776B8();
undefined4 GetItemIconAnim();
undefined4 sub_0207775C();
undefined4 SpriteSystem_LoadCellResObj();
undefined4 sub_020776EC();
undefined4 GetItemIconCell();
undefined4 GfGfxLoader_GetPlttData();
undefined4 sub_02077834();
undefined4 SpriteSystem_LoadCharResObj();
undefined4 SpriteSystem_LoadPlttResObj();
undefined4 GetItemIndexMapping();
undefined4 SpriteSystem_LoadAnimResObj();
void ov15_021FFAD0(int param_1);
#pragma force_active on
void ov15_021FFAD0(int param_1)

{
    undefined4 uVar1;
    int iVar2;

    SpriteSystem_LoadCharResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xf, 0x1a, 0, 1, 0xc0f9);
    SpriteSystem_LoadCharResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xf, 6, 0, 1, 0xc0fa);
    SpriteSystem_LoadCharResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xf, 0x33, 0, 2, 0xc0fb);
    SpriteSystem_LoadCharResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0x3c, 4, 0, 1, 0xc102);
    iVar2 = 0;
    do {
        uVar1 = GetItemIndexMapping(0, 1);
        SpriteSystem_LoadCharResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0x12, uVar1, 0, 2, iVar2 + 0xc0fc);
        iVar2 = iVar2 + 1;
    } while (iVar2 < 6);
    sub_020776B8(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 1, 0, 0xc103);
    sub_02077834(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 1, 0, 0xc104);
    SpriteSystem_LoadPlttResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xf, 0xf, 0, 2, 1, 0xc0f9);
    SpriteSystem_LoadPlttResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0x3c, 10, 0, 2, 1, 0xc101);
    sub_020776EC(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 1, 0xc102);
    SpriteSystem_LoadPlttResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xf, 0x2f, 0, 10, 2, 0xc0fa);
    iVar2 = 0;
    do {
        uVar1 = GetItemIndexMapping(0, 2);
        SpriteSystem_LoadPlttResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0x12, uVar1, 0, 1, 2, iVar2 + 0xc0fb);
        iVar2 = iVar2 + 1;
    } while (iVar2 < 6);
    SpriteSystem_LoadCellResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xf, 0x19, 0, 0xc0f9);
    SpriteSystem_LoadCellResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xf, 5, 0, 0xc0fa);
    SpriteSystem_LoadCellResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xf, 0x31, 0, 0xc0fb);
    uVar1 = GetItemIconCell();
    SpriteSystem_LoadCellResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0x12, uVar1, 0, 0xc0fc);
    SpriteSystem_LoadCellResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0x3c, 5, 0, 0xc0fd);
    SpriteSystem_LoadAnimResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xf, 0x15, 0, 0xc0f9);
    SpriteSystem_LoadAnimResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xf, 0x18, 0, 0xc0fa);
    SpriteSystem_LoadAnimResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xf, 4, 0, 0xc0fb);
    SpriteSystem_LoadAnimResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xf, 0x32, 0, 0xc0fc);
    uVar1 = GetItemIconAnim();
    SpriteSystem_LoadAnimResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0x12, uVar1, 0, 0xc0fd);
    SpriteSystem_LoadAnimResObj(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0x3c, 6, 0, 0xc0fe);
    sub_0207775C(*(undefined4 *)(param_1 + 0x248), *(undefined4 *)(param_1 + 0x24c), 0xc0fe, 0xc0ff);
    uVar1 = GfGfxLoader_GetPlttData(0xf, 0x30, param_1 + 0x6a0, 6);
    *(undefined4 *)(param_1 + 0x69c) = uVar1;
    return;
}
#pragma force_active reset
