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
undefined4 sub_0208A2C0();
undefined4 sub_0208B044();
undefined4 sub_0208AEC4();
undefined4 sub_02089E30();
undefined4 sub_0208ADCC();
undefined4 PlaySE();
undefined4 sub_0208ADB8();
extern int uRam021d1154 __asm__("sub_021D1154");
extern uint uRam021d1158 __asm__("sub_021D1158");
undefined4 sub_0208B0B0();
undefined4 sub_0208A2E0();
undefined4 sub_0208AEB4();
undefined4 sub_02089E98();

undefined4 sub_02088B40(int param_1)

{
  undefined4 uVar1;
  int iVar2;

  if (*(byte *)(param_1 + 0x7bf) >> 4 == 1) {
    *(undefined1 *)(*(int *)(param_1 + 0x22c) + 0x17) = 1;
    return 0x15;
  }
  if ((uRam021d1158 & 0x20) != 0) {
    sub_02089E30(param_1,0xffffffff);
    return 2;
  }
  if ((uRam021d1158 & 0x10) != 0) {
    sub_02089E30(param_1,1);
    return 2;
  }
  if ((uRam021d1158 & 0x40) != 0) {
    sub_0208A2C0(param_1,0xffffffff);
    return 0x13;
  }
  if ((uRam021d1158 & 0x80) != 0) {
    sub_0208A2C0(param_1,1);
    return 0x13;
  }
  if ((uRam021d1154 & 2) != 0) {
    PlaySE(0x940);
    *(undefined1 *)(*(int *)(param_1 + 0x22c) + 0x17) = 1;
    sub_0208ADB8(param_1,0);
    uVar1 = sub_0208B044(param_1,0x15);
    return uVar1;
  }
  if ((uRam021d1154 & 1) != 0) {
    if (*(char *)(param_1 + 0x7bc) == '\x01') {
      PlaySE(0x69b);
      *(byte *)(param_1 + 0x7bd) = *(byte *)(param_1 + 0x7bd) & 0xf0;
      return 3;
    }
    if ((*(char *)(param_1 + 0x7bc) == '\x02') && (*(char *)(param_1 + 0x7c6) != '\0')) {
      PlaySE(0x5dd);
      *(undefined1 *)(param_1 + 0x7c4) = 0;
      return 10;
    }
  }
  if (((*(char *)(param_1 + 0x7bc) == '\x01') && (iVar2 = sub_0208ADCC(param_1), iVar2 != -1)) &&
     (*(short *)(param_1 + iVar2 * 2 + 0x264) != 0)) {
    PlaySE(0x69b);
    *(byte *)(param_1 + 0x7bd) = *(byte *)(param_1 + 0x7bd) & 0xf0 | (byte)iVar2 & 0xf;
    return 3;
  }
  if (((*(char *)(param_1 + 0x7bc) == '\x02') && (iVar2 = sub_0208AEC4(param_1), iVar2 != -1)) &&
     ((iVar2 < 9 && (iVar2 < (int)(uint)*(byte *)(param_1 + 0x7c6))))) {
    PlaySE(0x5dd);
    *(char *)(param_1 + 0x7c4) = (char)iVar2;
    return 10;
  }
  if (*(char *)(*(int *)(param_1 + 0x22c) + 0x11) == '\x02') {
    iVar2 = sub_0208AEB4(param_1);
    if (iVar2 == 0) {
      iVar2 = sub_0208A2E0(param_1,0xffffffff);
      if (iVar2 == -1) {
        return 2;
      }
      PlaySE(0x5dd);
      uVar1 = sub_0208B0B0(param_1,0,0x14);
      return uVar1;
    }
    if (iVar2 == 1) {
      iVar2 = sub_0208A2E0(param_1,1);
      if (iVar2 == -1) {
        return 2;
      }
      PlaySE(0x5dd);
      uVar1 = sub_0208B0B0(param_1,1,0x14);
      return uVar1;
    }
  }
  uVar1 = sub_02089E98(param_1);
  return uVar1;
}

