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
undefined4 GfGfx_EngineBTogglePlanes(unsigned char, unsigned char);
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 SpriteSystem_Init(void *, void *, void *, int);
void * SpriteManager_New(void *);
undefined4 G2dRenderer_SetSubSurfaceCoords(void *, int, int);
undefined4 SpriteSystem_InitSprites(void *, void *, int);
undefined4 SpriteSystem_InitManagerWithCapacities(void *, void *, void *);
void * SpriteSystem_Alloc(int);
void * SpriteSystem_GetRenderer(void *);

void ov112_021F196C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  undefined4 uStack_60;
  undefined4 uStack_5c;
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
  
  uStack_14 = param_4;
  puVar1 = SpriteSystem_Alloc(*(int *)(param_1 + 4));
  *(undefined **)(param_1 + 0x68) = puVar1;
  puVar1 = SpriteManager_New(puVar1);
  *(undefined **)(param_1 + 0x6c) = puVar1;
  uStack_34 = 0;
  uStack_30 = 0x80;
  uStack_2c = 0;
  uStack_28 = 0x20;
  uStack_24 = 0;
  uStack_20 = 0x80;
  uStack_1c = 0;
  uStack_18 = 0x20;
  uStack_44 = 0x40000;
  uStack_40 = 0x4000;
  uStack_3c = 0x300010;
  uStack_38 = 0x10;
  uStack_48 = 0x20;
  SpriteSystem_Init(*(undefined **)(param_1 + 0x68),(undefined *)&uStack_34,(undefined *)&uStack_48,
                    0x20);
  SpriteSystem_InitSprites(*(undefined **)(param_1 + 0x68),*(undefined **)(param_1 + 0x6c),0x20);
  uStack_60 = 6;
  uStack_5c = 4;
  uStack_58 = 4;
  uStack_54 = 4;
  uStack_50 = 0;
  uStack_4c = 0;
  SpriteSystem_InitManagerWithCapacities
            (*(undefined **)(param_1 + 0x68),*(undefined **)(param_1 + 0x6c),(undefined *)&uStack_60
            );
  puVar1 = SpriteSystem_GetRenderer(*(undefined **)(param_1 + 0x68));
  G2dRenderer_SetSubSurfaceCoords(puVar1,0,0x20c000);
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  return;
}

