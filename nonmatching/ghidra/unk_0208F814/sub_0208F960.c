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
undefined4 func_0x021e6fc8() __asm__("sub_021E6FC8");
undefined4 sub_0203769C();
undefined4 sub_02037454();
undefined4 func_0x021e75e0() __asm__("sub_021E75E0");
undefined4 sub_02037108();
undefined4 func_0x020e3714() __asm__("sub_020E3714");
undefined4 sub_02033250();
undefined4 sub_02038C1C();

void sub_0208F960(uint param_1,undefined4 param_2,byte *param_3,int param_4)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  undefined1 uStack_18;
  undefined1 uStack_17;
  byte bStack_16;
  byte bStack_15;
  int iStack_14;
  
  iStack_14 = param_4;
  if (param_1 == 0) {
    if (param_3[2] == 0) {
      bVar1 = *param_3;
      uVar3 = sub_0203769C();
      if (bVar1 == uVar3) {
        if (param_3[3] != 0) {
          *(ushort *)(param_4 + 0x93b8) = (ushort)param_3[1];
          func_0x021e6fc8(param_4,8,*param_3);
          return;
        }
        func_0x021e6fc8(param_4,9,(uint)bVar1);
        return;
      }
    }
    else {
      if (param_3[2] != 1) {
        return;
      }
      func_0x021e6fc8(param_4,0x15,*param_3);
    }
  }
  else {
    iVar2 = sub_0203769C();
    if (iVar2 == 0) {
      bStack_16 = param_3[2];
      bStack_15 = param_3[3];
      uStack_18 = (undefined1)param_1;
      uStack_17 = (undefined1)*(undefined4 *)(param_4 + 0x318);
      if (param_3[2] == 0) {
        iVar2 = sub_02037454();
        if ((*(int *)(param_4 + 0x318) == iVar2) &&
           (iVar2 = func_0x021e75e0(), *(int *)(param_4 + 0x318) == iVar2)) {
          sub_02033250();
          iVar2 = func_0x020e3714();
          if (*(int *)(param_4 + 0x318) == iVar2) {
            *(uint *)(param_4 + 0x93b4) = 1 << (param_1 & 0xff) | *(uint *)(param_4 + 0x93b4);
            bStack_15 = 1;
            sub_02037454();
            sub_02038C1C();
            goto LAB_0208f9ec;
          }
        }
        bStack_15 = 0;
      }
LAB_0208f9ec:
      sub_02037108(0x7e,&uStack_18,4);
      return;
    }
  }
  return;
}

