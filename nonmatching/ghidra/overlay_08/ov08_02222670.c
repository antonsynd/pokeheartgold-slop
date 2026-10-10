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
undefined4 ov08_02222A78(undefined4);
undefined4 ov08_02222D84(undefined4);
undefined4 ov08_02224974(undefined4);
undefined4 ov08_02222DEC(undefined4);
undefined4 ov08_02222E04(undefined4);
undefined4 SpriteSystem_DrawSprites(undefined4);
undefined4 ov08_02222DC4(undefined4);
undefined4 ov08_02222DAC(undefined4);
undefined4 ov08_02222AF0(undefined4);
undefined4 ov08_02222D90(undefined4);
undefined4 ov08_02222918(undefined4);
undefined4 ov08_02222840(undefined4);
undefined4 ov08_02222D9C(undefined4);
undefined4 ov08_0222276C(undefined4);
undefined4 ov08_02222EC4(undefined4);
undefined4 ov08_02222D78(undefined4);
undefined4 ov08_02222E2C(void);

void ov08_02222670(undefined4 param_1,int param_2)

{
  undefined1 uVar1;
  int iVar2;
  
  switch(*(undefined1 *)(param_2 + 0x114a)) {
  case 0:
    uVar1 = ov08_0222276C(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 1:
    uVar1 = ov08_02222840(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 2:
    uVar1 = ov08_02222918(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 3:
    uVar1 = ov08_02222AF0(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 4:
    uVar1 = ov08_02222D78(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 5:
    uVar1 = ov08_02222D84(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 6:
    uVar1 = ov08_02222D90(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 7:
    uVar1 = ov08_02222A78(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 8:
    uVar1 = ov08_02222D9C(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 9:
    uVar1 = ov08_02222DAC(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 10:
    uVar1 = ov08_02222DC4(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 0xb:
    uVar1 = ov08_02222DEC(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 0xc:
    uVar1 = ov08_02222EC4(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 0xd:
    uVar1 = ov08_02222E04(param_2);
    *(undefined1 *)(param_2 + 0x114a) = uVar1;
    break;
  case 0xe:
    iVar2 = ov08_02222E2C();
    if (iVar2 == 1) {
      return;
    }
  }
  ov08_02224974(param_2);
  SpriteSystem_DrawSprites(*(undefined4 *)(param_2 + 0x30c));
  return;
}

