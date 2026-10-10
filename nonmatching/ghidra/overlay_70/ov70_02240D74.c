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
undefined4 Sprite_SetAnimActiveFlag();
undefined4 ov70_02238B54();
undefined4 Sprite_SetDrawFlag();
undefined4 ov70_022410F0();
undefined4 Sprite_SetPriority();
undefined4 ov70_0224127C();
undefined4 Sprite_CreateAffine();
undefined4 ov70_02238F9C();
undefined4 Sprite_GetMatrixPtr();

void ov70_02240D74(int param_1,int param_2)

{
  undefined4 uVar1;
  int *piVar2;
  int iVar3;
  undefined2 *puVar4;
  int iVar5;
  int iStack_48;
  undefined1 auStack_44 [8];
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_1c;

  ov70_0224127C();
  ov70_02238B54(auStack_44,param_1,param_1 + 0xd84,2);
  uStack_1c = 2;
  uStack_3c = 0x80000;
  uStack_38 = 0x182000;
  uVar1 = Sprite_CreateAffine(auStack_44);
  *(undefined4 *)(param_1 + 0xee4) = uVar1;
  Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0xee4),1);
  Sprite_SetPriority(*(undefined4 *)(param_1 + 0xee4),2);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0xee4),param_2 * 7 + 3);
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0xee4),1);
  puVar4 = (undefined2 *)0x2245d0a;
  iStack_48 = 0;
  iVar5 = 0xe;
  iVar3 = param_1;
  do {
    uVar1 = Sprite_CreateAffine(auStack_44);
    *(undefined4 *)(iVar3 + 0xee8) = uVar1;
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar3 + 0xee8),1);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar3 + 0xee8),iVar5);
    Sprite_SetDrawFlag(*(undefined4 *)(iVar3 + 0xee8),0);
    ov70_022410F0(*(undefined4 *)(iVar3 + 0xee8),*puVar4,puVar4[1]);
    Sprite_SetPriority(*(undefined4 *)(iVar3 + 0xee8),2);
    iVar3 = iVar3 + 4;
    iStack_48 = iStack_48 + 1;
    iVar5 = iVar5 + 4;
    puVar4 = puVar4 + 2;
  } while (iStack_48 < 7);
  uVar1 = Sprite_CreateAffine(auStack_44);
  *(undefined4 *)(param_1 + 0xf0c) = uVar1;
  Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0xf0c),1);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0xf0c),0x2b);
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0xf0c),0);
  ov70_022410F0(*(undefined4 *)(param_1 + 0xf0c),0x80,0x56);
  Sprite_SetPriority(*(undefined4 *)(param_1 + 0xf0c),1);
  uVar1 = Sprite_CreateAffine(auStack_44);
  *(undefined4 *)(param_1 + 0xf10) = uVar1;
  Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0xf10),1);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0xf10),0x2a);
  ov70_02238F9C(*(undefined4 *)(param_1 + 0xf10),0x37,*(int *)(param_1 + 0xf14) + 0x1a8);
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0xf10),0);
  iVar3 = 0;
  do {
    piVar2 = (int *)Sprite_GetMatrixPtr(*(undefined4 *)(param_1 + 0xee4));
    iVar3 = iVar3 + 1;
    *(short *)(param_1 + 0x120c) = (short)((int)(*piVar2 + ((uint)(*piVar2 >> 0xb) >> 0x14)) >> 0xc)
    ;
    *(short *)(param_1 + 0x120e) =
         (short)((int)(piVar2[1] + ((uint)(piVar2[1] >> 0xb) >> 0x14)) >> 0xc);
    param_1 = param_1 + 4;
  } while (iVar3 < 8);
  return;
}

