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
undefined4 sub_0208DBF0();
undefined4 sub_0208A71C();
undefined4 PlaySE();
undefined4 sub_0208A79C();
undefined4 MoveIsHM();
undefined4 sub_0208AED4();
undefined4 thunk_Sprite_SetDrawFlag();
extern int uRam021d1154 __asm__("sub_021D1154");
undefined4 sub_0208BBDC();
undefined4 sub_0208B044();
undefined4 sub_0208AE48();

undefined4 sub_02089028(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;

  if ((uRam021d1154 & 0x40) != 0) {
    iVar1 = sub_0208A71C(param_1,0xffffffff,uRam021d1154,uRam021d1154,param_4);
    if (iVar1 == 1) {
      PlaySE(0x5dc);
      sub_0208A79C(param_1);
    }
    return 8;
  }
  if ((uRam021d1154 & 0x80) != 0) {
    iVar1 = sub_0208A71C(param_1,1,uRam021d1154,uRam021d1154,param_4);
    if (iVar1 == 1) {
      PlaySE(0x5dc);
      sub_0208A79C(param_1);
    }
    return 8;
  }
  if ((uRam021d1154 & 1) != 0) {
    PlaySE(0x5dd);
    uVar2 = *(byte *)(param_1 + 0x7bd) & 0xf;
    if (uVar2 == 4) {
      *(undefined1 *)(*(int *)(param_1 + 0x22c) + 0x16) = 4;
      *(undefined1 *)(*(int *)(param_1 + 0x22c) + 0x17) = 0;
      return 0x15;
    }
    iVar1 = MoveIsHM(*(undefined2 *)(param_1 + uVar2 * 2 + 0x264));
    if ((iVar1 == 1) && (*(short *)(*(int *)(param_1 + 0x22c) + 0x18) != 0)) {
      thunk_Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x44c),0);
      sub_0208DBF0(param_1);
      return 8;
    }
    uVar3 = sub_0208AED4(param_1);
    return uVar3;
  }
  if ((uRam021d1154 & 2) != 0) {
    PlaySE(0x940);
    *(undefined1 *)(*(int *)(param_1 + 0x22c) + 0x16) = 4;
    *(undefined1 *)(*(int *)(param_1 + 0x22c) + 0x17) = 1;
    uVar3 = sub_0208B044(param_1,0x15);
    return uVar3;
  }
  iVar1 = sub_0208AE48();
  if (iVar1 != -1) {
    if (iVar1 == 4) {
      if (*(short *)(*(int *)(param_1 + 0x22c) + 0x18) != 0) {
        PlaySE(0x5dd);
        *(byte *)(param_1 + 0x7bd) = *(byte *)(param_1 + 0x7bd) & 0xf0 | 4;
        sub_0208A79C(param_1);
      }
    }
    else {
      if (iVar1 == 5) {
        PlaySE(0x940);
        *(byte *)(param_1 + 0x7bd) = *(byte *)(param_1 + 0x7bd) & 0xf0 | 5;
        *(undefined1 *)(*(int *)(param_1 + 0x22c) + 0x16) = 4;
        *(undefined1 *)(*(int *)(param_1 + 0x22c) + 0x17) = 0;
        uVar3 = sub_0208B044(param_1,0x15);
        return uVar3;
      }
      iVar4 = MoveIsHM(*(undefined2 *)(param_1 + 0x264 + iVar1 * 2));
      if ((iVar4 == 1) && (*(short *)(*(int *)(param_1 + 0x22c) + 0x18) != 0)) {
        PlaySE(0x5dd);
        *(byte *)(param_1 + 0x7bd) = *(byte *)(param_1 + 0x7bd) & 0xf0 | (byte)iVar1 & 0xf;
        thunk_Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x44c),0);
        sub_0208BBDC(param_1);
        sub_0208DBF0(param_1);
        return 8;
      }
      if (*(short *)(param_1 + 0x264 + iVar1 * 2) != 0) {
        PlaySE(0x5dd);
        *(byte *)(param_1 + 0x7bd) = *(byte *)(param_1 + 0x7bd) & 0xf0 | (byte)iVar1 & 0xf;
        sub_0208A79C(param_1);
        uVar3 = sub_0208AED4(param_1);
        return uVar3;
      }
    }
  }
  return 8;
}

