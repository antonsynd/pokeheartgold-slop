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
undefined4 SpriteSystem_InitSprites(void *, void *, int);
undefined4 SpriteSystem_Init(void *, void *, void *, int);
void * SpriteSystem_Alloc(int);
undefined4 SpriteSystem_InitManagerWithCapacities(void *, void *, void *);
void * SpriteManager_New(void *);

void ov112_021EA230(int param_1)

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

  uStack_2c = 10;
  uStack_28 = 2;
  uStack_24 = 2;
  uStack_20 = 2;
  uStack_1c = 0;
  uStack_18 = 0;
  puVar1 = SpriteSystem_Alloc(0x9a);
  *(undefined **)(param_1 + 0x1e528) = puVar1;
  puVar1 = SpriteManager_New(*(undefined **)(param_1 + 0x1e528));
  *(undefined **)(param_1 + 0x1e52c) = puVar1;
  uStack_4c = 0;
  uStack_48 = 0x80;
  uStack_44 = 0;
  uStack_40 = 0x20;
  uStack_3c = 0;
  uStack_38 = 0x80;
  uStack_34 = 0;
  uStack_30 = 0x20;
  uStack_60 = 0x11;
  uStack_5c = 0x10000;
  uStack_58 = 0x4000;
  uStack_54 = 0x10;
  uStack_50 = 0x10;
  SpriteSystem_Init(*(undefined **)(param_1 + 0x1e528),(undefined *)&uStack_4c,
                    (undefined *)&uStack_60,0x20);
  SpriteSystem_InitSprites
            (*(undefined **)(param_1 + 0x1e528),*(undefined **)(param_1 + 0x1e52c),0xd9);
  SpriteSystem_InitManagerWithCapacities
            (*(undefined **)(param_1 + 0x1e528),*(undefined **)(param_1 + 0x1e52c),
             (undefined *)&uStack_2c);
  return;
}

