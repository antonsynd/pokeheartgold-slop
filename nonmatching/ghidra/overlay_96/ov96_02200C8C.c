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
undefined4 ov96_021EB52C();
undefined4 Sprite_SetMatrix();
undefined4 ov96_021EB5B8();
undefined4 ov96_02200D7C();
undefined4 ov96_021EB408();
undefined4 ov96_021EB564();
undefined4 ov96_021EB4F4();

void ov96_02200C8C(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  uint *puVar2;
  uint *puVar3;
  int iVar4;
  int iVar5;
  uint auStack_34 [6];
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  auStack_34[2] = 0x66;
  auStack_34[3] = 0x67;
  puVar3 = auStack_34 + 2;
  puVar2 = auStack_34;
  auStack_34[0] = 4;
  auStack_34[1] = 5;
  iVar5 = 0;
  do {
    ov96_021EB408(param_1,3,2,*puVar3 & 0xff,*puVar2 & 0xff);
    iVar5 = iVar5 + 1;
    puVar2 = puVar2 + 1;
    puVar3 = puVar3 + 1;
  } while (iVar5 < 2);
  iVar4 = 0;
  puVar3 = auStack_34;
  puVar2 = auStack_34 + 2;
  iVar5 = param_2;
  do {
    uVar1 = ov96_021EB4F4(param_1,*puVar2 & 0xff,*puVar3 & 0xff);
    *(undefined4 *)(iVar5 + 0x150) = uVar1;
    uVar1 = ov96_021EB5B8(*(undefined4 *)(iVar5 + 0x150));
    uStack_1c = 0;
    auStack_34[4] = 0x28000;
    auStack_34[5] = ((1 - iVar4) * 0x58 + 0x30) * 0x1000 + 0x200000;
    Sprite_SetMatrix(uVar1,auStack_34 + 4);
    ov96_021EB52C(*(undefined4 *)(iVar5 + 0x150),1,1);
    uVar1 = ov96_021EB4F4(param_1,0x65,0x10);
    *(undefined4 *)(iVar5 + 0x158) = uVar1;
    ov96_021EB564(*(undefined4 *)(iVar5 + 0x158),8);
    ov96_021EB588(*(undefined4 *)(iVar5 + 0x158),auStack_34 + 4);
    ov96_021EB52C(*(undefined4 *)(iVar5 + 0x158),1,0);
    iVar4 = iVar4 + 1;
    puVar3 = puVar3 + 1;
    puVar2 = puVar2 + 1;
    iVar5 = iVar5 + 4;
  } while (iVar4 < 2);
  ov96_02200D7C(param_1,param_2);
  return;
}

