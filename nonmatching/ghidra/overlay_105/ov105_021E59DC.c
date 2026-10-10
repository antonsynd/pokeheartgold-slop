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
undefined4 Camera_PushLookAtToNNSGlb();
undefined4 OverlayManager_GetData();
undefined4 sub_020880CC();
undefined4 RequestSwap3DBuffers();
undefined4 GF3dRender_DrawModel();
undefined4 ov105_021E5BCC();
undefined4 func_0x02026e48() __asm__("sub_02026E48");
undefined4 IsPaletteFadeFinished();
undefined4 PlaySE();
extern undefined ov105_021E5E08;

undefined4 ov105_021E59DC(undefined4 param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined4 *puVar7;
  int iVar8;
  undefined4 *puVar9;
  undefined4 uVar10;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 auStack_38 [9];
  
  iVar1 = OverlayManager_GetData();
  iVar8 = iVar1 + 4 + (uint)*(byte *)(iVar1 + 0x9f) * 0x7c;
  uVar10 = 0;
  if (*param_2 == 0) {
    if (**(int **)(iVar8 + 0x6c) + 0x1000 ==
        (uint)*(ushort *)((*(int **)(iVar8 + 0x6c))[2] + 4) * 0x1000) {
      sub_020880CC(1,0x97);
      *param_2 = *param_2 + 1;
    }
  }
  else if ((*param_2 == 1) && (iVar2 = IsPaletteFadeFinished(), iVar2 != 0)) {
    *(char *)(iVar1 + 0x9f) = *(char *)(iVar1 + 0x9f) + '\x01';
    *(char *)(iVar1 + 0xa0) = *(char *)(iVar1 + 0xa0) + '\x01';
    if (*(char *)(iVar1 + 0xa0) == '\0') {
      ov105_021E5BCC(iVar1);
      sub_020880CC(0,0x97);
      *param_2 = 0;
    }
    else {
      uVar10 = 1;
    }
  }
  *(char *)(iVar1 + 0xa1) = *(char *)(iVar1 + 0xa1) + '\x01';
  if (*(char *)(iVar1 + 0xa1) == '\x1e') {
    PlaySE(*(uint *)(*(int *)(iVar1 + 0xa4) + (uint)*(byte *)(iVar1 + 0x9f) * 4) & 0xffff);
  }
  uVar6 = 0;
  do {
    piVar4 = *(int **)(iVar8 + uVar6 * 4 + 0x6c);
    if (*piVar4 + 0x1000 < (int)((uint)*(ushort *)(piVar4[2] + 4) * 0x1000)) {
      *piVar4 = *piVar4 + 0x1000;
    }
    uVar6 = uVar6 + 1 & 0xff;
  } while (uVar6 < 4);
  puVar9 = (undefined4 *)&ov105_021E5E08;
  puVar7 = auStack_38;
  iVar1 = 4;
  do {
    uVar3 = *puVar9;
    uVar5 = puVar9[1];
    puVar9 = puVar9 + 2;
    *puVar7 = uVar3;
    puVar7[1] = uVar5;
    puVar7 = puVar7 + 2;
    iVar1 = iVar1 + -1;
  } while (iVar1 != 0);
  *puVar7 = *puVar9;
  uStack_44 = 0x1000;
  uStack_40 = 0x1000;
  uStack_3c = 0x1000;
  uStack_50 = 0;
  uStack_4c = 0;
  uStack_48 = 0;
  func_0x02026e48();
  Camera_PushLookAtToNNSGlb();
  GF3dRender_DrawModel(iVar8,&uStack_50,auStack_38,&uStack_44);
  RequestSwap3DBuffers(1,1);
  return uVar10;
}

