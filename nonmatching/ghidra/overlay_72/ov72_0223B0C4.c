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
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 NARC_Delete();
undefined4 LoadFontPal0();
undefined4 GfGfxLoader_GetScrnDataFromOpenNarc();
undefined4 Heap_Free();
undefined4 ToggleBgLayer();
undefined4 NARC_New();
undefined4 func_0x0201cc08() __asm__("sub_0201CC08");
undefined4 BgCommitTilemapBufferToVram();
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc();

void ov72_0223B0C4(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  ushort *puVar3;
  int iVar4;
  ushort *puVar5;
  int iStack_18;
  
  uVar1 = NARC_New(0xef,param_1[10]);
  if (*(byte *)((int)param_1 + 0x2f) < 4) {
    GfGfxLoader_GXLoadPalFromOpenNarc
              (uVar1,0,0,(uint)*(byte *)((int)param_1 + 0x2e) << 5,0x20,param_1[10]);
    LoadFontPal0(0,(uint)*(byte *)(param_1 + 0xc) << 5,param_1[10]);
  }
  else {
    GfGfxLoader_GXLoadPalFromOpenNarc
              (uVar1,0,4,(uint)*(byte *)((int)param_1 + 0x2e) << 5,0x20,param_1[10]);
    LoadFontPal0(4,(uint)*(byte *)(param_1 + 0xc) << 5,param_1[10]);
  }
  GfGfxLoader_LoadCharDataFromOpenNarc
            (uVar1,1,*param_1,*(undefined1 *)((int)param_1 + 0x2f),0,0,0,param_1[10]);
  uVar2 = GfGfxLoader_GetScrnDataFromOpenNarc(uVar1,10,0,&iStack_18,param_1[10]);
  puVar3 = (ushort *)func_0x0201cc08(*param_1,*(undefined1 *)((int)param_1 + 0x2f));
  iVar4 = 0;
  puVar5 = (ushort *)(iStack_18 + 0xc);
  do {
    iVar4 = iVar4 + 1;
    *puVar3 = (ushort)*(byte *)((int)param_1 + 0x2e) << 0xc | *puVar5 & 0xfff;
    puVar5 = puVar5 + 1;
    puVar3 = puVar3 + 1;
  } while (iVar4 < 0x300);
  BgCommitTilemapBufferToVram(*param_1,*(undefined1 *)((int)param_1 + 0x2f));
  Heap_Free(uVar2);
  NARC_Delete(uVar1);
  ToggleBgLayer(*(undefined1 *)((int)param_1 + 0x2f),1);
  ToggleBgLayer(*(undefined1 *)((int)param_1 + 0x32),1);
  return;
}

