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
undefined4 GF_AssertFail();
undefined4 MapObject_SetFacingDirection();
undefined4 MapObject_SetFlagsBits();
undefined4 MapObject_GetFacingDirection();
undefined4 MapObject_GetFlagsBitsMask();
extern undefined UNK_020fd7e0 __asm__("sub_020FD7E0");

void sub_0206207C(undefined4 param_1,undefined1 *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;

  iVar1 = MapObject_GetFacingDirection();
  iVar3 = 0;
  for (iVar2 = 0;
      (iVar3 < 4 && (iVar1 != *(int *)(&UNK_020fd7e0 + iVar2 + (char)param_2[1] * 0x10)));
      iVar2 = iVar2 + 4) {
    iVar3 = iVar3 + 1;
  }
  if (3 < iVar3) {
    GF_AssertFail();
  }
  iVar2 = iVar3 + 1 >> 0x1f;
  *param_2 = (char)iVar1;
  uVar4 = *(undefined4 *)
           (&UNK_020fd7e0 +
           (((uint)((iVar3 + 1) * 0x40000000 + iVar2) >> 0x1e | iVar2 << 2) - iVar2) * 4 +
           (char)param_2[1] * 0x10);
  iVar1 = MapObject_GetFlagsBitsMask(param_1,0x80);
  param_2[2] = iVar1 != 0;
  MapObject_SetFacingDirection(param_1,uVar4);
  MapObject_SetFlagsBits(param_1,0x80);
  return;
}

