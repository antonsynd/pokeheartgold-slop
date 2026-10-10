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
undefined4 sub_020182A0();
undefined4 sub_02018030();
undefined4 sub_020182A8();
undefined4 ov93_0225E45C();
undefined4 sub_0203769C();
undefined4 sub_020181B0();
undefined4 sub_020182C4();
undefined4 sub_020180E8();
undefined4 sub_020180BC();
undefined4 sub_02018198();
extern undefined ov93_02262AF4;
extern undefined ov93_02262B00;
extern undefined ov93_02262AFC;
extern undefined ov93_02262AF0;
extern undefined ov93_02262AF8;

void ov93_0225DD2C(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_24;

  iStack_30 = param_1 + 0xd8;
  iVar5 = 0;
  uVar1 = sub_0203769C();
  iVar2 = ov93_0225E45C(param_1,uVar1);
  iVar2 = iVar2 * 0x14;
  sub_02018030(iStack_30,param_2,*(undefined4 *)(&ov93_02262AF0 + iVar2),0x75);
  sub_020181B0(param_1 + 0xe8,iStack_30);
  sub_020182A8(param_1 + 0xe8,0,0xfffe7000,0);
  sub_020182C4(param_1 + 0xe8,0x1000,0x1000,0x1000);
  sub_020182A0(param_1 + 0xe8,1);
  sub_02018030(param_1 + 0x160,param_2,*(undefined4 *)(&ov93_02262AF4 + iVar2),0x75);
  sub_02018030(param_1 + 0x170,param_2,*(undefined4 *)(&ov93_02262AF8 + iVar2),0x75);
  sub_02018030(param_1 + 0x180,param_2,*(undefined4 *)(&ov93_02262AFC + iVar2),0x75);
  sub_02018030(param_1 + 400,param_2,*(undefined4 *)(&ov93_02262B00 + iVar2),0x75);
  iStack_24 = 0;
  iStack_2c = param_1 + 0x21c;
  do {
    iStack_28 = 0;
    iVar2 = param_1 + 0x160;
    iVar3 = iStack_2c;
    iVar4 = iStack_30;
    do {
      if (iVar5 == 0) {
        sub_020180BC(iVar3,iVar2,param_2,iStack_28 + 0x23,0x75,param_1 + 0xa8);
        iVar5 = *(int *)(iVar4 + 0x144);
      }
      else {
        sub_020180E8(iVar3,iVar2,iVar5,param_1 + 0xa8);
      }
      sub_02018198(iVar3,0);
      iVar2 = iVar2 + 0x10;
      iStack_28 = iStack_28 + 1;
      iVar3 = iVar3 + 0x90;
      iVar4 = iVar4 + 0x90;
    } while (iStack_28 < 4);
    iStack_2c = iStack_2c + 0x240;
    iStack_30 = iStack_30 + 0x240;
    iStack_24 = iStack_24 + 1;
  } while (iStack_24 < 8);
  sub_02018030(param_1 + 0x13a0,param_2,0x1e,0x75);
  sub_020181B0(param_1 + 0x13b0,param_1 + 0x13a0);
  sub_020182A8(param_1 + 0x13b0,0,0xfffe7000,0);
  sub_020182C4(param_1 + 0x13b0,0x1000,0x1000,0x1000);
  sub_020182A0(param_1 + 0x13b0,1);
  return;
}

