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
undefined4 ov69_021E75F8();
undefined4 ov69_021E75A0();

bool ov69_021E6C30(int param_1,uint *param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uStack_44;
  int iStack_40;
  int iStack_3c;
  int iStack_38;
  int iStack_34;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  iStack_1c = *(int *)(param_1 + 0xc2c4);
  iVar4 = iStack_1c + -0x80;
  iVar5 = iStack_1c + 0x80;
  iStack_3c = (*(int *)(param_1 + 0xc2c8) + -0x80) * 0x10000 >> 0x10;
  iStack_40 = (*(int *)(param_1 + 0xc2c8) + 0x80) * 0x10000 >> 0x10;
  uStack_44 = *(uint *)(param_1 + 0xc);
  uVar7 = 0x100;
  uStack_18 = *(undefined4 *)(param_1 + 0xc2c8);
  ov69_021E75A0(&iStack_1c);
  iVar1 = iStack_40 - iStack_3c;
  if (iVar1 < 0) {
    iVar1 = -iVar1;
  }
  iStack_38 = iStack_40;
  iStack_34 = iStack_3c;
  if (0x100 < iVar1) {
    iStack_40 = (int)(short)*(undefined4 *)(param_1 + 0xc2c8);
    if (iStack_40 < 1) {
      iStack_34 = iStack_40 + 0x10000;
    }
    else {
      iStack_34 = iStack_40 + -0x10000;
    }
    iStack_3c = iStack_40 + -0x80;
    iStack_40 = iStack_40 + 0x80;
    iStack_38 = iStack_34 + 0x80;
    iStack_34 = iStack_34 + -0x80;
  }
  uVar6 = 0;
  iVar1 = param_1;
  if (*(int *)(param_1 + 0xc) != 0) {
    do {
      iStack_24 = (int)*(short *)(iVar1 + 0x10);
      if ((((iVar4 * 0x10000 >> 0x10 < iStack_24) && (iStack_24 < iVar5 * 0x10000 >> 0x10)) &&
          (((iVar3 = (int)*(short *)(iVar1 + 0x12), iStack_34 < iVar3 && (iVar3 < iStack_38)) ||
           ((iStack_3c < iVar3 && (iVar3 < iStack_40)))))) && (*(short *)(iVar1 + 0x38) != 0)) {
        iStack_20 = (int)*(short *)(iVar1 + 0x12);
        ov69_021E75A0(&iStack_24);
        uVar2 = ov69_021E75F8(&iStack_1c,&iStack_24);
        if (uVar2 < uVar7) {
          uVar7 = uVar2;
          uStack_44 = uVar6;
        }
      }
      uVar6 = uVar6 + 1;
      iVar1 = iVar1 + 0x30;
    } while (uVar6 < *(uint *)(param_1 + 0xc));
  }
  *param_2 = uStack_44;
  return uStack_44 != *(uint *)(param_1 + 0xc);
}

