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
undefined4 ov103_021EDB18();
undefined4 func_0x02019be4() __asm__("sub_02019BE4");
undefined4 ov103_021EEA24();
undefined4 func_0x02019f74() __asm__("sub_02019F74");
undefined4 ov103_021EDA98();
undefined4 PlaySE();
extern uint uRam021d1158 __asm__("sub_021D1158");



undefined4 ov103_021ED5B4(int param_1)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  
  iVar1 = ov103_021EEA24();
  if (iVar1 == 0) {
    if (*(short *)(param_1 + 0x1c) != 0) {
      *(short *)(param_1 + 0x1c) = *(short *)(param_1 + 0x1c) + -1;
      PlaySE(0x5dc);
      uVar3 = ov103_021EDB18(param_1,0,0xb);
      return uVar3;
    }
    return 9;
  }
  if (iVar1 == 1) {
    if (*(short *)(param_1 + 0x1c) != *(short *)(*(int *)(param_1 + 0xc) + 0x2e2)) {
      *(short *)(param_1 + 0x1c) = *(short *)(param_1 + 0x1c) + 1;
      PlaySE(0x5dc);
      uVar3 = ov103_021EDB18(param_1,1,0xb);
      return uVar3;
    }
    return 9;
  }
  uVar2 = func_0x02019be4(*(undefined4 *)(*(int *)(param_1 + 0xc) + 0x278));
  if (uVar2 < 0xfffffffe) {
    if (uVar2 < 0xfffffffd) {
      switch(uVar2) {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        if (*(char *)(*(int *)(param_1 + 0xc) + uVar2 + (uint)*(ushort *)(param_1 + 0x1c) * 10 +
                     0x2cc) != -1) {
          *(char *)(param_1 + 0x1e) = (char)uVar2;
          *(undefined1 *)(param_1 + 0x1f) =
               *(undefined1 *)
                (*(int *)(param_1 + 0xc) + uVar2 + (uint)*(ushort *)(param_1 + 0x1c) * 10 + 0x2cc);
          PlaySE(0x5dd);
          uVar3 = ov103_021EDA98(param_1,uVar2,0xc);
          return uVar3;
        }
        break;
      case 10:
LAB_021ed6a0:
        PlaySE(0x5dd);
        uVar3 = ov103_021EDB18(param_1,3,10);
        return uVar3;
      }
    }
    else {
      PlaySE(0x5dc);
    }
  }
  else if (uVar2 == 0xffffffff) {
    iVar1 = func_0x02019f74(*(undefined4 *)(*(int *)(param_1 + 0xc) + 0x278));
    if ((((uRam021d1158 & 0x10) != 0) &&
        ((((iVar1 == 1 || (iVar1 == 3)) || (iVar1 == 5)) || ((iVar1 == 7 || (iVar1 == 9)))))) &&
       (*(short *)(param_1 + 0x1c) != *(short *)(*(int *)(param_1 + 0xc) + 0x2e2))) {
      *(short *)(param_1 + 0x1c) = *(short *)(param_1 + 0x1c) + 1;
      PlaySE(0x5dc);
      uVar3 = ov103_021EDB18(param_1,1,0xb);
      return uVar3;
    }
    if (((uRam021d1158 & 0x20) != 0) &&
       ((((iVar1 == 0 || (iVar1 == 2)) || ((iVar1 == 4 || ((iVar1 == 6 || (iVar1 == 8)))))) &&
        (*(short *)(param_1 + 0x1c) != 0)))) {
      *(short *)(param_1 + 0x1c) = *(short *)(param_1 + 0x1c) + -1;
      PlaySE(0x5dc);
      uVar3 = ov103_021EDB18(param_1,0,0xb);
      return uVar3;
    }
  }
  else if (uVar2 == 0xfffffffe) goto LAB_021ed6a0;
  return 9;
}

