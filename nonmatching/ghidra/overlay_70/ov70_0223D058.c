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
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_CreateAffine();
undefined4 Sprite_SetPriority();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 ov70_02238B54();
undefined4 ov70_02238F9C();

void ov70_0223D058(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  ushort *puVar2;
  int iVar3;
  int iVar4;
  undefined1 auStack_48 [8];
  int iStack_40;
  int iStack_3c;
  undefined4 uStack_24;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  ov70_02238B54(auStack_48,param_1,param_1 + 0xd60,1);
  iStack_40 = (uint)*(ushort *)((uint)*(ushort *)(param_1 + 0x122) * 4 + 0x2245784) << 0xc;
  iStack_3c = (uint)*(ushort *)((uint)*(ushort *)(param_1 + 0x122) * 4 + 0x2245786) << 0xc;
  uVar1 = Sprite_CreateAffine(auStack_48);
  *(undefined4 *)(param_1 + 0xdcc) = uVar1;
  Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0xdcc),1);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0xdcc),4);
  if ((*(ushort *)(param_1 + 0x122) == 0x1f) || (*(ushort *)(param_1 + 0x122) < 6)) {
    Sprite_SetPriority(*(undefined4 *)(param_1 + 0xdcc),0);
  }
  else {
    Sprite_SetPriority(*(undefined4 *)(param_1 + 0xdcc),1);
  }
  puVar2 = (ushort *)0x2245784;
  iVar4 = 0;
  iVar3 = param_1;
  do {
    iStack_40 = (uint)*puVar2 << 0xc;
    iStack_3c = (uint)puVar2[1] << 0xc;
    uStack_24 = 0x14;
    uVar1 = Sprite_CreateAffine(auStack_48);
    *(undefined4 *)(iVar3 + 0xdd8) = uVar1;
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar3 + 0xdd8),iVar4 + 6);
    Sprite_SetPriority(*(undefined4 *)(iVar3 + 0xdd8),1);
    iVar4 = iVar4 + 1;
    puVar2 = puVar2 + 2;
    iVar3 = iVar3 + 4;
  } while (iVar4 < 0x1e);
  puVar2 = (ushort *)0x2245784;
  iVar4 = 0;
  iVar3 = param_1;
  do {
    iStack_40 = (uint)*puVar2 << 0xc;
    iStack_3c = (puVar2[1] + 6) * 0x1000;
    uStack_24 = 10;
    uVar1 = Sprite_CreateAffine(auStack_48);
    *(undefined4 *)(iVar3 + 0xe50) = uVar1;
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar3 + 0xe50),0x28);
    Sprite_SetPriority(*(undefined4 *)(iVar3 + 0xe50),1);
    iVar4 = iVar4 + 1;
    puVar2 = puVar2 + 2;
    iVar3 = iVar3 + 4;
  } while (iVar4 < 0x1e);
  puVar2 = (ushort *)0x2245784;
  iVar4 = 0;
  iVar3 = param_1;
  do {
    iStack_40 = (*puVar2 + 8) * 0x1000;
    iStack_3c = (puVar2[1] + 6) * 0x1000;
    uStack_24 = 10;
    uVar1 = Sprite_CreateAffine(auStack_48);
    *(undefined4 *)(iVar3 + 0xec8) = uVar1;
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar3 + 0xec8),0x2a);
    Sprite_SetPriority(*(undefined4 *)(iVar3 + 0xec8),1);
    iVar4 = iVar4 + 1;
    puVar2 = puVar2 + 2;
    iVar3 = iVar3 + 4;
  } while (iVar4 < 6);
  puVar2 = (ushort *)0x22456e8;
  iVar4 = 0;
  iVar3 = param_1;
  do {
    iStack_40 = (uint)*puVar2 << 0xc;
    iStack_3c = (uint)puVar2[1] << 0xc;
    uVar1 = Sprite_CreateAffine(auStack_48);
    *(undefined4 *)(iVar3 + 0xf04) = uVar1;
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar3 + 0xf04),iVar4 + 0x26);
    Sprite_SetPriority(*(undefined4 *)(iVar3 + 0xf04),1);
    iVar4 = iVar4 + 1;
    puVar2 = puVar2 + 2;
    iVar3 = iVar3 + 4;
  } while (iVar4 < 2);
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0xf10),1);
  ov70_02238F9C(*(undefined4 *)(param_1 + 0xf10),0x37,0x1a8);
  return;
}

