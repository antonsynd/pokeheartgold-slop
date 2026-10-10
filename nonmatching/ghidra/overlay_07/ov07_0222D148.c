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
undefined4 ov07_0221FAEC();
undefined4 ov07_0221BFD0();
undefined4 ov07_02231924();
undefined4 ManagedSprite_SetDrawFlag(void *, int);
undefined4 Pokepic_GetAttr(void *, int);
undefined4 ov07_02222D88();
undefined4 ov07_02222AC4();
undefined4 ov07_0221C470();
undefined4 ov07_02231E74();
undefined4 ov07_0221FA78();
undefined4 ov07_0221C4E8();
undefined4 ManagedSprite_SetPriority(void *, int);
undefined4 ov07_0221FAE8();
undefined4 ov07_022324D8();
undefined4 ov07_0221FA48();
undefined4 ov07_0221FAF8();
undefined4 ov07_02222CCC();
undefined4 SetBgPriority(unsigned char, unsigned short);
undefined4 PaletteData_BlendPalettes(void *, int, unsigned short, unsigned char, unsigned short);
undefined4 ov07_0221C410();

void ov07_0222D148(undefined4 param_1)

{
  byte bVar1;
  ushort uVar2;
  short sVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  undefined *puVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  
  puVar4 = (undefined4 *)ov07_022324D8(param_1,0x4c);
  *puVar4 = param_1;
  uVar5 = ov07_0221FA78();
  puVar4[6] = uVar5;
  ov07_02231E74(*puVar4,0,0x10);
  ov07_02222AC4(puVar4 + 7,0,8,0x10,8,0x18);
  uVar5 = ov07_0221C470(*puVar4);
  puVar6 = (undefined *)ov07_0221FA48(*puVar4,uVar5);
  puVar4[4] = puVar6;
  iVar7 = Pokepic_GetAttr(puVar6,0);
  iVar8 = Pokepic_GetAttr((undefined *)puVar4[4],1);
  iVar9 = Pokepic_GetAttr((undefined *)puVar4[4],0x29);
  uVar12 = ((((short)iVar8 - iVar9) * 0x10000 >> 0x10) + -0x28) * 0x10000 >> 0x10;
  uVar5 = ov07_0221C4E8(*puVar4,0);
  puVar4[0x12] = uVar5;
  uVar5 = ov07_0221C470(*puVar4);
  iVar8 = ov07_02231924(*puVar4,uVar5);
  if ((iVar8 == 5) || (iVar8 == 2)) {
    ManagedSprite_SetDrawFlag((undefined *)puVar4[0x12],1);
    ManagedSprite_SetPriority((undefined *)puVar4[0x12],2);
  }
  else {
    bVar1 = ov07_0221FAEC(*puVar4,1);
    uVar2 = ov07_0221FAE8(*puVar4);
    SetBgPriority(bVar1,uVar2 & 0xff);
    sVar3 = ov07_0221FAE8(*puVar4);
    SetBgPriority(0,sVar3 + 1U & 0xff);
    ManagedSprite_SetDrawFlag((undefined *)puVar4[0x12],0);
  }
  uVar14 = (int)((uVar12 + 0x50) * 0x10000) >> 0x10;
  uVar13 = uVar12;
  if ((int)uVar12 < 0) {
    uVar13 = 0;
  }
  if (0xbf < (int)uVar14) {
    uVar14 = 0xbf;
  }
  uVar5 = ov07_0221FAF8(param_1,1);
  uVar10 = ov07_02222D88(-(((short)iVar7 + -0x28) * 0x10000 >> 0x10) & 0xffff,-uVar12 & 0xffff);
  uVar11 = ov07_0221BFD0(param_1);
  uVar5 = ov07_02222CCC(uVar13 & 0xff,uVar14 & 0xff,0x38e,0x5000,100,uVar5,0,uVar10,uVar11);
  puVar4[5] = uVar5;
  PaletteData_BlendPalettes((undefined *)puVar4[6],0,0x100,8,0);
  ov07_0221C410(*puVar4,0x222d051,puVar4);
  return;
}

