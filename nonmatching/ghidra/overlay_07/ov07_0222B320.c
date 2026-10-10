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
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_02222268(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_0223192C(undefined4, undefined4);
undefined4 ov07_0221FB04(undefined4, undefined4);
undefined4 ManagedSprite_SetPositionXY(undefined4, undefined4, undefined4);
undefined4 func_0x0200e0c0(undefined4, undefined4) __asm__("sub_0200E0C0");
undefined4 ov07_0221F9E8(undefined4, undefined4);
undefined4 ov07_022222B4(undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 func_0x0200dd54(undefined4, undefined4) __asm__("sub_0200DD54");
undefined4 ov07_0221C470(undefined4);
undefined4 ov07_02231FE4(undefined4, undefined4);
undefined4 SpriteSystem_NewSprite(undefined4, undefined4, undefined4);
undefined4 ov07_0221BFC0(undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 func_0x0200dd68(undefined4, undefined4) __asm__("sub_0200DD68");

void ov07_0222B320(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  short sVar2;
  short sVar3;
  short sVar4;
  short sVar5;
  int iVar6;
  undefined4 uVar7;
  int iVar8;
  int iVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  int iVar12;
  int iVar13;
  bool bVar14;
  int iStack_64;
  undefined1 auStack_4c [52];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  iVar6 = ov07_022324D8(param_1,0x74);
  *(undefined2 *)(iVar6 + 0x1c) = 10;
  ov07_02231FE4(param_1,iVar6);
  ov07_0221F9E8(auStack_4c,*(undefined4 *)(iVar6 + 4));
  *(undefined4 *)(iVar6 + 0x30) = param_4;
  iVar12 = 1;
  iVar8 = iVar6;
  do {
    uVar7 = SpriteSystem_NewSprite
                      (*(undefined4 *)(iVar6 + 8),*(undefined4 *)(iVar6 + 0x10),auStack_4c);
    *(undefined4 *)(iVar8 + 0x34) = uVar7;
    uVar1 = iVar12 >> 0x1f;
    if ((iVar12 * -0x80000000 + uVar1 >> 0x1f | uVar1 << 1) != uVar1) {
      func_0x0200e0c0(*(undefined4 *)(iVar8 + 0x34),1);
    }
    iVar12 = iVar12 + 1;
    iVar8 = iVar8 + 4;
  } while (iVar12 < 8);
  uVar7 = ov07_0221C468(*(undefined4 *)(iVar6 + 4));
  uVar7 = ov07_0221FA48(*(undefined4 *)(iVar6 + 4),uVar7);
  sVar2 = Pokepic_GetAttr(uVar7,0);
  sVar3 = Pokepic_GetAttr(uVar7,1);
  uVar7 = ov07_0221C470(*(undefined4 *)(iVar6 + 4));
  uVar7 = ov07_0221FA48(*(undefined4 *)(iVar6 + 4),uVar7);
  sVar4 = Pokepic_GetAttr(uVar7,0);
  sVar5 = Pokepic_GetAttr(uVar7,1);
  ov07_02222268(iVar6 + 0x50,(int)sVar2,(int)sVar4,(int)sVar3,(int)sVar5,0x14);
  iVar13 = 0;
  iVar12 = 0;
  uVar7 = ov07_0221C468(*(undefined4 *)(iVar6 + 4));
  iVar8 = ov07_0223192C(*(undefined4 *)(iVar6 + 4),uVar7);
  bVar14 = iVar8 == 4;
  iVar8 = iVar6;
  do {
    iVar9 = ov07_022222B4(iVar6 + 0x50);
    uVar1 = iVar13 >> 0x1f;
    if ((iVar13 * -0x80000000 + uVar1 >> 0x1f | uVar1 << 1) != uVar1) {
      if (bVar14) {
        bVar14 = false;
      }
      else if (iVar12 < 8) {
        ManagedSprite_SetPositionXY
                  (*(undefined4 *)(iVar8 + 0x30),(int)*(short *)(iVar6 + 0x50),
                   (int)*(short *)(iVar6 + 0x52));
        iVar8 = iVar8 + 4;
        iVar12 = iVar12 + 1;
      }
    }
    iVar13 = iVar13 + 1;
  } while (iVar9 == 1);
  uVar7 = ov07_0221FB04(*(undefined4 *)(iVar6 + 4),1);
  uVar10 = ov07_0221FB04(*(undefined4 *)(iVar6 + 4),2);
  iVar12 = 0;
  iVar8 = iVar6;
  iStack_64 = iVar6;
  do {
    *(short *)(iStack_64 + 0x1e) = (short)(8 - iVar12) * 4;
    iVar13 = ov07_0221BFC0(*(undefined4 *)(iVar6 + 4));
    if (iVar13 == 0) {
      uVar11 = ov07_0221C468(*(undefined4 *)(iVar6 + 4));
      iVar13 = ov07_0223192C(*(undefined4 *)(iVar6 + 4),uVar11);
      if (iVar13 == 3) {
        if (iVar12 < 4) {
          func_0x0200dd54(*(undefined4 *)(iVar8 + 0x30),uVar10);
        }
        else {
          func_0x0200dd54(*(undefined4 *)(iVar8 + 0x30),uVar7);
        }
      }
      else if (iVar12 < 4) {
        func_0x0200dd54(*(undefined4 *)(iVar8 + 0x30),uVar7);
      }
      else {
        func_0x0200dd54(*(undefined4 *)(iVar8 + 0x30),uVar10);
      }
      func_0x0200dd68(*(undefined4 *)(iVar8 + 0x30),8 - iVar12);
    }
    else {
      func_0x0200dd68(*(undefined4 *)(iVar8 + 0x30),iVar12);
      func_0x0200dd54(*(undefined4 *)(iVar8 + 0x30),uVar10);
    }
    iVar12 = iVar12 + 1;
    iStack_64 = iStack_64 + 2;
    iVar8 = iVar8 + 4;
  } while (iVar12 < 8);
  ov07_0221C410(*(undefined4 *)(iVar6 + 4),0x222b2a9,iVar6);
  return;
}

