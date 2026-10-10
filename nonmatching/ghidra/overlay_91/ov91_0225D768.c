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
undefined4 Sprite_GetDrawPriority();
undefined4 Sprite_SetDrawFlag();
undefined4 GF_AssertFail();
undefined4 Sprite_GetDrawFlag();
undefined4 Sprite_SetDrawPriority();
undefined4 ov91_0225D884();
undefined4 Sprite_SetPaletteOverride();

void ov91_0225D768(undefined4 *param_1,int param_2,uint param_3,int param_4)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  int iVar5;
  uint uStack_28;
  int iStack_1c;
  
  uVar3 = 0;
  bVar1 = false;
  iStack_1c = -1;
  iVar5 = 0;
  puVar4 = param_1;
  do {
    iVar2 = Sprite_GetDrawFlag(*puVar4);
    if (iVar2 == 0) {
      bVar1 = true;
      iStack_1c = iVar5;
    }
    else {
      iVar2 = Sprite_GetDrawPriority(*puVar4);
      Sprite_SetDrawPriority(*puVar4,iVar2 + 1);
      if ((!bVar1) && (uVar3 <= iVar2 + 1U)) {
        uVar3 = iVar2 + 1U;
        iStack_1c = iVar5;
      }
    }
    iVar5 = iVar5 + 1;
    puVar4 = puVar4 + 1;
  } while (iVar5 < 3);
  if (iStack_1c < 0) {
    GF_AssertFail();
  }
  uStack_28 = param_3;
  if (2 < param_3) {
    uStack_28 = 2;
  }
  if (param_4 == 2) {
    if (param_1[0xf] == 1) {
      uStack_28 = uStack_28 + 5;
    }
    else {
      uStack_28 = uStack_28 + 0xb;
    }
    param_2 = 7;
  }
  else {
    if (param_1[0xf] == 1) {
      uStack_28 = uStack_28 + 2;
    }
    else {
      uStack_28 = uStack_28 + 8;
    }
    param_2 = param_2 + 3;
  }
  Sprite_SetAnimCtrlSeq(param_1[iStack_1c],uStack_28);
  param_1[iStack_1c + 3] = 0;
  Sprite_SetDrawFlag(param_1[iStack_1c],1);
  ov91_0225D884(param_1,iStack_1c);
  Sprite_SetDrawPriority(param_1[iStack_1c],0);
  Sprite_SetPaletteOverride(param_1[iStack_1c],param_2);
  return;
}

