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
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov96_0220A254();
undefined4 ov96_0220D1A0();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 GF_AssertFail();
extern undefined ov96_0221CCC8;

void ov96_02209F8C(undefined4 param_1)

{
  short sVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined *puStack_28;
  int iStack_20;
  uint uStack_1c;
  
  iVar2 = PokeathlonCourse_GetHeapAllocPtr4();
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  if (*(int *)(iVar2 + 8) == 0) {
    GF_AssertFail();
  }
  if (*(int *)(iVar2 + 0xc) == 0) {
    GF_AssertFail();
  }
  if (*(int *)(iVar2 + 0x44) == 0) {
    GF_AssertFail();
  }
  uStack_1c = 0;
  iStack_20 = iVar2 + 0x54;
  sVar1 = 0x78;
  puStack_28 = &ov96_0221CCC8;
  do {
    uVar3 = ov96_0220D1A0(*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0xc),(int)sVar1,0x98,
                          uStack_1c + 0xd & 0xffff,3);
    *(undefined4 *)(iStack_20 + 4) = uVar3;
    ov96_0220A254(param_1,uStack_1c & 0xff,0);
    uVar3 = ov96_0220D1A0(*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0xc),(int)sVar1,0x98,
                          0x12,3);
    *(undefined4 *)(iStack_20 + 8) = uVar3;
    ManagedSprite_SetDrawFlag(uVar3,0);
    iVar6 = 0;
    iVar4 = 0;
    iVar5 = iStack_20;
    do {
      uVar3 = ov96_0220D1A0(*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0xc),
                            (sVar1 + 6) * 0x10000 >> 0x10,
                            (((0x88 - iVar4) * 0x10000 >> 0x10) + -0x14) * 0x10000 >> 0x10,
                            *(uint *)(puStack_28 + 8) & 0xffff,0x2cU - iVar6 & 0xff);
      *(undefined4 *)(iVar5 + 0x5c) = uVar3;
      ManagedSprite_SetDrawFlag(uVar3,0);
      iVar6 = iVar6 + 1;
      iVar4 = iVar4 + 0x10;
      iVar5 = iVar5 + 4;
    } while (iVar6 < 5);
    iVar4 = 0;
    iVar6 = 0;
    iVar5 = iStack_20;
    do {
      uVar3 = ov96_0220D1A0(*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0xc),(int)sVar1,
                            (0x88 - iVar6) * 0x10000 >> 0x10,*(uint *)(puStack_28 + 4) & 0xffff,
                            0x18U - iVar4 & 0xff);
      *(undefined4 *)(iVar5 + 0xc) = uVar3;
      ManagedSprite_SetDrawFlag(uVar3,0);
      iVar4 = iVar4 + 1;
      iVar6 = iVar6 + 4;
      iVar5 = iVar5 + 4;
    } while (iVar4 < 0x14);
    iStack_20 = iStack_20 + 0x70;
    sVar1 = sVar1 + 0x20;
    puStack_28 = puStack_28 + 0xc;
    uStack_1c = uStack_1c + 1;
  } while ((int)uStack_1c < 4);
  return;
}

