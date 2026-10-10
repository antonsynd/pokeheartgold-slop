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
undefined4 ov96_021EB408();
undefined4 ov96_021EB564();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 ov96_02200C8C();
undefined4 Sprite_SetDrawFlag();
undefined4 ov96_021EA2C4();
undefined4 ov96_021EB5E8();
undefined4 ov96_021EB3E4();
undefined4 ov96_021EB4F4();
extern undefined ov96_0221C720;

void ov96_02200180(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined *puVar4;
  byte *pbVar5;
  int iStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  int aiStack_24 [4];
  
  iVar2 = 0;
  aiStack_24[3] = param_4;
  do {
    ov96_021EB408(param_2,3,2,0x65,2);
    ov96_021EB408(param_2,3,2,0x65,3);
    ov96_021EB408(param_2,3,2,0x65,8);
    ov96_021EB408(param_2,3,2,0x65,10);
    iVar2 = iVar2 + 1;
  } while (iVar2 < 4);
  iVar2 = 0;
  do {
    ov96_021EB408(param_2,3,2,0x65,0x10);
    iVar2 = iVar2 + 1;
  } while (iVar2 < 2);
  iVar2 = 0;
  puVar3 = param_1;
  do {
    uVar1 = ov96_021EB4F4(param_2,0x65,2);
    puVar3[0x12] = uVar1;
    uVar1 = ov96_021EB4F4(param_2,0x65,3);
    puVar3[0x15] = uVar1;
    uVar1 = ov96_021EB4F4(param_2,0x65,8);
    puVar3[0x14] = uVar1;
    uVar1 = ov96_021EB4F4(param_2,0x65,10);
    puVar3[0x13] = uVar1;
    ov96_021EB564(puVar3[0x12],iVar2);
    ov96_021EB564(puVar3[0x15],iVar2 + 4);
    ov96_021EB564(puVar3[0x14],10);
    iVar2 = iVar2 + 1;
    puVar3 = puVar3 + 8;
  } while (iVar2 < 4);
  uVar1 = ov96_021EB3E4(param_2,3,2,0x65,0x11);
  ov96_021EB52C(uVar1,1,1);
  ov96_021EB564(uVar1,0xb);
  uStack_28 = 0;
  uStack_30 = 0x80000;
  uStack_2c = 0x238000;
  ov96_021EB588(uVar1,&uStack_30);
  ov96_02200C8C(param_2,param_1);
  pbVar5 = (byte *)0x221c718;
  puVar4 = &ov96_0221C720;
  iStack_34 = 0;
  puVar3 = param_1;
  do {
    uVar1 = ov96_021EB5E8(param_2);
    uVar1 = ov96_021EA2C4(param_3,uVar1,3,*param_1);
    puVar3[0x5f] = uVar1;
    Sprite_SetDrawFlag(puVar3[0x5f],1);
    aiStack_24[0] = (uint)*pbVar5 << 0xc;
    aiStack_24[1] = 0x238000;
    aiStack_24[2] = 0;
    Sprite_SetMatrix(puVar3[0x5f],aiStack_24);
    Sprite_SetAnimCtrlSeq(puVar3[0x5f],*puVar4);
    puVar3 = puVar3 + 1;
    iStack_34 = iStack_34 + 1;
    pbVar5 = pbVar5 + 1;
    puVar4 = puVar4 + 1;
  } while (iStack_34 < 6);
  return;
}

