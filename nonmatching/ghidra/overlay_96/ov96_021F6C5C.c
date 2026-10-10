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
undefined4 ov96_021EB52C();
undefined4 Sprite_SetMatrix();
undefined4 ov96_021F74D0();
undefined4 ov96_021EB630();
undefined4 ov96_021EB564();
undefined4 ov96_021EA634();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 Sprite_SetDrawFlag();
undefined4 ov96_021EB5E8();
undefined4 ov96_021EB3E4();
extern undefined ov96_0221C0B4;
extern undefined ov96_0221C0B0;

void ov96_021F6C5C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined *puVar4;
  byte *pbVar5;
  int iStack_28;
  int aiStack_24 [4];

  aiStack_24[3] = param_4;
  ov96_021F74D0(*(undefined4 *)(param_1 + 0x8c),param_2,2);
  uVar1 = ov96_021EB3E4(param_2,1,3,0x65,3);
  *(undefined4 *)(param_1 + 100) = uVar1;
  ov96_021EB564(uVar1,0xc);
  ov96_021EB52C(*(undefined4 *)(param_1 + 100),1,1);
  iVar3 = 0;
  iVar2 = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,1,3,0x65,4);
    *(undefined4 *)(iVar2 + 0x68) = uVar1;
    ov96_021EB564(uVar1,iVar3 + 0xd);
    ov96_021EB52C(*(undefined4 *)(iVar2 + 0x68),1,1);
    iVar3 = iVar3 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar3 < 4);
  iVar3 = 0;
  iVar2 = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,1,3,0x65,7);
    *(undefined4 *)(iVar2 + 0x94) = uVar1;
    ov96_021EB564(*(undefined4 *)(iVar2 + 0x94),0xb);
    ov96_021EB630(*(undefined4 *)(iVar2 + 0x94),9);
    iVar3 = iVar3 + 1;
    iVar2 = iVar2 + 0x38;
  } while (iVar3 < 4);
  iVar3 = 0;
  iVar2 = param_1;
  do {
    uVar1 = ov96_021EB3E4(param_2,1,3,0x65,8);
    *(undefined4 *)(iVar2 + 0x78) = uVar1;
    ov96_021EB564(uVar1,9);
    ov96_021EB630(*(undefined4 *)(iVar2 + 0x78),6);
    iVar3 = iVar3 + 1;
    iVar2 = iVar2 + 4;
  } while (iVar3 < 4);
  pbVar5 = &ov96_0221C0B0;
  puVar4 = &ov96_0221C0B4;
  iStack_28 = 0;
  iVar2 = param_1;
  do {
    uVar1 = ov96_021EB5E8(param_2);
    uVar1 = ov96_021EA634(*(undefined4 *)(param_1 + 0x188),uVar1,1,*(undefined4 *)(param_1 + 0x54));
    *(undefined4 *)(iVar2 + 0x84) = uVar1;
    Sprite_SetDrawFlag(*(undefined4 *)(iVar2 + 0x84),1);
    aiStack_24[0] = (uint)*pbVar5 << 0xc;
    aiStack_24[1] = 0x8000;
    aiStack_24[2] = 0;
    Sprite_SetMatrix(*(undefined4 *)(iVar2 + 0x84),aiStack_24);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar2 + 0x84),*puVar4);
    iVar2 = iVar2 + 4;
    iStack_28 = iStack_28 + 1;
    pbVar5 = pbVar5 + 1;
    puVar4 = puVar4 + 1;
  } while (iStack_28 < 2);
  return;
}

