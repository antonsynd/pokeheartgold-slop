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
undefined4 sub_0208A834();
undefined4 sub_0208DB64();
undefined4 sub_0208A79C();
undefined4 sub_0208A71C();
undefined4 sub_0208AFA0();
undefined4 Sprite_SetDrawFlag(void *, int);
undefined4 PlaySE(unsigned short);
undefined4 sub_0208BB24();
extern undefined _DAT_021d1154 __asm__("sub_021D1154");
undefined4 sub_0208B044();
undefined4 sub_0208ADDC();



undefined4 sub_02088E98(undefined *param_1)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  uint uVar4;
  
  if ((_DAT_021d1154 & 0x40) != 0) {
    iVar1 = sub_0208A71C((int)param_1,-1);
    if (iVar1 == 1) {
      PlaySE(0x5dc);
      sub_0208A79C((int)param_1);
    }
    return 6;
  }
  if ((_DAT_021d1154 & 0x80) != 0) {
    iVar1 = sub_0208A71C((int)param_1,1);
    if (iVar1 == 1) {
      PlaySE(0x5dc);
      sub_0208A79C((int)param_1);
    }
    return 6;
  }
  if ((_DAT_021d1154 & 1) != 0) {
    uVar3 = _DAT_021d1154;
    sub_0208AFA0((int)param_1,1);
    Sprite_SetDrawFlag(*(undefined **)(param_1 + 0x42c),0);
    if ((param_1[0x7bd] & 0xf) == (byte)param_1[0x7bd] >> 4) {
      PlaySE(0x5dc);
    }
    else {
      PlaySE(0x5dd);
      sub_0208A834(param_1);
      sub_0208BB24((int)param_1,(byte)param_1[0x7bd] & 0xf,(uint)((byte)param_1[0x7bd] >> 4),uVar3);
      sub_0208DB64((int)param_1);
      sub_0208A79C((int)param_1);
    }
    return 5;
  }
  if ((_DAT_021d1154 & 2) != 0) {
    PlaySE(0x940);
    sub_0208AFA0((int)param_1,1);
    Sprite_SetDrawFlag(*(undefined **)(param_1 + 0x42c),0);
    uVar2 = sub_0208B044((int)param_1,5);
    return uVar2;
  }
  uVar3 = sub_0208ADDC();
  if (uVar3 == 4) {
    PlaySE(0x940);
    sub_0208AFA0((int)param_1,1);
    Sprite_SetDrawFlag(*(undefined **)(param_1 + 0x42c),0);
    uVar2 = sub_0208B044((int)param_1,5);
    return uVar2;
  }
  if ((uVar3 != 0xffffffff) && (*(short *)(param_1 + uVar3 * 2 + 0x264) != 0)) {
    sub_0208AFA0((int)param_1,1);
    Sprite_SetDrawFlag(*(undefined **)(param_1 + 0x42c),0);
    if (uVar3 == (byte)param_1[0x7bd] >> 4) {
      PlaySE(0x5dc);
    }
    else {
      uVar4 = uVar3 & 0xff;
      param_1[0x7bd] = param_1[0x7bd] & 0xf0 | (byte)uVar3 & 0xf;
      PlaySE(0x5dd);
      sub_0208A834(param_1);
      sub_0208BB24((int)param_1,(byte)param_1[0x7bd] & 0xf,(uint)((byte)param_1[0x7bd] >> 4),uVar4);
      sub_0208DB64((int)param_1);
      sub_0208A79C((int)param_1);
    }
    return 5;
  }
  return 6;
}

