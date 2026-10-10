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
undefined4 ov96_021EB588();
undefined4 Sprite_SetMatrix();
undefined4 ov96_021EB630();
undefined4 ov96_022038A0();
undefined4 ov96_021EA374();
undefined4 ov96_021EB564();
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_SetDrawPriority();
undefined4 ov96_021EB5E8();
undefined4 ov96_021EB3E4();
undefined4 ov96_021EB52C();
extern undefined ov96_0221C910;

void ov96_02201EF0(int param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int iVar5;
  undefined4 *puVar6;
  int iVar7;
  int iStack_68;
  undefined4 *puStack_64;
  int iStack_60;
  undefined4 auStack_5c [9];
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  int aiStack_20 [3];

  iStack_60 = 0;
  iVar7 = 0;
  iVar5 = param_1;
  do {
    uVar1 = ov96_021EB5E8(param_2);
    uVar1 = ov96_021EA374(*(undefined4 *)(param_1 + 0x5d4),uVar1,3,*(undefined4 *)(param_1 + 0x44));
    *(undefined4 *)(iVar5 + 0x50) = uVar1;
    Sprite_SetDrawFlag(uVar1,1);
    aiStack_20[0] = iVar7 * 0x1000 + 0x18000;
    aiStack_20[1] = 0x8000;
    aiStack_20[2] = 0;
    Sprite_SetMatrix(*(undefined4 *)(iVar5 + 0x50),aiStack_20);
    Sprite_SetDrawPriority(*(undefined4 *)(iVar5 + 0x50),2);
    iVar5 = iVar5 + 4;
    iStack_60 = iStack_60 + 1;
    iVar7 = iVar7 + 0x10;
  } while (iStack_60 < 2);
  ov96_022038A0(param_1,0x3c);
  iVar7 = 0;
  iVar5 = param_1;
  do {
    *(char *)(iVar5 + 0xf9) = (char)iVar7;
    uVar1 = ov96_021EB3E4(param_2,3,3,0x6a,3);
    *(undefined4 *)(iVar5 + 0xb8) = uVar1;
    uVar1 = ov96_021EB3E4(param_2,3,3,0x6a,4);
    *(undefined4 *)(iVar5 + 0xbc) = uVar1;
    uVar1 = ov96_021EB3E4(param_2,3,3,0x6a,6);
    *(undefined4 *)(iVar5 + 0xc0) = uVar1;
    ov96_021EB564(*(undefined4 *)(iVar5 + 0xbc),1);
    ov96_021EB630(*(undefined4 *)(iVar5 + 0xb8),0x14);
    ov96_021EB630(*(undefined4 *)(iVar5 + 0xbc),1000);
    ov96_021EB630(*(undefined4 *)(iVar5 + 0xc0),5);
    iVar7 = iVar7 + 1;
    iVar5 = iVar5 + 0x48;
  } while (iVar7 < 0xc);
  iVar7 = 0;
  iVar5 = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,3,3,0x6a,9);
    *(undefined4 *)(iVar5 + 0x418) = uVar1;
    ov96_021EB564(*(undefined4 *)(iVar5 + 0x418),2);
    uStack_2c = 0x1000;
    uStack_28 = 0x1000;
    uStack_24 = 0;
    ov96_021EB588(*(undefined4 *)(iVar5 + 0x418),&uStack_2c);
    ov96_021EB630(*(undefined4 *)(iVar5 + 0x418),4);
    iVar7 = iVar7 + 1;
    iVar5 = iVar5 + 0x20;
  } while (iVar7 < 0xc);
  iVar7 = 0;
  iVar5 = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,2,1,0x69,0xb);
    *(undefined4 *)(iVar5 + 100) = uVar1;
    ov96_021EB564(uVar1,6);
    ov96_021EB630(*(undefined4 *)(iVar5 + 100),2);
    iVar7 = iVar7 + 1;
    iVar5 = iVar5 + 4;
  } while (iVar7 < 3);
  uVar1 = ov96_021EB3E4(param_2,3,1,0x69,7);
  *(undefined4 *)(param_1 + 0x4c) = uVar1;
  uStack_38 = 0x8000;
  uStack_34 = 0x8000;
  uStack_30 = 0;
  ov96_021EB588(*(undefined4 *)(param_1 + 0x4c),&uStack_38);
  ov96_021EB564(*(undefined4 *)(param_1 + 0x4c),5);
  ov96_021EB52C(*(undefined4 *)(param_1 + 0x4c),1,1);
  ov96_021EB630(*(undefined4 *)(param_1 + 0x4c),2);
  puVar6 = (undefined4 *)&ov96_0221C910;
  puVar4 = auStack_5c;
  iVar5 = 4;
  do {
    uVar1 = *puVar6;
    uVar3 = puVar6[1];
    puVar6 = puVar6 + 2;
    *puVar4 = uVar1;
    puVar4[1] = uVar3;
    puVar4 = puVar4 + 2;
    iVar5 = iVar5 + -1;
  } while (iVar5 != 0);
  *puVar4 = *puVar6;
  iVar5 = param_3 + 1 >> 0x1f;
  uVar2 = ((uint)((param_3 + 1) * 0x40000000 + iVar5) >> 0x1e | iVar5 << 2) - iVar5;
  iStack_68 = 0;
  puStack_64 = auStack_5c;
  iVar5 = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,3,1,0x69,8);
    *(undefined4 *)(iVar5 + 0x58) = uVar1;
    ov96_021EB588(uVar1,puStack_64);
    ov96_021EB564(*(undefined4 *)(iVar5 + 0x58),(uVar2 & 0xff) + 1);
    ov96_021EB52C(*(undefined4 *)(iVar5 + 0x58),1,1);
    uVar2 = (uVar2 & 0xff) + 1 & 3;
    ov96_021EB630(*(undefined4 *)(iVar5 + 0x58),3);
    iVar5 = iVar5 + 4;
    puStack_64 = puStack_64 + 3;
    iStack_68 = iStack_68 + 1;
  } while (iStack_68 < 3);
  iVar5 = 0;
  do {
    uVar1 = ov96_021EB3E4(param_2,3,1,0x69,10);
    *(undefined4 *)(param_1 + 0x70) = uVar1;
    ov96_021EB564(uVar1,0);
    ov96_021EB630(*(undefined4 *)(param_1 + 0x70),4);
    iVar5 = iVar5 + 1;
    param_1 = param_1 + 4;
  } while (iVar5 < 9);
  return;
}

