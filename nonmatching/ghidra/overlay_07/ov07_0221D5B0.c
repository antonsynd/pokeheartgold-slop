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
undefined4 func_0x020d4994(undefined4, undefined4, undefined4) __asm__("sub_020D4994");
undefined4 SysTask_CreateOnMainQueue(undefined4, undefined4, undefined4);
undefined4 PaletteData_LoadNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 BG_LoadCharTilesData(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221D3CC(undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 BgGetCharPtr(undefined4);
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x0201bc8c(undefined4, undefined4, undefined4, undefined4) __asm__("sub_0201BC8C");
undefined4 ToggleBgLayer(undefined4, undefined4);
undefined4 Heap_Alloc(undefined4, undefined4);
undefined4 ov07_0221FAE8(undefined4);
undefined4 func_0x0201bb68(undefined4, undefined4) __asm__("sub_0201BB68");

void ov07_0221D5B0(undefined4 *param_1)

{
  undefined1 uVar1;
  short sVar2;
  short sVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 *puVar8;
  int iVar9;
  undefined4 uVar10;
  
  iVar6 = param_1[6];
  param_1[6] = (undefined4 *)(iVar6 + 4);
  uVar7 = *(undefined4 *)(iVar6 + 4);
  param_1[6] = (int *)(iVar6 + 8);
  iVar9 = *(int *)(iVar6 + 8);
  param_1[6] = iVar6 + 0xc;
  iVar6 = ov07_0221D3CC(param_1,uVar7);
  puVar8 = *(undefined4 **)(param_1[0x30] + iVar6 * 4 + 0xb0);
  uVar7 = puVar8[1];
  uVar10 = *puVar8;
  uVar4 = puVar8[2];
  uVar5 = BgGetCharPtr(2);
  func_0x020d4994(uVar5,0,0x1900);
  ToggleBgLayer(2,0);
  BG_LoadCharTilesData(param_1[0x31],2,uVar10,0xc80,0);
  PaletteData_LoadNarc(param_1[0x32],uVar7,uVar4,*param_1,0,0,0x80);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_1[0x6c],0x10c,param_1[0x31],2,0,0,0,*param_1);
  if (iVar9 == 1) {
    uVar7 = Heap_Alloc(*param_1,0x10);
    param_1[0x5e] = uVar7;
    *(undefined4 *)param_1[0x5e] = param_1[0x31];
    uVar7 = ov07_0221FA48(param_1,iVar6);
    *(undefined4 *)(param_1[0x5e] + 8) = uVar7;
    *(undefined1 *)(param_1[0x5e] + 4) = 0;
    *(undefined1 *)(param_1[0x5e] + 5) = 0;
    uVar7 = SysTask_CreateOnMainQueue(0x221d4fd,param_1[0x5e],0x1001);
    *(undefined4 *)(param_1[0x5e] + 0xc) = uVar7;
  }
  uVar7 = ov07_0221FA48(param_1,iVar6);
  sVar2 = Pokepic_GetAttr(uVar7,0);
  uVar7 = ov07_0221FA48(param_1,iVar6);
  sVar3 = Pokepic_GetAttr(uVar7,1);
  uVar7 = ov07_0221FA48(param_1,iVar6);
  iVar6 = Pokepic_GetAttr(uVar7,0x29);
  func_0x0201bc8c(param_1[0x31],2,0,-(sVar2 + -0x28));
  func_0x0201bc8c(param_1[0x31],2,3,-(((sVar3 - iVar6) * 0x10000 >> 0x10) + -0x28));
  ToggleBgLayer(2,1);
  uVar1 = ov07_0221FAE8(param_1);
  func_0x0201bb68(2,uVar1);
  return;
}

