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
undefined4 ManagedSprite_OffsetPositionXY(void *, short, short);
undefined4 ov96_0220B068();
undefined4 ManagedSprite_GetPositionXY(void *, void *, void *);
undefined4 ManagedSprite_SetPositionXY(void *, short, short);

void ov96_0220AF64(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  undefined4 uStack_10;

  uVar3 = param_1[4];
  if ((uVar3 & 0xfffff) >> 0xc == 1) {
    uVar4 = ((uVar3 & 0x7ffffff) >> 0x14) * -4 + 0xa8;
    uVar2 = ((uVar3 & 0xfff) >> 4) + 0x14 & 0xff;
    param_1[4] = uVar3 & 0xfffff00f | uVar2 << 4;
    uStack_10 = param_4;
    ManagedSprite_OffsetPositionXY((undefined *)*param_1,0,(short)uVar2);
    ManagedSprite_OffsetPositionXY((undefined *)param_1[1],0,(short)((param_1[4] & 0xfff) >> 4));
    ManagedSprite_GetPositionXY
              ((undefined *)param_1[1],(undefined *)((int)&uStack_10 + 2),(undefined *)&uStack_10);
    ManagedSprite_GetPositionXY
              ((undefined *)*param_1,(undefined *)((int)&uStack_10 + 2),(undefined *)&uStack_10);
    if (uVar4 <= (uint)(int)(short)uStack_10) {
      sVar1 = (short)uVar4;
      uStack_10 = CONCAT22((*(ushort *)((char *)&uStack_10 + 2)),sVar1);
      ManagedSprite_SetPositionXY((undefined *)*param_1,(*(ushort *)((char *)&uStack_10 + 2)),sVar1);
      ov96_0220B068(param_1);
      param_1[4] = param_1[4] & 0xfff00fff | 0x2000;
    }
  }
  return;
}

