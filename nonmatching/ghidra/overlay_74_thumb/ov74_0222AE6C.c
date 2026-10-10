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
void * OverlayManager_GetArgs(void *);
undefined4 ov74_02236034(int);
void * OverlayManager_CreateAndGetData(void *, unsigned int, int);
undefined4 Sound_SetSceneAndPlayBGM(unsigned char, unsigned short, int);
undefined4 sub_0200FBF4(int, unsigned short);
undefined4 ov74_0222A744();
undefined4 ov74_0222FCA4();
undefined4 ov74_0223512C(int);
undefined4 Heap_Create(int, int, unsigned int);
undefined4 ov74_0222CD88();
void * BgConfig_Alloc(int);
undefined4 sub_0201A4B0(int);
undefined4 ov74_02235230(void);
void * func_0x020e5b44(void *, int, unsigned int) __asm__("sub_020E5B44");
undefined4 GfGfx_DisableEngineAPlanes(void);
undefined4 Save_PlayerData_GetOptionsAddr();
undefined4 GfGfx_DisableEngineBPlanes(void);

undefined4 ov74_0222AE6C(undefined4 param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;

  ov74_0222CD88();
  Heap_Create(3,0x54,0x30000);
  puVar1 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x29f8,0x54);
  func_0x020e5b44(puVar1,0,0x29f8);
  uVar2 = BgConfig_Alloc(0x54);
  *puVar1 = uVar2;
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  ov74_0222FCA4();
  ov74_0222A744(*puVar1);
  sub_0200FBF4(0,0);
  sub_0200FBF4(1,0);
  Sound_SetSceneAndPlayBGM(10,0x47e,1);
  ov74_0223512C(0x54);
  iVar3 = ov74_02235230();
  if (iVar3 != 0) {
    puVar1[0x575] = 2;
    sub_0201A4B0(7);
    ov74_02236034(1);
  }
  puVar1[0x172] = 0x1d;
  iVar3 = OverlayManager_GetArgs(param_1);
  puVar1[1] = *(undefined4 *)(iVar3 + 8);
  uVar2 = Save_PlayerData_GetOptionsAddr();
  puVar1[2] = uVar2;
  puVar1[0x1a] = 0xff;
  Heap_Create(0,0x59,0x570);
  return 1;
}

