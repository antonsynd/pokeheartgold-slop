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
undefined4 ov07_0222C850(undefined4, undefined4);
undefined4 ov07_02222D88(undefined4, undefined4);
undefined4 ov07_02222D60(undefined4);
undefined4 ov07_022222B4(undefined4);
undefined4 func_0x020f2998(undefined4, undefined4) __asm__("sub_020F2998");

undefined4 ov07_0222C870(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int *piStack_28;
  
  iVar1 = ov07_02222D60(*(undefined4 *)(param_1 + 0x18));
  ov07_0222C850(param_1,iVar1);
  uVar2 = ov07_022222B4(param_1 + 0x1c);
  iVar7 = (int)*(short *)(param_1 + 0x14);
  iVar3 = (int)*(short *)(param_1 + 0x16);
  if (iVar7 <= iVar3) {
    piStack_28 = (int *)(iVar1 + iVar7 * 4);
    do {
      iVar6 = *piStack_28;
      iVar3 = func_0x020f2998((int)*(short *)(param_1 + 0x1e) * (iVar3 - iVar7),100);
      iVar4 = func_0x020f2998((int)*(short *)(param_1 + 0x1c) *
                              ((*(short *)(param_1 + 0x14) + 0x28) - iVar7),100);
      iVar8 = iVar7 + -1;
      if (iVar8 < 0) {
        iVar8 = iVar7 + 0xbf;
      }
      uVar5 = ov07_02222D88(((short)iVar6 - iVar4) * 0x10000 >> 0x10 & 0xffff,
                            ((iVar6 >> 0x10) - iVar3) * 0x10000 >> 0x10 & 0xffff);
      *(undefined4 *)(iVar1 + iVar8 * 4) = uVar5;
      iVar7 = iVar7 + 1;
      piStack_28 = piStack_28 + 1;
      iVar3 = (int)*(short *)(param_1 + 0x16);
    } while (iVar7 <= iVar3);
  }
  return uVar2;
}

