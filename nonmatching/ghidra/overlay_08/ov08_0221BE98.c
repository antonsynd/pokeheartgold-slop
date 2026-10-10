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
undefined4 ov08_0221C9A4(undefined4);
undefined4 ov08_0221C318(undefined4);
undefined4 ov08_0221C924(undefined4);
undefined4 ov08_0221C3C8(undefined4);
undefined4 ov08_0221C14C(undefined4);
undefined4 ov08_0221C048(undefined4);
undefined4 ov08_0221C930(undefined4);
undefined4 ov08_0221C918(undefined4);
undefined4 ov08_0221C488(undefined4);
undefined4 ov08_0221CA08(undefined4);
undefined4 ov08_0221C93C(undefined4);
undefined4 ov08_0221C978(undefined4);
undefined4 ov08_0221C948(undefined4);
undefined4 ov08_0221C58C(undefined4);
undefined4 ov08_0221CA50(undefined4);
undefined4 ov08_0221C9C8(undefined4);
undefined4 ov08_0221CA20(undefined4);
undefined4 ov08_0221CA34(undefined4);
undefined4 ov08_0221C954(undefined4);
undefined4 ov08_0222145C(undefined4);
undefined4 ov08_0221C604(undefined4);
undefined4 ov08_0221C6F8(undefined4);
undefined4 ov08_0221CC38(undefined4);
undefined4 SpriteSystem_DrawSprites(undefined4);
undefined4 ov08_0221CD90(void);
undefined4 ov08_0221CD64(undefined4);
undefined4 ov08_0221C814(undefined4);
undefined4 ov08_0221CA78(undefined4);
undefined4 ov08_0221CA90(undefined4);
undefined4 ov08_022220FC(undefined4);

void ov08_0221BE98(undefined4 param_1,int param_2)

{
  undefined1 uVar1;
  int iVar2;

  switch(*(undefined1 *)(param_2 + 0x2078)) {
  case 0:
    uVar1 = ov08_0221C048(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 1:
    uVar1 = ov08_0221C14C(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 2:
    uVar1 = ov08_0221C318(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 3:
    uVar1 = ov08_0221C3C8(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 4:
    uVar1 = ov08_0221C488(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 5:
    uVar1 = ov08_0221C58C(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 6:
    uVar1 = ov08_0221C918(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 7:
    uVar1 = ov08_0221C924(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 8:
    uVar1 = ov08_0221C930(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 9:
    uVar1 = ov08_0221C93C(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 10:
    uVar1 = ov08_0221C948(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0xb:
    uVar1 = ov08_0221C954(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0xc:
    uVar1 = ov08_0221C978(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0xd:
    uVar1 = ov08_0221C9A4(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0xe:
    uVar1 = ov08_0221C9C8(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0xf:
    uVar1 = ov08_0221CA08(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0x10:
    uVar1 = ov08_0221CA20(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0x11:
    uVar1 = ov08_0221CA34(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0x12:
    uVar1 = ov08_0221CA50(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0x13:
    uVar1 = ov08_0221C604(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0x14:
    uVar1 = ov08_0221C6F8(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0x15:
    uVar1 = ov08_0221C814(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0x16:
    uVar1 = ov08_0221CA78(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0x17:
    uVar1 = ov08_0221CA90(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0x18:
    uVar1 = ov08_0221CC38(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0x19:
    uVar1 = ov08_0221CD64(param_2);
    *(undefined1 *)(param_2 + 0x2078) = uVar1;
    break;
  case 0x1a:
    iVar2 = ov08_0221CD90();
    if (iVar2 == 1) {
      return;
    }
  }
  ov08_0222145C(param_2);
  SpriteSystem_DrawSprites(*(undefined4 *)(param_2 + 0x1fb4));
  ov08_022220FC(param_2);
  return;
}

