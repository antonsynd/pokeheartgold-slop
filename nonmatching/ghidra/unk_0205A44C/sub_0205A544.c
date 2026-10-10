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
undefined4 sub_0205A51C();
unsigned short LCRandom(void);
undefined4 sub_02035798();
undefined4 PlayerProfile_GetTrainerGender(void *);
undefined4 GF_AssertFail(void);
extern undefined UNK_020fc804 __asm__("sub_020FC804");
extern undefined UNK_020fc7fc __asm__("sub_020FC7FC");
extern undefined UNK_020fc8f4 __asm__("sub_020FC8F4");
extern undefined UNK_020fc914 __asm__("sub_020FC914");
extern undefined UNK_020fc814 __asm__("sub_020FC814");
extern undefined UNK_020fc8b4 __asm__("sub_020FC8B4");
extern undefined UNK_020fc8d4 __asm__("sub_020FC8D4");

undefined4 sub_0205A544(int param_1,int param_2)

{
  int iVar1;
  ushort uVar2;
  int iVar3;
  undefined *puVar4;
  uint uVar5;

  iVar3 = param_2;
  if ((9 < param_2) && (iVar3 = sub_0205A51C(param_2), param_2 == -1)) {
    GF_AssertFail();
  }
  if (*(int *)(param_1 + 0x110 + iVar3 * 4) == 0) {
    return 0x28;
  }
  puVar4 = (undefined *)sub_02035798(iVar3);
  iVar3 = *(int *)(param_1 + 0x110 + iVar3 * 4);
  if (puVar4 == (undefined *)0x0) {
    return 0x28;
  }
  if (param_2 < 10) {
    uVar5 = PlayerProfile_GetTrainerGender(puVar4);
  }
  else {
    iVar1 = param_2 + -10 >> 0x1f;
    uVar5 = (int)(uint)*(byte *)(iVar3 + (((uint)((param_2 + -10) * 0x40000000 + iVar1) >> 0x1e |
                                          iVar1 << 2) - iVar1) + 0x98) >> 7;
  }
  switch(*(undefined1 *)(iVar3 + 0x9c)) {
  default:
    return 0x28;
  case 1:
  case 8:
    uVar2 = LCRandom();
    return *(undefined4 *)(&UNK_020fc8b4 + uVar5 * 4 + (uVar2 & 3) * 8);
  case 2:
  case 9:
    uVar2 = LCRandom();
    return *(undefined4 *)(&UNK_020fc8f4 + uVar5 * 4 + (uVar2 & 3) * 8);
  case 3:
  case 10:
  case 0xc:
  case 0xd:
    uVar2 = LCRandom();
    return *(undefined4 *)(&UNK_020fc914 + uVar5 * 4 + (uVar2 & 3) * 8);
  case 4:
  case 0xb:
    return *(undefined4 *)(&UNK_020fc7fc + uVar5 * 4);
  case 5:
    uVar2 = LCRandom();
    return *(undefined4 *)
            (&UNK_020fc814 + uVar5 * 4 + ((int)((uint)uVar2 * -0x80000000) >> 0x1f) * -8);
  case 6:
    uVar2 = LCRandom();
    return *(undefined4 *)(&UNK_020fc8d4 + uVar5 * 4 + (uVar2 & 3) * 8);
  case 7:
    uVar2 = LCRandom();
    return *(undefined4 *)
            (&UNK_020fc804 + uVar5 * 4 + ((int)((uint)uVar2 * -0x80000000) >> 0x1f) * -8);
  }
}

