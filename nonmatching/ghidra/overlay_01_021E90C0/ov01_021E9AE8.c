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
typedef void code(void);
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
undefined4 ov01_021FB904(undefined4);
undefined4 sub_02054D10(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021FB9E0(undefined4);
undefined4 sub_02054AE4(undefined4, undefined4, undefined4, undefined4);
undefined4 MapPropOneShotAnimationManager_LoadPropAnimations(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 MapProp_GetResModel(undefined4);
undefined4 sub_02054A60(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GF_AssertFail(void);
undefined4 MapPropAnimationManager_GetPropAnimationCount(undefined4, undefined4);
undefined4 MapProp_GetRenderSurface(undefined4);
undefined4 NARC_ReadWholeMember(undefined4, undefined4, undefined4);

void ov01_021E9AE8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  int *piVar7;
  int iStack_48;
  undefined4 uStack_40;
  undefined1 auStack_3c [4];
  char cStack_38;
  undefined1 auStack_24 [16];
  
  sub_02054A60(param_2,param_3,0xffffffff,0,3,1,auStack_24);
  uVar2 = ov01_021FB904(*(undefined4 *)(param_1 + 0x34));
  piVar3 = (int *)sub_02054D10(param_1,4,4,auStack_24,0);
  iVar6 = 0;
  bVar1 = false;
  piVar7 = piVar3;
  while ((*piVar7 == 0 || (NARC_ReadWholeMember(uVar2,*piVar7,auStack_3c), cStack_38 == '\0'))) {
    iVar6 = iVar6 + 1;
    piVar7 = piVar7 + 1;
    if (3 < iVar6) {
LAB_021e9b62:
      Heap_Free(piVar3);
      if (bVar1) {
        iVar6 = MapPropAnimationManager_GetPropAnimationCount
                          (*(undefined4 *)(param_1 + 0x54),iStack_48);
        if (iVar6 != 0) {
          uVar2 = ov01_021FB9E0(*(undefined4 *)(param_1 + 0x34));
          uVar4 = MapProp_GetRenderSurface(uStack_40);
          uVar5 = MapProp_GetResModel(uStack_40);
          MapPropOneShotAnimationManager_LoadPropAnimations
                    (*(undefined4 *)(param_1 + 0x54),*(undefined4 *)(param_1 + 0x58),param_4,
                     iStack_48,uVar4,uVar5,uVar2,iVar6,1,0);
          return;
        }
      }
      else {
        GF_AssertFail();
      }
      return;
    }
  }
  sub_02054AE4(param_1,piVar3[iVar6],auStack_24,&uStack_40);
  bVar1 = true;
  iStack_48 = piVar3[iVar6];
  goto LAB_021e9b62;
}

