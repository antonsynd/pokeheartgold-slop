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
undefined4 ov96_021EB5B8();
undefined4 Sprite_SetDrawPriority();
undefined4 ov96_021EB630();

void ov96_02200B04(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  byte *pbVar6;
  int iVar7;
  int iStack_20;
  byte abStack_1c [4];
  undefined4 uStack_18;

  iVar7 = 0;
  iVar5 = param_1;
  uStack_18 = param_4;
  do {
    Sprite_SetDrawPriority(*(undefined4 *)(iVar5 + 0x17c),2);
    iVar7 = iVar7 + 1;
    iVar5 = iVar5 + 4;
  } while (iVar7 < 6);
  iVar7 = 0;
  iVar5 = param_1;
  do {
    uVar1 = ov96_021EB5B8(*(undefined4 *)(iVar5 + 0x150));
    Sprite_SetDrawPriority(uVar1,2);
    iVar7 = iVar7 + 1;
    iVar5 = iVar5 + 4;
  } while (iVar7 < 2);
  iVar5 = 0;
  do {
    if (iVar5 == param_2) {
      abStack_1c[0] = (byte)iVar5;
    }
    iVar5 = iVar5 + 1;
  } while (iVar5 < 4);
  uVar4 = 0;
  uVar2 = 1;
  do {
    uVar3 = uVar2;
    if (abStack_1c[0] != uVar4) {
      uVar3 = uVar2 + 1 & 0xff;
      abStack_1c[uVar2] = (byte)uVar4;
    }
    uVar4 = uVar4 + 1;
    uVar2 = uVar3;
  } while ((int)uVar4 < 4);
  iVar7 = 0;
  iVar5 = 3;
  pbVar6 = abStack_1c;
  iStack_20 = 4;
  do {
    ov96_021EB630(*(undefined4 *)(param_1 + (uint)*pbVar6 * 0x20 + 0x4c),iVar5);
    ov96_021EB630(*(undefined4 *)(param_1 + (uint)*pbVar6 * 0x20 + 0x50),iVar5);
    ov96_021EB630(*(undefined4 *)(param_1 + (uint)*pbVar6 * 0x20 + 0x48),iStack_20);
    ov96_021EB630(*(undefined4 *)(param_1 + (uint)*pbVar6 * 0x20 + 0x54),iVar7 + 0xb);
    iVar7 = iVar7 + 1;
    iStack_20 = iStack_20 + 2;
    iVar5 = iVar5 + 2;
    pbVar6 = pbVar6 + 1;
  } while (iVar7 < 4);
  return;
}

