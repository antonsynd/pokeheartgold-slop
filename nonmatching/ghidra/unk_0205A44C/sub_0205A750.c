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
undefined4 sub_02035798();
undefined4 PlayerProfile_GetTrainerGender();
undefined4 sub_0205A730();
undefined4 sub_020398D4();
undefined4 sub_02039AD8();
undefined4 sub_0205A544();
extern undefined UNK_020fc7dc __asm__("sub_020FC7DC");
extern undefined UNK_020fc7ec __asm__("sub_020FC7EC");
extern undefined UNK_020fc838 __asm__("sub_020FC838");
extern undefined UNK_020fc95c __asm__("sub_020FC95C");
extern undefined UNK_020fc880 __asm__("sub_020FC880");
extern undefined UNK_020fc850 __asm__("sub_020FC850");
extern undefined UNK_020fc7e4 __asm__("sub_020FC7E4");
extern undefined UNK_020fc868 __asm__("sub_020FC868");
extern undefined UNK_020fc934 __asm__("sub_020FC934");
extern undefined UNK_020fc7f4 __asm__("sub_020FC7F4");
extern undefined UNK_020fc7d4 __asm__("sub_020FC7D4");

undefined4 sub_0205A750(int param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  
  if (param_3 == 0) {
    uVar1 = sub_0205A544(param_1,param_2 + -1);
    return uVar1;
  }
  iVar2 = sub_02035798(param_2 + -1);
  if (iVar2 == 0) {
    sub_020398D4(1,1);
    sub_02039AD8(1);
    return 0;
  }
  iVar2 = PlayerProfile_GetTrainerGender();
  switch(param_3) {
  default:
    GF_AssertFail();
    return 0x28;
  case 1:
    uVar1 = sub_0205A730(*(int *)(param_1 + 0x34) + -1,iVar2,param_4);
    return uVar1;
  case 2:
    return *(undefined4 *)(&UNK_020fc7d4 + iVar2 * 4);
  case 3:
  case 4:
  case 5:
  case 6:
  case 7:
  case 8:
    return *(undefined4 *)(&UNK_020fc934 + iVar2 * 4 + (param_3 + -3) * 8);
  case 9:
    break;
  case 10:
  case 0xb:
  case 0xc:
    return *(undefined4 *)(&UNK_020fc838 + iVar2 * 4 + (param_3 + -10) * 8);
  case 0xd:
  case 0xe:
  case 0xf:
    return *(undefined4 *)(&UNK_020fc850 + iVar2 * 4 + (param_3 + -0xd) * 8);
  case 0x10:
  case 0x11:
  case 0x12:
    return *(undefined4 *)(&UNK_020fc868 + iVar2 * 4 + (param_3 + -0x10) * 8);
  case 0x13:
  case 0x14:
  case 0x15:
    return *(undefined4 *)(&UNK_020fc880 + iVar2 * 4 + (param_3 + -0x13) * 8);
  case 0x16:
    return *(undefined4 *)(&UNK_020fc7e4 + iVar2 * 4);
  case 0x17:
    return *(undefined4 *)(&UNK_020fc7dc + iVar2 * 4);
  case 0x18:
    return *(undefined4 *)(&UNK_020fc7ec + iVar2 * 4);
  case 0x19:
    return 0xda;
  case 0x1a:
    return *(undefined4 *)(&UNK_020fc7f4 + iVar2 * 4);
  }
  if (*(int *)(param_1 + 0x34) == 0) {
    return 0;
  }
  return *(undefined4 *)(&UNK_020fc95c + iVar2 * 4 + *(int *)(param_1 + 0x34) * 8);
}

