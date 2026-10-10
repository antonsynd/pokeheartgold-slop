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
undefined4 OverlayManager_GetData();
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 ov74_02229E28();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 PlaySE();
undefined4 ov74_0222A94C();
undefined4 func_0x020e5ad8() __asm__("sub_020E5AD8");
undefined4 RemoveWindow();
undefined4 ov74_02236AE0();

void ov74_0222AC1C(undefined4 param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;

  puVar1 = (undefined4 *)OverlayManager_GetData();
  uVar2 = ov74_02236AE0(param_1,puVar1 + 0x578);
  switch(uVar2) {
  case 1:
    func_0x020e5ad8(puVar1 + 0x23,puVar1 + 0x596,0x3a8);
    ov74_02229E28(puVar1,0);
    puVar1[0x21] = 0x1b;
    *param_2 = 0x13;
    puVar1[0x577] = 0;
    return;
  case 2:
  case 3:
    ov74_02229E28(puVar1,0);
    puVar1[0x577] = 0;
    *param_2 = 0x11;
    return;
  case 4:
    ClearWindowTilemapAndCopyToVram(puVar1 + 0x9a0);
    RemoveWindow(puVar1 + 0x9a0);
    BgClearTilemapBufferAndCommit(*puVar1,0);
    PlaySE(0x5dc);
    ov74_0222A94C(param_1,0xc4,0);
    GfGfx_EngineATogglePlanes(0x10,1);
    *param_2 = 3;
  }
  return;
}

