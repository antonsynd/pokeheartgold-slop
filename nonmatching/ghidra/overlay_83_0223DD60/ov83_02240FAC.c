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
undefined4 ov83_022411DC();
undefined4 GetMonData();
undefined4 ov83_02240238();
undefined4 ov83_022411B0();
undefined4 CalculateHpBarColor();
undefined4 func_0x02237d8c() __asm__("sub_02237D8C");
undefined4 ov83_02241E18();
undefined4 ov83_02247600();
undefined4 ov83_0224753C();
undefined4 Party_GetMonByIndex();
undefined4 ov83_022475D4();
undefined4 ov83_02247454();
undefined4 ov83_02247768();
undefined4 ov83_022421E0();
undefined4 ov83_02247624();

undefined4 ov83_02240FAC(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 uVar1;
  undefined2 uVar2;
  undefined2 uVar3;
  uint uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;
  
  uVar4 = ov83_02247768(*(undefined1 *)(param_1 + 0x14));
  uVar5 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x7a4),uVar4);
  uVar2 = GetMonData(uVar5,0xa3,0);
  uVar3 = GetMonData(uVar5,0xa4,0);
  uVar6 = CalculateHpBarColor(uVar2,uVar3,0x30);
  uVar1 = ov83_022411B0(param_1,uVar6);
  uVar6 = CalculateHpBarColor(uVar2,uVar3,0x30);
  uVar6 = ov83_022411DC(param_1,uVar6);
  switch(param_3) {
  case 1:
  case 2:
  case 3:
    if (-1 < (int)((uint)*(byte *)(param_1 + 0xe) << 0x1d)) {
      *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) | 4;
      iVar8 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
      if (iVar8 == 0) {
        iVar8 = 0x40;
      }
      else {
        iVar8 = 0x20;
      }
      uVar7 = ov83_02247454(param_1 + 0x518,0,0,0,8,(int)((iVar8 + uVar4 * 0x40) * 0x10000) >> 0x10,
                            0x3e,0,0);
      *(undefined4 *)(param_1 + 0x75c) = uVar7;
    }
    if ((*(int *)(param_1 + 0x75c) != 0) && (iVar8 = ov83_02247624(), iVar8 == 0)) {
      ov83_0224753C(*(undefined4 *)(param_1 + 0x75c));
      *(undefined4 *)(param_1 + 0x75c) = 0;
    }
    if (*(int *)(param_1 + 0x75c) == 0) {
      uVar5 = GetMonData(uVar5,0xa3,0);
      ov83_02240238(param_1,param_1 + 0x80,uVar4,uVar5);
      if (*(byte *)(param_1 + 0xd) == uVar4) {
        ov83_02241E18(param_1);
        ov83_022421E0(param_1,0);
      }
      ov83_022475D4(*(undefined4 *)(param_1 + uVar4 * 4 + 0x768),uVar6);
      ov83_02247600(*(undefined4 *)(param_1 + uVar4 * 4 + 0x73c),uVar1);
      *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) & 0xfb;
      return 1;
    }
    break;
  case 4:
  case 8:
    *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) & 0xfb;
    return 1;
  case 6:
  case 7:
    if (-1 < (int)((uint)*(byte *)(param_1 + 0xe) << 0x1d)) {
      *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) | 4;
      iVar8 = func_0x02237d8c(*(undefined1 *)(param_1 + 9));
      if (iVar8 == 0) {
        iVar8 = 0x40;
      }
      else {
        iVar8 = 0x20;
      }
      uVar5 = ov83_02247454(param_1 + 0x518,0,0,0,0x10,
                            (int)((iVar8 + uVar4 * 0x40) * 0x10000) >> 0x10,0x3e,0,0);
      *(undefined4 *)(param_1 + 0x75c) = uVar5;
    }
    iVar8 = ov83_02247624(*(undefined4 *)(param_1 + 0x75c));
    if (iVar8 == 0) {
      ov83_0224753C(*(undefined4 *)(param_1 + 0x75c));
      *(undefined4 *)(param_1 + 0x75c) = 0;
      *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) & 0xfb;
      return 1;
    }
    break;
  case 9:
    *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) & 0xfb;
    return 1;
  case 10:
    *(byte *)(param_1 + 0xe) = *(byte *)(param_1 + 0xe) & 0xfb;
    return 1;
  }
  return 0;
}

