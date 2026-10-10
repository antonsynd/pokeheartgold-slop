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
undefined4 sub_0208AEC4();
undefined4 sub_0208B0F4();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 PlaySE();
undefined4 Sprite_GetDrawFlag();
undefined4 sub_0208AB58();
extern int uRam021d1154 __asm__("sub_021D1154");
extern uint uRam021d1158 __asm__("sub_021D1158");

undefined4 sub_0208931C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  
  if ((uRam021d1158 & 0x20) != 0) {
    sub_0208AB58(param_1,0xffffffff,uRam021d1158,0x21d110c,param_4);
    return 0xc;
  }
  if ((uRam021d1158 & 0x10) != 0) {
    sub_0208AB58(param_1,1,uRam021d1158,0x21d110c,param_4);
    return 0xc;
  }
  if ((uRam021d1158 & 0x40) != 0) {
    sub_0208AB58(param_1,0xfffffffd,uRam021d1158,0x21d110c,param_4);
    return 0xc;
  }
  if ((uRam021d1158 & 0x80) != 0) {
    sub_0208AB58(param_1,3,uRam021d1158,0x21d110c,param_4);
    return 0xc;
  }
  if ((uRam021d1154 & 3) != 0) {
    PlaySE(0x940);
    uVar1 = sub_0208B0F4(param_1,0xb);
    return uVar1;
  }
  uVar2 = sub_0208AEC4();
  if (uVar2 < 0x80000000) {
    if (((int)uVar2 < 0xc) && (8 < (int)uVar2)) {
      if (uVar2 == 9) {
        iVar3 = Sprite_GetDrawFlag(*(undefined4 *)(param_1 + 0x504));
        if (iVar3 == 1) {
          PlaySE(0x5dc);
          Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x504),2);
          return 0xd;
        }
      }
      else {
        if (uVar2 != 10) {
          if (uVar2 == 0xb) {
            PlaySE(0x940);
            uVar1 = sub_0208B0F4(param_1,0xb);
            return uVar1;
          }
          goto LAB_020893f8;
        }
        iVar3 = Sprite_GetDrawFlag(*(undefined4 *)(param_1 + 0x508));
        if (iVar3 == 1) {
          PlaySE(0x5dc);
          Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x508),3);
          return 0xe;
        }
      }
      return 0xc;
    }
  }
  else if (uVar2 == 0xffffffff) {
    return 0xc;
  }
LAB_020893f8:
  if (*(byte *)(param_1 + 0x7c4) != uVar2) {
    *(char *)(param_1 + 0x7c4) = (char)uVar2;
    PlaySE(0x5dc);
    sub_0208AB58(param_1,0);
  }
  return 0xc;
}

