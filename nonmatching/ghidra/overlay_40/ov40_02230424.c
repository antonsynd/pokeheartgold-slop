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
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
undefined4 func_0x0200d644() __asm__("sub_0200D644");
undefined4 SpriteSystem_NewSprite();
undefined4 ov40_02230404();
undefined4 func_0x0200d704() __asm__("sub_0200D704");
undefined4 sub_0203088C();
undefined4 GetMonIconPaletteEx();
undefined4 func_0x0200e188() __asm__("sub_0200E188");
undefined4 func_0x0207449c() __asm__("sub_0207449C");
undefined4 GetMonIconNaixEx();
undefined4 sub_02074490();
undefined4 func_0x020744a8() __asm__("sub_020744A8");
undefined4 func_0x0200dd24() __asm__("sub_0200DD24");
undefined4 func_0x0200dd68() __asm__("sub_0200DD68");
undefined4 ManagedSprite_SetAnim();
undefined4 func_0x0200d6d4() __asm__("sub_0200D6D4");
extern undefined ov40_02244F90;

void ov40_02230424(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  short *psVar8;
  short *psVar9;
  int *piVar10;
  undefined4 uVar11;
  undefined4 *puVar12;
  int iStack_140;
  int *piStack_130;
  int iStack_12c;
  int iStack_128;
  int iStack_124;
  int iStack_118;
  int iStack_114;
  undefined4 auStack_10c [12];
  int aiStack_dc [12];
  short sStack_ac;
  short sStack_aa;
  undefined2 uStack_a8;
  undefined2 uStack_a6;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  int iStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  short asStack_78 [48];
  undefined4 uStack_18;

  psVar9 = (short *)&ov40_02244F90;
  iStack_114 = 0;
  psVar8 = asStack_78;
  iVar7 = 0x30;
  uStack_18 = param_4;
  do {
    sVar1 = *psVar9;
    psVar9 = psVar9 + 1;
    *psVar8 = sVar1;
    psVar8 = psVar8 + 1;
    iVar7 = iVar7 + -1;
  } while (iVar7 != 0);
  uVar2 = *(undefined4 *)(param_2 + 0x18);
  uVar3 = *(undefined4 *)(param_2 + 0x1c);
  uVar11 = *(undefined4 *)(param_2 + 0x28);
  uVar4 = sub_02074490();
  func_0x0200d644(uVar11,2,uVar2,uVar3,0x14,uVar4,0,3,1,100000);
  uVar4 = func_0x0207449c();
  func_0x0200d6d4(uVar2,uVar3,0x14,uVar4,0,100000);
  uVar4 = func_0x020744a8();
  func_0x0200d704(uVar2,uVar3,0x14,uVar4,0,100000);
  iStack_124 = 6;
  iStack_12c = 6;
  iStack_128 = 0;
  iStack_118 = 0;
  iVar5 = ov40_02230404(param_1);
  iVar7 = 0;
  if (iVar5 == 1) {
    iStack_124 = 3;
    iStack_12c = 3;
    iStack_118 = 1;
  }
  do {
    if (iStack_128 < iStack_12c) {
      piVar10 = aiStack_dc + iVar7;
      puVar12 = auStack_10c + iVar7;
      iVar5 = iStack_128;
      do {
        *piVar10 = 0xff;
        iVar6 = sub_0203088C(*(undefined4 *)(param_1 + 4),0,iVar5);
        uVar4 = sub_0203088C(*(undefined4 *)(param_1 + 4),1,iVar5);
        if (iVar6 != 0) {
          *piVar10 = iVar6;
          piVar10 = piVar10 + 1;
          *puVar12 = uVar4;
          puVar12 = puVar12 + 1;
          iVar7 = iVar7 + 1;
        }
        iVar5 = iVar5 + 1;
      } while (iVar5 < iStack_12c);
    }
    iVar5 = iVar7;
    if (iVar7 < iStack_12c) {
      piVar10 = aiStack_dc + iVar7;
      puVar12 = auStack_10c + iVar7;
      do {
        *piVar10 = 0;
        piVar10 = piVar10 + 1;
        iVar7 = iVar7 + 1;
        *puVar12 = 0;
        puVar12 = puVar12 + 1;
        iVar5 = iVar5 + 1;
      } while (iVar7 < iStack_12c);
    }
    iStack_128 = iStack_128 + iStack_124;
    iStack_12c = iStack_12c + iStack_124;
    iVar7 = iVar5;
  } while (iStack_12c < 0xd);
  piStack_130 = aiStack_dc;
  iVar7 = 0;
  puVar12 = auStack_10c;
  psVar8 = asStack_78 + iStack_118 * 0x18;
  iStack_140 = param_1;
  do {
    *(undefined4 *)(iStack_140 + 0xc) = 0;
    iVar5 = *piStack_130;
    if (iVar5 != 0) {
      uVar4 = *puVar12;
      uVar11 = GetMonIconNaixEx(iVar5,0,uVar4);
      func_0x0200e188(uVar2,uVar3,0x14,uVar11,0,1,iStack_114 + 100000);
      sStack_ac = *psVar8 + 8;
      sStack_aa = psVar8[1] + -0xc;
      uStack_a8 = 0;
      uStack_a6 = 0;
      uStack_a4 = 0;
      uStack_a0 = 0;
      uStack_9c = 1;
      uStack_80 = 0;
      uStack_7c = 0;
      iStack_98 = iStack_114 + 100000;
      uStack_94 = 100000;
      uStack_90 = 100000;
      uStack_8c = 100000;
      uStack_88 = 0xffffffff;
      uStack_84 = 0xffffffff;
      uVar11 = SpriteSystem_NewSprite
                         (*(undefined4 *)(param_2 + 0x18),*(undefined4 *)(param_2 + 0x1c),&sStack_ac
                         );
      *(undefined4 *)(param_1 + 0xc) = uVar11;
      iVar5 = GetMonIconPaletteEx(iVar5,uVar4,0);
      func_0x0200dd24(*(undefined4 *)(param_1 + 0xc),iVar5 + 4);
      ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0xc),1);
      func_0x0200dc18(*(undefined4 *)(param_1 + 0xc));
      func_0x0200dd68(*(undefined4 *)(param_1 + 0xc),0xc - iVar7);
      param_1 = param_1 + 4;
      iStack_114 = iStack_114 + 1;
    }
    iVar7 = iVar7 + 1;
    iStack_140 = iStack_140 + 4;
    puVar12 = puVar12 + 1;
    piStack_130 = piStack_130 + 1;
    psVar8 = psVar8 + 2;
  } while (iVar7 < 0xc);
  return;
}

