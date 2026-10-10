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
unsigned char GetMonIconPaletteEx(unsigned int, unsigned int, unsigned int);
undefined4 ov74_0222D024();
undefined4 sub_02074490(void);
undefined4 GfGfxLoader_GXLoadPal(int, int, int, int, unsigned int, int);
undefined4 ov74_02235690(void);
undefined4 ov74_0223567C();
undefined4 DC_FlushRange(void *, unsigned int);
undefined4 ov74_02235728(int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
undefined4 ov74_0223563C(void);
undefined4 Heap_Free(void *);
void * GfGfxLoader_GetCharData(int, int, int, void *, int);
undefined4 GX_LoadOBJ(void *, unsigned int, unsigned int);
undefined4 Sprite_SetPaletteOverride(void *, int);
undefined4 GetMonIconNaixEx(unsigned int, int, unsigned int);
void * ov74_02235930(unsigned int, void *, unsigned int, unsigned int, unsigned int);
undefined4 Sprite_SetDrawFlag(void *, int);

void ov74_0222DCD4(int *param_1)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  undefined *puVar4;
  uint uVar5;
  int *piVar6;
  int iVar7;
  int iStack_24;
  uint uStack_20;
  int iStack_18;

  if (((param_1[0xb73] == 0) && (param_1[0xb74] == 0)) && (param_1[0xb75] == 0)) {
    iVar2 = ov74_0223567C();
    if (iVar2 == 1) {
      ov74_0222D024(param_1);
    }
    ov74_0223563C();
    ov74_02235690();
    ov74_02235728(0x71,0x1e,0x1b,0x1d,0x1c,0);
    uVar3 = sub_02074490();
    GfGfxLoader_GXLoadPal(0x14,uVar3,1,0x60,0,*param_1);
  }
  iVar2 = 0;
  uStack_20 = 0xb2;
  iStack_24 = 0;
  iVar7 = 100;
  piVar6 = param_1;
  do {
    uVar3 = (uint)*(ushort *)(param_1[param_1[0xaf0] + 0xaed] + iVar2 + 0x34a);
    if (uVar3 == 0) {
      if ((undefined *)piVar6[0xb73] != (undefined *)0x0) {
        Sprite_SetDrawFlag((undefined *)piVar6[0xb73],0);
      }
    }
    else {
      puVar4 = ov74_02235930(0,(undefined *)piVar6[0xb73],uStack_20,0x10,iStack_24 + 10);
      piVar6[0xb73] = (int)puVar4;
      uVar5 = GetMonIconNaixEx(uVar3,0,0);
      puVar4 = GfGfxLoader_GetCharData(0x14,uVar5,0,(undefined *)&iStack_18,*param_1);
      DC_FlushRange(*(undefined **)(iStack_18 + 0x14),0x200);
      GX_LoadOBJ(*(undefined **)(iStack_18 + 0x14),iVar7 << 5,0x200);
      bVar1 = GetMonIconPaletteEx(uVar3,0,0);
      Sprite_SetPaletteOverride((undefined *)piVar6[0xb73],bVar1 + 3);
      Heap_Free(puVar4);
    }
    iVar2 = iVar2 + 2;
    iStack_24 = iStack_24 + 1;
    piVar6 = piVar6 + 1;
    uStack_20 = uStack_20 + 0x19;
    iVar7 = iVar7 + 0x10;
  } while (iStack_24 < 3);
  return;
}

