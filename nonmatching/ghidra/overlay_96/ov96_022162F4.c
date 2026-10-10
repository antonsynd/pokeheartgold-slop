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
undefined4 SpriteSystem_InitManagerWithCapacities();
undefined4 SpriteManager_New();
undefined4 SpriteSystem_Init();
undefined4 SpriteSystem_Alloc();
undefined4 SpriteSystem_InitSprites();
undefined4 ov96_021E9A78();
undefined4 SpriteSystem_GetRenderer();
undefined4 G2dRenderer_SetSubSurfaceCoords();

void ov96_022162F4(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;

  uStack_24 = 6;
  uStack_20 = 7;
  uStack_1c = 5;
  uStack_18 = 5;
  uStack_14 = 0;
  uStack_10 = 0;
  uStack_44 = 0;
  uStack_40 = 0x7e;
  uStack_3c = 0;
  uStack_38 = 0x20;
  uStack_34 = 1;
  uStack_30 = 0x7e;
  uStack_2c = 0;
  uStack_28 = 0x20;
  uStack_54 = 0x40000;
  uStack_50 = 0x4000;
  uStack_4c = 0x300010;
  uStack_48 = 0x300010;
  uStack_58 = 0x80;
  uStack_c = param_4;
  uVar1 = SpriteSystem_Alloc(*param_1);
  param_1[2] = uVar1;
  uVar1 = SpriteManager_New();
  param_1[3] = uVar1;
  SpriteSystem_Init(param_1[2],&uStack_44,&uStack_58,0x20);
  SpriteSystem_InitSprites(param_1[2],param_1[3],0x80);
  SpriteSystem_InitManagerWithCapacities(param_1[2],param_1[3],&uStack_24);
  uVar1 = SpriteSystem_GetRenderer(param_1[2]);
  G2dRenderer_SetSubSurfaceCoords(uVar1,0,0x1e0000);
  uVar1 = ov96_021E9A78(*param_1,0x2e7,1);
  param_1[6] = uVar1;
  return;
}

