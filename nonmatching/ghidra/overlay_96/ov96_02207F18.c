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
undefined4 Sprite_SetDrawFlag();
undefined4 ov96_021EB564();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 ov96_02208914();
undefined4 ov96_021EA2C4();
undefined4 ov96_021EB5E8();
undefined4 ov96_021EB3E4();
extern undefined ov96_0221CBC4;
extern undefined ov96_0221CBC8;

void ov96_02207F18(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined *puVar5;
  byte *pbVar6;
  int iStack_3c;
  undefined4 *puStack_38;
  undefined4 *puStack_34;
  int iStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  int aiStack_20 [3];

  iStack_30 = 0;
  puVar3 = param_1 + 0x4f;
  puStack_38 = param_1 + 0x5f;
  puStack_34 = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,3,2,0x65,2);
    puStack_34[0xe] = uVar1;
    uVar1 = ov96_021EB3E4(param_2,3,2,0x65,3);
    puStack_34[0x10] = uVar1;
    uVar1 = ov96_021EB3E4(param_2,3,2,0x65,10);
    puStack_34[0xf] = uVar1;
    uVar1 = ov96_021EB3E4(param_2,2,2,0x65,0x13);
    puVar3[2] = uVar1;
    ov96_021EB564(uVar1,0);
    ov96_021EB52C(puVar3[2],1,1);
    uVar1 = ov96_021EB3E4(param_2,2,2,0x65,0x15);
    puVar3[1] = uVar1;
    ov96_021EB564(uVar1,9);
    ov96_021EB52C(puVar3[1],1,1);
    uVar1 = ov96_021EB3E4(param_2,2,2,0x65,0x14);
    *puVar3 = uVar1;
    ov96_021EB564(puStack_34[0xe],iStack_30 + 0x13);
    ov96_021EB564(puStack_34[0x10],iStack_30 + 5);
    ov96_021EB564(*puVar3,3);
    ov96_021EB52C(*puVar3,1,1);
    iVar4 = 0;
    puVar2 = puStack_38;
    do {
      uVar1 = ov96_021EB3E4(param_2,2,2,0x65,0x18);
      *puVar2 = uVar1;
      puVar2 = puVar2 + 1;
      ov96_021EB564(uVar1,2);
      iVar4 = iVar4 + 1;
    } while (iVar4 < 2);
    puVar3 = puVar3 + 4;
    puStack_34 = puStack_34 + 7;
    puStack_38 = puStack_38 + 2;
    iStack_30 = iStack_30 + 1;
  } while (iStack_30 < 4);
  uStack_2c = 0x70000;
  uStack_28 = 0x2c4000;
  uStack_24 = 0;
  uVar1 = ov96_021EB3E4(param_2,3,2,0x65,0x16);
  param_1[0x4e] = uVar1;
  ov96_021EB564(param_1[0x4e],4);
  ov96_021EB52C(param_1[0x4e],1,1);
  ov96_021EB588(param_1[0x4e],&uStack_2c);
  ov96_02208914(param_2,param_1);
  pbVar6 = &ov96_0221CBC4;
  puVar5 = &ov96_0221CBC8;
  iStack_3c = 0;
  puVar3 = param_1;
  do {
    uVar1 = ov96_021EB5E8(param_2);
    uVar1 = ov96_021EA2C4(param_3,uVar1,3,*param_1);
    puVar3[0x6d] = uVar1;
    Sprite_SetDrawFlag(puVar3[0x6d],1);
    aiStack_20[0] = (uint)*pbVar6 << 0xc;
    aiStack_20[1] = 0x2c4000;
    aiStack_20[2] = 0;
    Sprite_SetMatrix(puVar3[0x6d],aiStack_20);
    Sprite_SetAnimCtrlSeq(puVar3[0x6d],*puVar5);
    puVar3 = puVar3 + 1;
    iStack_3c = iStack_3c + 1;
    pbVar6 = pbVar6 + 1;
    puVar5 = puVar5 + 1;
  } while (iStack_3c < 2);
  return;
}

