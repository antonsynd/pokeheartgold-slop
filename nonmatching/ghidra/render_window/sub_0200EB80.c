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
undefined4 func_0x020e5ad8() __asm__("sub_020E5AD8");
undefined4 BG_LoadCharTilesData();
undefined4 sub_0200E63C();
undefined4 Heap_Alloc();
undefined4 Heap_Free();

void sub_0200EB80(undefined4 param_1,undefined4 param_2,undefined4 param_3,byte param_4,
                 undefined1 param_5,undefined4 param_6)

{
  byte bVar1;
  undefined4 uVar2;
  int iVar3;
  byte bVar4;
  uint uVar5;
  byte bVar6;
  int iStack_18;
  
  uVar2 = sub_0200E63C(param_5);
  uVar2 = GfGfxLoader_GetCharData(0x26,uVar2,0,&iStack_18,param_6);
  iVar3 = Heap_Alloc(param_6,0x240);
  func_0x020e5ad8(iVar3,*(undefined4 *)(iStack_18 + 0x14),0x240);
  uVar5 = 0;
  do {
    bVar1 = *(byte *)(iVar3 + uVar5);
    bVar6 = bVar1 >> 4;
    if (bVar1 >> 4 == 0) {
      bVar6 = param_4;
    }
    bVar4 = bVar1 & 0xf;
    if ((bVar1 & 0xf) == 0) {
      bVar4 = param_4;
    }
    *(byte *)(iVar3 + uVar5) = bVar4 | bVar6 << 4;
    uVar5 = uVar5 + 1;
  } while (uVar5 < 0x240);
  BG_LoadCharTilesData(param_1,param_2,iVar3,0x240,param_3);
  Heap_Free(uVar2);
  Heap_Free(iVar3);
  return;
}

