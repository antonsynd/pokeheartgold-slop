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
undefined4 func_0x020cfc6c() __asm__("sub_020CFC6C");
undefined4 GfGfxLoader_GetScrnData();
undefined4 func_0x020cfcc0() __asm__("sub_020CFCC0");
undefined4 GF_AssertFail();
undefined4 GfGfxLoader_LoadFromNarc();
undefined4 ov51_021E60F4();
undefined4 ov51_021E6200();
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 func_0x020b70f4() __asm__("sub_020B70F4");
undefined4 Heap_Free();
undefined4 GfGfxLoader_GetPlttData();
extern undefined ov51_021E7F08;
undefined4 ov51_021E6C6C();
undefined4 GfGfxLoader_LoadCharData();
undefined4 ov51_021E6CF0();
undefined4 BgCommitTilemapBufferToVram();
undefined4 GfGfxLoader_LoadScrnData();
undefined4 CopyToBgTilemapRect();

void ov51_021E6354(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  ushort *puVar3;
  undefined1 *puVar4;
  int iStack_14;
  int iStack_10;

  uVar1 = GfGfxLoader_GetPlttData(0x31,0,&iStack_10,0x19);
  func_0x020d2894(*(undefined4 *)(iStack_10 + 0xc),0x200);
  func_0x020cfcc0(*(undefined4 *)(iStack_10 + 0xc),0,0x200);
  Heap_Free(uVar1);
  puVar4 = (undefined1 *)param_1[0x3a];
  ov51_021E60F4(puVar4[3],((byte)puVar4[4] & 0xf) >> 3,*puVar4);
  uVar1 = GfGfxLoader_GetPlttData(0x31,0x1c,&iStack_14,0x19);
  func_0x020d2894(*(undefined4 *)(iStack_14 + 0xc),0x200);
  func_0x020cfc6c(*(undefined4 *)(iStack_14 + 0xc),0,0x200);
  Heap_Free(uVar1);
  if (*(byte *)(param_1[0x3a] + 5) == 0xff) {
    uVar1 = GfGfxLoader_LoadFromNarc(0x31,0x2c,0,0x19,0);
    param_1[0xc3b] = uVar1;
    if (param_1[0xc3b] == 0) {
      GF_AssertFail();
    }
    iVar2 = func_0x020b70f4(param_1[0xc3b],param_1 + 0xc3c);
    if (iVar2 == 0) {
      GF_AssertFail();
    }
    if ((int)((uint)*(byte *)(param_1[0x3a] + 4) << 0x1d) < 0) {
      uVar1 = GfGfxLoader_GetScrnData(0x31,0x37,0,param_1 + 0xced,0x19);
      param_1[0xcec] = uVar1;
    }
    else {
      uVar1 = GfGfxLoader_GetScrnData(0x31,0x36,0,param_1 + 0xced,0x19);
      param_1[0xcec] = uVar1;
    }
  }
  else {
    uVar1 = GfGfxLoader_LoadFromNarc
                      (0x31,*(undefined4 *)(&ov51_021E7F08 + (uint)*(byte *)(param_1[0x3a] + 5) * 4)
                       ,0,0x19,0);
    param_1[0xc3b] = uVar1;
    if (param_1[0xc3b] == 0) {
      GF_AssertFail();
    }
    iVar2 = func_0x020b70f4(param_1[0xc3b],param_1 + 0xc3c);
    if (iVar2 == 0) {
      GF_AssertFail();
    }
    uVar1 = GfGfxLoader_GetScrnData(0x31,0x3d,0,param_1 + 0xced,0x19);
    param_1[0xcec] = uVar1;
    ov51_021E6200(*(undefined1 *)(param_1[0x3a] + 5));
  }
  ov51_021E6C6C(param_1);
  GfGfxLoader_LoadCharData(0x31,0x29,*param_1,6,0,0,0,0x19);
  GfGfxLoader_LoadScrnData(0x31,0x2f,*param_1,6,0,0,0,0x19);
  GfGfxLoader_LoadCharData(0x31,0x2a,*param_1,5,0,0,0,0x19);
  GfGfxLoader_LoadScrnData(0x31,0x31,*param_1,5,0,0,0,0x19);
  GfGfxLoader_LoadCharData(0x31,0x2b,*param_1,2,0,0,0,0x19);
  uVar1 = GfGfxLoader_GetScrnData(0x31,0x35,0,param_1 + 0xcef,0x19);
  param_1[0xcee] = uVar1;
  if ((int)((uint)*(byte *)((int)param_1 + 0x343a) << 0x1f) < 0) {
    GfGfxLoader_LoadScrnData(0x31,0x34,*param_1,2,0,0,0,0x19);
  }
  else {
    GfGfxLoader_LoadScrnData(0x31,0x33,*param_1,2,0,0,0,0x19);
  }
  GfGfxLoader_LoadScrnData(0x31,0x32,*param_1,3,0,0,0,0x19);
  if (((int)((uint)*(byte *)((int)param_1 + 0x343a) << 0x1f) < 0) ||
     (*(ushort *)(param_1[0x3a] + 6) < 0xff)) {
    if (*(short *)(param_1[0x3a] + 6) == -1) {
      puVar3 = (ushort *)param_1[0xcef];
      CopyToBgTilemapRect(*param_1,2,0,0xe,7,9,puVar3 + 6,7,0,(*puVar3 & 0x7ff) >> 3,
                          (puVar3[1] & 0x7ff) >> 3);
    }
  }
  else {
    puVar3 = (ushort *)param_1[0xcef];
    CopyToBgTilemapRect(*param_1,2,0,7,7,9,puVar3 + 6,0,0,(*puVar3 & 0x7ff) >> 3,
                        (puVar3[1] & 0x7ff) >> 3);
  }
  BgCommitTilemapBufferToVram(*param_1,2);
  ov51_021E6CF0(param_1[0x3a] + 0x68,param_1 + 0x3b);
  return;
}

