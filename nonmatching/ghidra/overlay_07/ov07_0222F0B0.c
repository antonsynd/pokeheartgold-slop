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
undefined4 func_0x020f2948(undefined4, undefined4, undefined4, undefined4) __asm__("sub_020F2948");
undefined4 ManagedSprite_SetDrawFlag(undefined4, undefined4);
undefined4 func_0x0200e0c0(undefined4, undefined4) __asm__("sub_0200E0C0");
undefined4 ov07_0221F9E8(undefined4, undefined4);
undefined4 ov07_0221FAA0(undefined4, undefined4);
undefined4 ManagedSprite_SetPositionXY(undefined4, undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 SpriteSystem_NewSprite(undefined4, undefined4, undefined4);
extern undefined FX_SinCosTable_;
extern undefined UNK_021094de __asm__("sub_021094DE");

void ov07_0222F0B0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  short sVar2;
  short sVar3;
  undefined2 uVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  undefined4 *puVar9;
  int iVar10;
  longlong lVar11;
  undefined1 auStack_4c [52];
  undefined4 uStack_18;

  uStack_18 = param_4;
  puVar5 = (undefined4 *)ov07_022324D8(param_1,0x90);
  *puVar5 = param_1;
  puVar5[1] = param_2;
  puVar5[2] = param_3;
  uVar6 = ov07_0221C468(*puVar5);
  uVar6 = ov07_0221FA48(*puVar5,uVar6);
  puVar5[6] = uVar6;
  sVar2 = Pokepic_GetAttr(uVar6,0);
  sVar3 = Pokepic_GetAttr(puVar5[6],1);
  *(short *)(puVar5 + 0x11) = sVar3;
  uVar6 = ov07_0221C468(*puVar5);
  uVar4 = ov07_0221FAA0(*puVar5,uVar6);
  *(undefined2 *)((int)puVar5 + 0x46) = uVar4;
  ov07_0221F9E8(auStack_4c,*puVar5);
  iVar8 = 0;
  puVar9 = puVar5;
  do {
    uVar6 = param_4;
    if (iVar8 != 0) {
      uVar6 = SpriteSystem_NewSprite(param_2,param_3,auStack_4c);
    }
    puVar9[0x12] = uVar6;
    ManagedSprite_SetDrawFlag(puVar9[0x12],0);
    iVar7 = ((iVar8 / 2) * 0x1555 >> 4) * 4;
    lVar11 = func_0x020f2948((int)*(short *)(&UNK_021094de + iVar7),
                             (int)*(short *)(&UNK_021094de + iVar7) >> 0x1f,0x30000,0);
    iVar10 = (int)(((uint)(lVar11 + 0x800) >> 0xc |
                   (int)((ulonglong)(lVar11 + 0x800) >> 0x20) * 0x100000) << 4) >> 0x10;
    lVar11 = func_0x020f2948((int)*(short *)(&FX_SinCosTable_ + iVar7),
                             (int)*(short *)(&FX_SinCosTable_ + iVar7) >> 0x1f,0x30000,0);
    uVar1 = iVar8 >> 0x1f;
    if ((iVar8 * -0x80000000 + uVar1 >> 0x1f | uVar1 << 1) == uVar1) {
      func_0x0200e0c0(puVar9[0x12],1);
    }
    else {
      iVar10 = -iVar10;
    }
    ManagedSprite_SetPositionXY
              (puVar9[0x12],(sVar2 + iVar10) * 0x10000 >> 0x10,
               ((int)sVar3 -
               ((int)(((uint)(lVar11 + 0x800) >> 0xc |
                      (int)((ulonglong)(lVar11 + 0x800) >> 0x20) * 0x100000) << 4) >> 0x10)) *
               0x10000 >> 0x10);
    if (iVar8 < 2) {
      uVar6 = 8;
    }
    else {
      uVar6 = 0;
    }
    iVar8 = iVar8 + 1;
    puVar9[0x1e] = uVar6;
    puVar9 = puVar9 + 1;
  } while (iVar8 < 6);
  ov07_0221C410(*puVar5,0x222ef89,puVar5);
  return;
}

