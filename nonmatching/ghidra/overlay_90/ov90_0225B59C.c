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
typedef void code(void);
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
undefined4 ov90_02258E54(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Sprite_SetAnimCtrlSeq(undefined4, undefined4);
undefined4 Sprite_SetPriority(undefined4, undefined4);
undefined4 GfGfxLoader_GetScrnDataFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Sprite_SetDrawFlag(undefined4, undefined4);
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov90_02258EB4(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x020e5b44(undefined4, undefined4, undefined4) __asm__("sub_020E5B44");
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);

void ov90_0225B59C(undefined4 *param_1,undefined4 *param_2,undefined4 *param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6)

{
  short sVar1;
  undefined4 uVar2;
  int iVar3;
  short sVar4;
  int iVar5;
  int iStack_28;
  int iStack_24;

  func_0x020e5b44(param_1,0,0x4c);
  GfGfxLoader_GXLoadPalFromOpenNarc(param_5,0x18,0,0x1c0,0x20,param_6);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_5,0x19,*param_2,2,0x8b,0,0,param_6);
  uVar2 = GfGfxLoader_GetScrnDataFromOpenNarc(param_5,0x1a,0,param_1 + 1,param_6);
  *param_1 = uVar2;
  uVar2 = ov90_02258E54(param_4,param_5,0xf,1,0x10,0x11,0x12,0x1389,param_6);
  param_1[0x11] = uVar2;
  sVar1 = 0x28;
  iStack_28 = 0;
  iStack_24 = 0;
  do {
    sVar4 = 0x4a;
    iVar5 = 0;
    do {
      iVar3 = iVar5 + iStack_24;
      uVar2 = ov90_02258EB4(param_1[0x11],*param_3,(int)sVar4,(int)sVar1,0,param_6);
      param_1[iVar3 + 2] = uVar2;
      Sprite_SetDrawFlag(uVar2,0);
      Sprite_SetAnimCtrlSeq(param_1[iVar3 + 2],iStack_28);
      Sprite_SetPriority(param_1[iVar3 + 2],0);
      iVar5 = iVar5 + 1;
      sVar4 = sVar4 + 0x18;
    } while (iVar5 < 5);
    sVar1 = sVar1 + 0x24;
    iStack_24 = iStack_24 + 5;
    iStack_28 = iStack_28 + 1;
  } while (iStack_28 < 3);
  return;
}

