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
undefined4 GfGfxLoader_GetCharData();
undefined4 Heap_Alloc();
undefined4 sub_0200EA24();
undefined4 GetWindowBgId();
undefined4 Heap_Free();
undefined4 func_0x020e5ad8() __asm__("sub_020E5AD8");
undefined4 BG_LoadCharTilesData();
undefined4 BgConfig_GetHeapId();
undefined4 BgGetCharPtr();

void sub_0200EA68(undefined4 *param_1,undefined4 param_2,int param_3,int param_4,byte param_5,
                 byte param_6)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  int iVar10;
  uint uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  uint uVar14;
  int iStack_1c;
  int iStack_18;

  iStack_18 = param_4;
  uVar1 = BgConfig_GetHeapId(*param_1);
  uVar2 = GetWindowBgId(param_1);
  iVar3 = Heap_Alloc(uVar1,param_4 << 7);
  iVar4 = BgGetCharPtr(uVar2);
  uVar1 = GfGfxLoader_GetCharData(0x26,param_2,0,&iStack_1c,uVar1);
  uVar11 = 0;
  uVar5 = *(undefined4 *)(iStack_1c + 0x14);
  if (0 < param_4) {
    iVar6 = (param_3 + 10) * 0x20;
    iVar7 = (param_3 + 0xb) * 0x20;
    do {
      iVar10 = uVar11 * 0x80;
      func_0x020e5ad8(iVar3 + iVar10,iVar4 + iVar6,0x20);
      func_0x020e5ad8(iVar3 + iVar10 + 0x20,iVar4 + iVar7,0x20);
      func_0x020e5ad8(iVar3 + iVar10 + 0x40,iVar4 + iVar6,0x20);
      func_0x020e5ad8(iVar3 + iVar10 + 0x60,iVar4 + iVar7,0x20);
      uVar11 = uVar11 + 1 & 0xff;
    } while ((int)uVar11 < param_4);
  }
  uVar8 = (0x10 - (uint)param_6) * param_4 & 0xff;
  uVar9 = 0x10 - param_5 & 0xff;
  uVar12 = 0;
  uVar13 = 0;
  iVar4 = iVar3;
  uVar11 = uVar9;
  uVar14 = uVar8;
  sub_0200EA24(uVar5);
  BG_LoadCharTilesData
            (*param_1,uVar2,iVar3,param_4 << 7,param_3 + 0x12,iVar4,uVar9,uVar8,uVar12,uVar13,uVar11
             ,uVar14,param_1,param_3 + 0x12);
  Heap_Free(uVar1);
  Heap_Free(iVar3);
  return;
}

