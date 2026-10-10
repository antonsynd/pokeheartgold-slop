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
undefined4 ov108_021E9528();
undefined4 ov108_021EA584();
undefined4 ov108_021EA2EC();
undefined4 PlaySE();
undefined4 ov108_021EA47C();
extern uint uRam021d1154 __asm__("sub_021D1154");

undefined4 ov108_021E95AC(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  char cVar3;
  char cVar4;
  byte bVar5;
  
  cVar3 = '\0';
  if ((uRam021d1154 & 0xcf3) != 0) {
    *(undefined4 *)(param_1 + 0x10) = 0;
  }
  if ((uRam021d1154 & 2) != 0) {
    uVar2 = ov108_021E9528(param_1,6);
    return uVar2;
  }
  if ((uRam021d1154 & 1) != 0) {
    uVar2 = ov108_021E9528(param_1,*(undefined1 *)(param_1 + 0x431));
    return uVar2;
  }
  if ((uRam021d1154 & 0xf0) == 0) {
    return 0;
  }
  iVar1 = -((int)((uint)*(byte *)(param_1 + 0x431) * -0x80000000) >> 0x1f);
  cVar4 = (char)iVar1;
  bVar5 = *(byte *)(param_1 + 0x431) >> 1;
  if ((uRam021d1154 & 0x10) == 0) {
    if ((uRam021d1154 & 0x20) == 0) {
      if ((uRam021d1154 & 0x40) == 0) {
        if ((uRam021d1154 & 0x80) != 0) {
          bVar5 = bVar5 + 1 & 3;
        }
      }
      else {
        bVar5 = bVar5 + 3 & 3;
      }
    }
    else {
      if (bVar5 == 3) {
        return 0;
      }
      if (iVar1 == 0) {
        if ((*(char *)(param_1 + 0x430) == '\0') || (2 < bVar5)) {
          return 0;
        }
        *(char *)(param_1 + 0x430) = *(char *)(param_1 + 0x430) + -1;
        cVar3 = '\x01';
      }
      else {
        cVar4 = cVar4 + -1;
      }
    }
  }
  else {
    if (bVar5 == 3) {
      return 0;
    }
    if (iVar1 == 1) {
      if (((int)(*(byte *)(param_1 + 0x42e) - 1) <= (int)(uint)*(byte *)(param_1 + 0x430)) ||
         (2 < bVar5)) {
        return 0;
      }
      *(char *)(param_1 + 0x430) = *(char *)(param_1 + 0x430) + '\x01';
      cVar3 = '\x02';
    }
    else {
      cVar4 = cVar4 + '\x01';
    }
  }
  *(byte *)(param_1 + 0x431) = cVar4 + bVar5 * '\x02';
  if (cVar3 != '\0') {
    ov108_021EA584(param_1,cVar3 + -1,param_1 + 0x14,0,param_4);
    return 0;
  }
  PlaySE(0x5e5);
  ov108_021EA2EC(param_1,*(undefined1 *)(param_1 + 0x431));
  ov108_021EA47C(param_1);
  return 0;
}

