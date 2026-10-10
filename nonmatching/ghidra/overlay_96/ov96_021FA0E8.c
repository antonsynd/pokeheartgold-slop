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
undefined4 ov96_021FC0D0();
undefined4 ov96_021EAC0C();
undefined4 GF_AssertFail();
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 ov96_021E5F24();
undefined4 ov96_021E60D8();
undefined4 ov96_021EAF70();
undefined4 ov96_021EABF4();
undefined4 ov96_021E6104();
undefined4 ov96_021EAF94();
undefined4 ov96_021EAA04();
undefined4 ov96_021E6138();
undefined4 ov96_021EAF6C();
undefined4 ov96_021E60C0();
undefined4 func_0x020f1cc8() __asm__("sub_020F1CC8");
undefined4 ov96_021EABE0();
undefined4 ov96_021E8BB0();
undefined4 ov96_021EABA8();
undefined4 ov96_021EAA20();
undefined4 ov96_021EB52C();
undefined4 Sprite_SetMatrix();
undefined4 Sprite_SetAffineOverwriteMode();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 ov96_021EB5B8();
undefined4 Sprite_SetDrawPriority();
undefined4 ov96_021EB4F4();

void ov96_021FA0E8(undefined4 param_1,int param_2,int param_3,undefined4 param_4,undefined4 param_5,
                  undefined4 param_6,int param_7,undefined2 *param_8)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iStack_50;
  int aiStack_44 [4];
  undefined4 uStack_34;
  undefined4 uStack_30;
  int iStack_2c;
  int iStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;

  *param_8 = 0;
  param_8[1] = 0;
  param_8[2] = 0x30;
  param_8[3] = 0x140;
  *(char *)(param_8 + 0xc) = (char)param_7;
  param_8[0x34] = 1;
  *(undefined4 *)(param_8 + 0x32) = 0x3f800000;
  *(undefined1 *)(param_8 + 4) = 0;
  uVar1 = ov96_021FC0D0(param_4,param_7);
  *(undefined4 *)(param_8 + 0x10) = uVar1;
  if (param_7 == 0) {
    param_8[10] = 0;
    param_8[0xb] = 4;
  }
  else if (param_7 == 1) {
    param_8[10] = 1;
    param_8[0xb] = 5;
  }
  else if (param_7 == 2) {
    param_8[10] = 2;
    param_8[0xb] = 6;
  }
  if (param_7 == 0) {
    uVar1 = 0;
    iStack_50 = 0x30;
  }
  else if (param_7 == 1) {
    uVar1 = 1;
    iStack_50 = 0x80;
  }
  else {
    if (param_7 != 2) {
      GF_AssertFail();
      return;
    }
    uVar1 = 2;
    iStack_50 = 0xd0;
  }
  uVar1 = ov96_021EAA04(param_6,uVar1);
  ov96_021EAA20();
  *(undefined4 *)(param_8 + 0x12) = uVar1;
  iVar2 = ov96_021E8BB0();
  uVar3 = ov96_021E5F24(param_1);
  iVar4 = ov96_021E60D8(param_1,uVar3,param_7);
  param_8[0x2e] = (short)*(undefined4 *)(param_2 + (uint)*(byte *)(iVar4 + 2) * 4);
  param_8[0x2f] = (short)*(undefined4 *)(param_2 + (uint)*(byte *)(iVar4 + 2) * 4 + 0x14);
  *(undefined1 *)(param_8 + 0x2c) = *(undefined1 *)(iVar4 + 2);
  uVar3 = ov96_021E5F24(param_1);
  ov96_021E60C0(param_1,uVar3,param_7);
  iVar5 = ov96_021E6138();
  iVar5 = (iVar5 + -1) * 8;
  ov96_021EAF70(uVar1,*(undefined4 *)(param_3 + iVar5),*(undefined4 *)(param_3 + iVar5 + 4));
  uVar3 = ov96_021E6104();
  ov96_021EAF6C(uVar1,uVar3);
  uVar3 = func_0x020f2178(*(undefined4 *)(param_2 + (uint)*(byte *)(iVar4 + 1) * 4 + 0x3c));
  uVar3 = func_0x020f1cc8(uVar3,0x41200000);
  *(undefined4 *)(param_8 + 0x28) = uVar3;
  uVar3 = func_0x020f2178(*(undefined4 *)(param_2 + (uint)*(byte *)(iVar4 + 4) * 4 + 0x28));
  uVar3 = func_0x020f1cc8(uVar3,0x42c80000);
  *(undefined4 *)(param_8 + 0x2a) = uVar3;
  if (*(short *)(iVar2 + 4) == 0) {
    uStack_20 = 0x10000;
    uStack_1c = 0x10000;
  }
  else {
    uStack_20 = 0x20000;
    uStack_1c = 0x20000;
  }
  *(undefined4 *)(param_8 + 0x1e) = 0x78;
  ov96_021EAF94(uVar1,iStack_50,0x188);
  ov96_021EAC0C(uVar1,1);
  ov96_021EABA8(uVar1,4);
  ov96_021EABE0(uVar1,2);
  ov96_021EABF4(uVar1,&uStack_20);
  uVar1 = ov96_021EB4F4(param_5,0x66,5);
  *(undefined4 *)(param_8 + 0x22) = uVar1;
  uVar1 = ov96_021EB5B8();
  *(int *)(param_8 + 0x20) = *(int *)(param_8 + 0x1e) + 0x120;
  uStack_24 = 0;
  iStack_50 = iStack_50 << 0xc;
  iStack_28 = *(int *)(param_8 + 0x20) << 0xc;
  iStack_2c = iStack_50;
  Sprite_SetMatrix(uVar1,&iStack_2c);
  ov96_021EB52C(*(undefined4 *)(param_8 + 0x22),1,0);
  Sprite_SetDrawPriority(uVar1,3);
  uVar1 = ov96_021EB4F4(param_5,0x68,7);
  *(undefined4 *)(param_8 + 0x24) = uVar1;
  uVar1 = ov96_021EB5B8();
  Sprite_SetAnimCtrlSeq(uVar1,0);
  uStack_30 = 0;
  uStack_34 = 0x1ac000;
  aiStack_44[3] = iStack_50;
  Sprite_SetMatrix(uVar1,aiStack_44 + 3);
  Sprite_SetDrawPriority(uVar1,4);
  Sprite_SetAffineOverwriteMode(uVar1,2);
  uVar1 = ov96_021EB4F4(param_5,0x69,8);
  *(undefined4 *)(param_8 + 0x26) = uVar1;
  uVar1 = ov96_021EB5B8();
  Sprite_SetAnimCtrlSeq(uVar1,0);
  aiStack_44[2] = 0;
  aiStack_44[1] = 0x188000;
  aiStack_44[0] = iStack_50;
  Sprite_SetMatrix(uVar1,aiStack_44);
  ov96_021EB52C(*(undefined4 *)(param_8 + 0x26),1,1);
  Sprite_SetDrawPriority(uVar1,2);
  *(undefined4 *)(param_8 + 6) = 0x3f800000;
  return;
}

