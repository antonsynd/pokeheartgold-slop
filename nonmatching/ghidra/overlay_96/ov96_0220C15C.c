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
undefined4 ManagedSprite_ResetSpriteAnimCtrlState(void *);
undefined4 ManagedSprite_SetPositionXY(void *, short, short);
undefined4 ov96_021EAB74();
undefined4 ov96_021EAB38();
undefined4 SysTask_Destroy(void *);
undefined4 GF_AssertFail(void);
undefined4 ManagedSprite_SetDrawFlag(void *, int);
undefined4 ManagedSprite_SetAnim(void *, int);
undefined4 ManagedSprite_SetAnimateFlag(void *, int);
undefined4 ManagedSprite_SetPositionXYWithSubscreenOffset(void *, short, short, int);
undefined4 ManagedSprite_GetPositionXY(void *, void *, void *);

void ov96_0220C15C(undefined *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  short sVar2;
  int iVar3;
  uint uVar4;
  undefined *puVar5;
  int iVar6;
  short sStack_18;
  short sStack_16;
  short sStack_14;
  short sStack_12;
  undefined4 uStack_10;
  
  uVar4 = *(uint *)(param_2 + 0x38);
  uStack_10 = param_4;
  switch((uVar4 & 0x3f) >> 2) {
  case 0:
    puVar5 = *(undefined **)(param_2 + 0x2c);
    ManagedSprite_ResetSpriteAnimCtrlState(puVar5);
    ManagedSprite_SetDrawFlag(puVar5,1);
    *(uint *)(param_2 + 0x38) =
         *(uint *)(param_2 + 0x38) & 0xffffffc3 |
         (((*(uint *)(param_2 + 0x38) & 0x3f) >> 2) + 1 & 0xf) << 2;
    return;
  case 1:
    uVar1 = ((uVar4 & 0x3fff) >> 6) + 1 & 0xff;
    *(uint *)(param_2 + 0x38) = uVar1 << 6 | uVar4 & 0xffffc03f;
    if (1 < uVar1) {
      puVar5 = *(undefined **)(param_2 + 0x30);
      ov96_021EAB38(*(undefined4 *)(param_2 + ((uVar4 & 0x1ffc03f) >> 0x17) * 4 + 4),0);
      ManagedSprite_SetAnim(puVar5,0x1b);
      ManagedSprite_SetAnimateFlag(puVar5,0);
      ManagedSprite_SetDrawFlag(puVar5,1);
      *(uint *)(param_2 + 0x38) =
           (((*(uint *)(param_2 + 0x38) & 0x3f) >> 2) + 1 & 0xf) << 2 |
           *(uint *)(param_2 + 0x38) & 0xffffc003;
      return;
    }
    break;
  case 2:
    ManagedSprite_GetPositionXY
              (*(undefined **)(param_2 + 0x30),(undefined *)&sStack_12,(undefined *)&sStack_14);
    iVar6 = (int)sStack_14;
    iVar3 = (int)(((-0x40 - iVar6) + ((uint)(-0x40 - iVar6 >> 1) >> 0x1e)) * 0x4000) >> 0x10;
    if ((-0x40 < iVar6) && (iVar3 != 0)) {
      ManagedSprite_SetPositionXYWithSubscreenOffset
                (*(undefined **)(param_2 + 0x30),sStack_12,
                 (short)((uint)((iVar6 + iVar3) * 0x10000) >> 0x10),0x100000);
      return;
    }
    *(uint *)(param_2 + 0x38) =
         *(uint *)(param_2 + 0x38) & 0xffffffc3 |
         (((*(uint *)(param_2 + 0x38) & 0x3f) >> 2) + 1 & 0xf) << 2;
    return;
  case 3:
    uVar1 = ((uVar4 & 0x3fff) >> 6) + 1 & 0xff;
    *(uint *)(param_2 + 0x38) = uVar4 & 0xffffc03f | uVar1 << 6;
    if (3 < uVar1) {
      uVar4 = *(uint *)(param_2 + 0x38);
      *(uint *)(param_2 + 0x38) = (((uVar4 & 0x3f) >> 2) + 1 & 0xf) << 2 | uVar4 & 0xffffc003;
      return;
    }
    break;
  case 4:
    ManagedSprite_GetPositionXY
              (*(undefined **)(param_2 + 0x30),(undefined *)&sStack_16,(undefined *)&sStack_18);
    iVar3 = -0x18 - sStack_18;
    if (iVar3 < 0) {
      iVar3 = -iVar3;
    }
    sVar2 = (short)iVar3;
    iVar3 = (int)sVar2;
    if (iVar3 != 0) {
      sVar2 = (short)((uint)((iVar3 - (iVar3 >> 0x1f)) * 0x8000) >> 0x10);
    }
    sStack_18 = sStack_18 + sVar2 + 2;
    if (sStack_18 < 0x30) {
      ManagedSprite_SetPositionXYWithSubscreenOffset
                (*(undefined **)(param_2 + 0x30),sStack_16,sStack_18,0x100000);
      return;
    }
    sStack_16 = (((ushort)((uint)*(undefined4 *)(param_2 + 0x38) >> 0x10) & 0x1fff) >> 0xb) * 0x40 +
                0x48;
    sStack_18 = 0x30;
    ManagedSprite_SetPositionXY(*(undefined **)(param_2 + 0x30),sStack_16,0x30);
    ManagedSprite_SetAnimateFlag(*(undefined **)(param_2 + 0x30),1);
    ManagedSprite_ResetSpriteAnimCtrlState(*(undefined **)(param_2 + 0x2c));
    *(uint *)(param_2 + 0x38) =
         *(uint *)(param_2 + 0x38) & 0xffffffc3 |
         (((*(uint *)(param_2 + 0x38) & 0x3f) >> 2) + 1 & 0xf) << 2;
    return;
  case 5:
    uVar1 = ((uVar4 & 0x3fff) >> 6) + 1 & 0xff;
    *(uint *)(param_2 + 0x38) = uVar4 & 0xffffc03f | uVar1 << 6;
    if (1 < uVar1) {
      ManagedSprite_SetDrawFlag(*(undefined **)(param_2 + 0x30),0);
      ov96_021EAB38(*(undefined4 *)(param_2 + (*(uint *)(param_2 + 0x38) & 3) * 4 + 4),1);
      ov96_021EAB74(*(undefined4 *)(param_2 + (*(uint *)(param_2 + 0x38) & 3) * 4 + 4),0);
      uVar4 = *(uint *)(param_2 + 0x38);
      *(uint *)(param_2 + 0x38) =
           (((uVar4 & 0x3f) >> 2) + 1 & 0xf) << 2 | uVar4 & 0xfe7fc003 | (uVar4 & 3) << 0x17;
      return;
    }
    break;
  case 6:
    *(undefined4 *)(param_2 + 0x34) = 0;
    *(uint *)(param_2 + 0x38) = *(uint *)(param_2 + 0x38) & 0xffffbfff;
    SysTask_Destroy(param_1);
    return;
  default:
    GF_AssertFail();
  }
  return;
}

