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
undefined4 GfGfxLoader_GXLoadPal();
undefined4 ov96_021EB588();
undefined4 ov96_021EB52C();
undefined4 NARC_New();
undefined4 func_0x020b70f4() __asm__("sub_020B70F4");
undefined4 Heap_AllocAtEnd();
undefined4 NARC_Delete();
undefined4 GetMonIconPaletteEx();
undefined4 GetMonIconNaixEx();
undefined4 ov96_0220831C();
undefined4 sub_02074490();
undefined4 NARC_ReadWholeMember();

void ov96_022080F4(undefined4 *param_1,undefined2 *param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  undefined2 uVar2;
  int iVar3;
  char cVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  undefined4 *puVar9;
  int iVar10;
  uint uStack_3c;
  undefined4 *puStack_30;
  int iStack_2c;
  int iStack_24;
  int iStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  uVar5 = NARC_New(0x14,*param_1);
  uVar6 = sub_02074490();
  GfGfxLoader_GXLoadPal(0x14,uVar6,5,0xc0,0x60,*param_1);
  iVar10 = 0;
  puVar9 = param_1 + 0x33;
  puVar7 = param_1;
  do {
    uVar6 = Heap_AllocAtEnd(*param_1,0x1000);
    puVar7[0x27] = uVar6;
    uVar1 = param_2[1];
    uVar2 = *param_2;
    uVar6 = GetMonIconNaixEx(uVar2,0,uVar1 & 0xff);
    NARC_ReadWholeMember(uVar5,uVar6,puVar7[0x27]);
    func_0x020b70f4(puVar7[0x27],puVar9);
    cVar4 = GetMonIconPaletteEx(uVar2,uVar1 & 0xff,0);
    puVar7 = puVar7 + 1;
    iVar3 = iVar10 + 0xfc;
    iVar10 = iVar10 + 1;
    *(char *)((int)param_1 + iVar3) = cVar4 + '\x06';
    param_2 = param_2 + 2;
    puVar9 = puVar9 + 1;
  } while (iVar10 < 0xc);
  NARC_Delete(uVar5);
  uStack_3c = 0;
  iStack_2c = 0x70;
  puVar7 = param_1;
  puVar9 = param_1;
  puStack_30 = param_1;
  do {
    ov96_0220831C(param_1,uStack_3c & 0xff,0);
    ov96_021EB52C(puVar7[0xe],1,1);
    ov96_021EB52C(puVar7[0x10],1,1);
    uStack_1c = 0;
    iStack_24 = iStack_2c << 0xc;
    iStack_20 = 0x350000;
    ov96_021EB588(puVar7[0xe],&iStack_24);
    ov96_021EB588(puVar7[0x10],&iStack_24);
    ov96_021EB588(puVar7[0xf],&iStack_24);
    iVar10 = 0;
    puVar8 = puStack_30;
    do {
      ov96_021EB588(puVar8[0x5f],&iStack_24);
      iVar10 = iVar10 + 1;
      puVar8 = puVar8 + 1;
    } while (iVar10 < 2);
    iStack_20 = iStack_20 + -0x20000;
    ov96_021EB588(puVar9[0x4f],&iStack_24);
    ov96_021EB588(puVar9[0x50],&iStack_24);
    ov96_021EB588(puVar9[0x51],&iStack_24);
    puVar7 = puVar7 + 7;
    iStack_2c = iStack_2c + 0x28;
    puVar9 = puVar9 + 4;
    puStack_30 = puStack_30 + 2;
    uStack_3c = uStack_3c + 1;
  } while ((int)uStack_3c < 4);
  return;
}

