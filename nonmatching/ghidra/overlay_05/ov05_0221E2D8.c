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
undefined4 func_0x020744a4(void) __asm__("sub_020744A4");
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 NARC_Delete(undefined4);
undefined4 NARC_New(undefined4, undefined4);
undefined4 sub_02074490(void);
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 SpriteSystem_LoadPlttResObjFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 SpriteSystem_LoadAnimResObjFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x02074498(void) __asm__("sub_02074498");

void ov05_0221E2D8(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  uint uVar3;
  int *piVar4;

  uVar1 = NARC_New(0x14,*(undefined4 *)(*param_1 + 0x24));
  uVar2 = sub_02074490();
  SpriteSystem_LoadPlttResObjFromOpenNarc
            (param_1[100],param_1[0x65],uVar1,uVar2,0,3,1,0xb808,param_4);
  uVar2 = func_0x02074498();
  SpriteSystem_LoadCellResObjFromOpenNarc(param_1[100],param_1[0x65],uVar1,uVar2,0,0xb809);
  uVar2 = func_0x020744a4();
  SpriteSystem_LoadAnimResObjFromOpenNarc(param_1[100],param_1[0x65],uVar1,uVar2,0,0xb809);
  uVar3 = 0;
  piVar4 = param_1;
  do {
    SpriteSystem_LoadCharResObjFromOpenNarc
              (param_1[100],param_1[0x65],uVar1,piVar4[0x85],0,1,uVar3 + 0xb809);
    uVar3 = uVar3 + 1;
    piVar4 = piVar4 + 6;
  } while (uVar3 < 6);
  NARC_Delete(uVar1);
  return;
}

