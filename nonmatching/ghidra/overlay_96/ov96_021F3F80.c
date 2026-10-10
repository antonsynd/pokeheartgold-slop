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
undefined4 Sprite_SetMatrix();
undefined4 ov96_021EB52C();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 ov96_021EB5B8();
undefined4 Sprite_SetDrawPriority();
undefined4 ov96_021EB408();
undefined4 ov96_021EB4F4();

void ov96_021F3F80(undefined4 param_1,int param_2)

{
  byte bVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  byte abStack_28 [8];
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  iStack_20 = 0;
  iStack_1c = 0;
  uStack_18 = 0;
  abStack_28[4] = 0x20;
  iVar3 = param_2 + 0x68;
  abStack_28[5] = 0x98;
  abStack_28[6] = 0x98;
  abStack_28[7] = 0x98;
  abStack_28[0] = 0x88;
  abStack_28[1] = 0x48;
  abStack_28[2] = 0x68;
  abStack_28[3] = 0x88;
  ov96_021EB408(param_1,0,2,0x69,8);
  ov96_021EB408(param_1,0,2,0x69,9);
  ov96_021EB408(param_1,1,2,0x69,10);
  bVar1 = 0;
  do {
    ov96_021EB408(param_1,0,2,0x69,0xb);
    bVar1 = bVar1 + 1;
  } while (bVar1 < 2);
  bVar1 = 0;
  do {
    ov96_021EB408(param_1,1,2,0x69,0xc);
    bVar1 = bVar1 + 1;
  } while (bVar1 < 4);
  bVar1 = 0;
  do {
    ov96_021EB408(param_1,1,2,0x69,0xd);
    bVar1 = bVar1 + 1;
  } while (bVar1 < 4);
  uVar2 = ov96_021EB4F4(param_1,0x69,8);
  *(undefined4 *)(param_2 + 0x11c) = uVar2;
  uVar2 = ov96_021EB5B8(*(undefined4 *)(param_2 + 0x11c));
  Sprite_SetDrawPriority(uVar2,4);
  Sprite_SetAnimCtrlSeq(uVar2,0);
  iStack_20 = 0x80000;
  iStack_1c = 0x220000;
  Sprite_SetMatrix(uVar2,&iStack_20);
  ov96_021EB52C(*(undefined4 *)(param_2 + 0x11c),1,1);
  uVar2 = ov96_021EB4F4(param_1,0x69,9);
  *(undefined4 *)(param_2 + 0x120) = uVar2;
  uVar2 = ov96_021EB5B8(*(undefined4 *)(param_2 + 0x120));
  Sprite_SetDrawPriority(uVar2,3);
  Sprite_SetAnimCtrlSeq(uVar2,1);
  iStack_20 = 0x98000;
  iStack_1c = 0x220000;
  Sprite_SetMatrix(uVar2,&iStack_20);
  ov96_021EB52C(*(undefined4 *)(param_2 + 0x120),1,1);
  uVar2 = ov96_021EB4F4(param_1,0x69,10);
  *(undefined4 *)(param_2 + 300) = uVar2;
  uVar2 = ov96_021EB5B8(*(undefined4 *)(param_2 + 300));
  Sprite_SetDrawPriority(uVar2,5);
  Sprite_SetAnimCtrlSeq(uVar2,0xd);
  iStack_20 = 0;
  iStack_1c = 0x200000;
  Sprite_SetMatrix(uVar2,&iStack_20);
  ov96_021EB52C(*(undefined4 *)(param_2 + 300),1,0);
  uVar4 = 0;
  do {
    iVar5 = uVar4 * 4;
    uVar2 = ov96_021EB4F4(param_1,0x69,0xb);
    *(undefined4 *)(iVar3 + iVar5 + 0xbc) = uVar2;
    uVar2 = ov96_021EB5B8(*(undefined4 *)(iVar3 + iVar5 + 0xbc));
    Sprite_SetDrawPriority(uVar2,6);
    Sprite_SetAnimCtrlSeq(uVar2,uVar4 + 0xb);
    iStack_20 = (uVar4 * 0xa0 + 0x30) * 0x1000;
    iStack_1c = 0x218000;
    Sprite_SetMatrix(uVar2,&iStack_20);
    ov96_021EB52C(*(undefined4 *)(iVar3 + iVar5 + 0xbc),1,1);
    uVar4 = uVar4 + 1 & 0xff;
  } while (uVar4 < 2);
  uVar4 = 0;
  do {
    iVar5 = uVar4 * 4;
    uVar2 = ov96_021EB4F4(param_1,0x69,0xc);
    *(undefined4 *)(iVar3 + iVar5 + 200) = uVar2;
    uVar2 = ov96_021EB5B8(*(undefined4 *)(iVar3 + iVar5 + 200));
    Sprite_SetDrawPriority(uVar2,8);
    Sprite_SetAnimCtrlSeq(uVar2,0xe);
    iStack_20 = (uint)abStack_28[uVar4 + 4] << 0xc;
    iStack_1c = (uint)abStack_28[uVar4] * 0x1000 + 0x200000;
    Sprite_SetMatrix(uVar2,&iStack_20);
    ov96_021EB52C(*(undefined4 *)(iVar3 + iVar5 + 200),1,1);
    uVar4 = uVar4 + 1 & 0xff;
  } while (uVar4 < 4);
  uVar4 = 0;
  do {
    iVar5 = uVar4 * 4;
    uVar2 = ov96_021EB4F4(param_1,0x69,0xd);
    *(undefined4 *)(iVar3 + iVar5 + 0xd8) = uVar2;
    uVar2 = ov96_021EB5B8(*(undefined4 *)(iVar3 + iVar5 + 0xd8));
    Sprite_SetDrawPriority(uVar2,7);
    Sprite_SetAnimCtrlSeq(uVar2,0x12);
    iStack_20 = (uint)abStack_28[uVar4 + 4] << 0xc;
    iStack_1c = (uint)abStack_28[uVar4] * 0x1000 + 0x200000;
    Sprite_SetMatrix(uVar2,&iStack_20);
    ov96_021EB52C(*(undefined4 *)(iVar3 + iVar5 + 0xd8),1,0);
    uVar4 = uVar4 + 1 & 0xff;
  } while (uVar4 < 4);
  return;
}

