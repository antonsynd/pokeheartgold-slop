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
undefined4 ManagedSprite_SetPositionXY();
undefined4 func_0x0200de44() __asm__("sub_0200DE44");
undefined4 ov96_0220C578();
undefined4 ManagedSprite_SetPositionXYWithSubscreenOffset();
undefined4 ManagedSprite_ResetSpriteAnimCtrlState();
undefined4 ov96_0220C54C();
undefined4 GF_AssertFail();
undefined4 ov96_021E5F24();
undefined4 ManagedSprite_SetAnimateFlag();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 PlaySE();
undefined4 ov96_0220C90C();
undefined4 ManagedSprite_GetPositionXYWithSubscreenOffset();

void ov96_0220B9A8(int param_1)

{
  undefined1 uVar1;
  short sVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  undefined4 uVar6;
  int iVar7;
  short sStack_1c;
  short sStack_1a;
  short sStack_18;
  short sStack_16;
  short sStack_14;
  short sStack_12;

  uVar5 = *(uint *)(param_1 + 0x44);
  switch((uVar5 & 0xffff) >> 10) {
  case 0:
    ManagedSprite_ResetSpriteAnimCtrlState(*(undefined4 *)(param_1 + 0x1c));
    ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x1c),1);
    PlaySE(0x8b4);
    *(uint *)(param_1 + 0x44) =
         (((*(uint *)(param_1 + 0x44) & 0xffff) >> 10) + 1 & 0x3f) << 10 |
         *(uint *)(param_1 + 0x44) & 0xffff03ff;
    return;
  case 1:
    uVar4 = (uVar5 >> 0x18) + 1;
    *(uint *)(param_1 + 0x44) = uVar4 * 0x1000000 | uVar5 & 0xffffff;
    if (1 < (uVar4 & 0xff)) {
      ManagedSprite_ResetSpriteAnimCtrlState(*(undefined4 *)(param_1 + 0x20));
      ManagedSprite_SetAnimateFlag(*(undefined4 *)(param_1 + 0x20),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x20),1);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x10),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x14),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x18),0);
      *(uint *)(param_1 + 0x44) =
           (((*(uint *)(param_1 + 0x44) & 0xffff) >> 10) + 1 & 0x3f) << 10 |
           *(uint *)(param_1 + 0x44) & 0xff03ff;
      return;
    }
    break;
  case 2:
    func_0x0200de44(*(undefined4 *)(param_1 + 0x20),&sStack_12,&sStack_14);
    iVar7 = (int)sStack_14;
    iVar3 = (int)(((-0x40 - iVar7) + ((uint)(-0x40 - iVar7 >> 1) >> 0x1e)) * 0x4000) >> 0x10;
    if ((-0x34 < iVar7) && (iVar3 != 0)) {
      ManagedSprite_SetPositionXYWithSubscreenOffset
                (*(undefined4 *)(param_1 + 0x20),(int)sStack_12,(iVar7 + iVar3) * 0x10000 >> 0x10,
                 0x100000);
      ManagedSprite_GetPositionXYWithSubscreenOffset
                (*(undefined4 *)(param_1 + 0x28),&sStack_12,&sStack_14,0x100000);
      iVar3 = 0x110 - sStack_14;
      if (iVar3 < 0) {
        iVar3 = -iVar3;
      }
      sStack_14 = sStack_14 + (short)(iVar3 >> 2);
      if (0xd8 < sStack_14) {
        sStack_14 = 0xd8;
      }
      ov96_0220C90C(param_1,6,(int)sStack_12,(int)sStack_14);
      return;
    }
    uVar5 = (int)(((*(uint *)(param_1 + 0x40) & 3) - 1) * 0x1000000) >> 0x18;
    if ((int)uVar5 < 0) {
      uVar5 = 2;
    }
    uVar1 = ov96_021E5F24(*(undefined4 *)(param_1 + 0xc));
    ov96_0220C54C(param_1,6,uVar1,uVar5 & 0xff,0);
    sStack_12 = 0x28;
    sStack_14 = -0x28;
    ov96_0220C90C(param_1,6);
    *(uint *)(param_1 + 0x44) =
         (((*(uint *)(param_1 + 0x44) & 0xffff) >> 10) + 1 & 0x3f) << 10 |
         *(uint *)(param_1 + 0x44) & 0xffff03ff;
    return;
  case 3:
    ManagedSprite_GetPositionXYWithSubscreenOffset
              (*(undefined4 *)(param_1 + 0x24),&sStack_16,&sStack_18,0x100000);
    iVar3 = 0x88 - sStack_18;
    if (iVar3 < 0) {
      iVar3 = -iVar3;
    }
    iVar3 = (iVar3 << 0xf) >> 0x10;
    if (sStack_18 < 0x88) {
      if (iVar3 == 0) {
        iVar3 = 1;
      }
      sStack_18 = sStack_18 + (short)iVar3;
      ov96_0220C90C(param_1,5,(int)sStack_16,(int)sStack_18);
      ManagedSprite_GetPositionXYWithSubscreenOffset
                (*(undefined4 *)(param_1 + 0x28),&sStack_16,&sStack_18,0x100000);
      sStack_18 = sStack_18 + (short)iVar3;
      ov96_0220C90C(param_1,6,(int)sStack_16,(int)sStack_18);
    }
    uVar5 = (*(uint *)(param_1 + 0x44) >> 0x18) + 1;
    *(uint *)(param_1 + 0x44) = uVar5 * 0x1000000 | *(uint *)(param_1 + 0x44) & 0xffffff;
    if (3 < (uVar5 & 0xff)) {
      uVar6 = *(undefined4 *)(param_1 + 0x24);
      *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(param_1 + 0x28);
      *(undefined4 *)(param_1 + 0x28) = uVar6;
      uVar6 = *(undefined4 *)(param_1 + 0x2c);
      *(undefined4 *)(param_1 + 0x2c) = *(undefined4 *)(param_1 + 0x30);
      *(undefined4 *)(param_1 + 0x30) = uVar6;
      ov96_0220C90C(param_1,5,0x28,0x30);
      ov96_0220C90C(param_1,6,0x28,0x88);
      ManagedSprite_SetPositionXYWithSubscreenOffset
                (*(undefined4 *)(param_1 + 0x20),0x88,0xfffffff8,0x100000);
      PlaySE(0x8b5);
      *(uint *)(param_1 + 0x44) =
           (((*(uint *)(param_1 + 0x44) & 0xffff) >> 10) + 1 & 0x3f) << 10 |
           *(uint *)(param_1 + 0x44) & 0xff03ff;
      return;
    }
    break;
  case 4:
    func_0x0200de44(*(undefined4 *)(param_1 + 0x20),&sStack_1a,&sStack_1c);
    iVar3 = -0x18 - sStack_1c;
    if (iVar3 < 0) {
      iVar3 = -iVar3;
    }
    sVar2 = (short)iVar3;
    iVar3 = (int)sVar2;
    if (iVar3 != 0) {
      sVar2 = (short)((uint)((iVar3 - (iVar3 >> 0x1f)) * 0x8000) >> 0x10);
    }
    sStack_1c = sStack_1c + sVar2 + 2;
    if (sStack_1c < 0x70) {
      ManagedSprite_SetPositionXYWithSubscreenOffset
                (*(undefined4 *)(param_1 + 0x20),(int)sStack_1a,(int)sStack_1c,0x100000);
      return;
    }
    PlaySE(0x8b6);
    ManagedSprite_SetPositionXY(*(undefined4 *)(param_1 + 0x20),0x88,0x70);
    ManagedSprite_SetAnimateFlag(*(undefined4 *)(param_1 + 0x20),1);
    ManagedSprite_ResetSpriteAnimCtrlState(*(undefined4 *)(param_1 + 0x1c));
    *(uint *)(param_1 + 0x44) =
         (((*(uint *)(param_1 + 0x44) & 0xffff) >> 10) + 1 & 0x3f) << 10 |
         *(uint *)(param_1 + 0x44) & 0xffff03ff;
    return;
  case 5:
    uVar4 = (uVar5 >> 0x18) + 1;
    *(uint *)(param_1 + 0x44) = uVar4 * 0x1000000 | uVar5 & 0xffffff;
    if (1 < (uVar4 & 0xff)) {
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x20),0);
      uVar1 = ov96_021E5F24(*(undefined4 *)(param_1 + 0xc));
      ov96_0220C54C(param_1,0,uVar1,*(uint *)(param_1 + 0x40) & 3,1);
      *(uint *)(param_1 + 0x44) =
           (((*(uint *)(param_1 + 0x44) & 0xffff) >> 10) + 1 & 0x3f) << 10 |
           *(uint *)(param_1 + 0x44) & 0xff03ff;
      return;
    }
    break;
  case 6:
    ov96_0220C578(param_1,0);
    return;
  default:
    GF_AssertFail();
  }
  return;
}

