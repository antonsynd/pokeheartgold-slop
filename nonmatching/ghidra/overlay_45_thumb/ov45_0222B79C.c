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
undefined4 ov45_0222EA2C();
undefined4 ov45_0222EDF0();
undefined4 ov45_0222AA84();
undefined4 ov45_0222D638();
undefined4 ov45_0222EC10();
undefined4 ov45_0222EDC4();
undefined4 ov45_0222AAA8();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");

void ov45_0222B79C(int param_1,undefined4 param_2)

{
  undefined1 uVar1;
  undefined2 uVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  undefined1 auStack_1c [4];
  int iStack_18;

  func_0x020e5b44(param_2,0,200);
  ov45_0222EC10(auStack_1c);
  uVar2 = ov45_0222AA84(param_1 + 0x20);
  uVar1 = ov45_0222AAA8(param_1 + 0x20);
  ov45_0222D638(param_2,uVar2,uVar1,0);
  iVar6 = 0;
  iVar4 = 0;
  do {
    if (*(int *)(iStack_18 + iVar4) != -1) {
      uVar3 = ov45_0222EA2C();
      uVar2 = ov45_0222AA84();
      uVar1 = ov45_0222AAA8(uVar3);
      ov45_0222D638(param_2,uVar2,uVar1,0);
    }
    iVar6 = iVar6 + 1;
    iVar4 = iVar4 + 4;
  } while (iVar6 < 0x14);
  uVar5 = 0;
  do {
    uVar1 = ov45_0222EDC4(uVar5 & 0xff);
    uVar3 = ov45_0222EDF0(uVar5 & 0xff);
    ov45_0222D638(param_2,uVar1,uVar3,1);
    uVar5 = uVar5 + 1;
  } while ((int)uVar5 < 0x14);
  return;
}

