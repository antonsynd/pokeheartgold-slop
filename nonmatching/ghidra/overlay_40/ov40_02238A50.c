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
undefined4 GfGfx_EngineATogglePlanes();
undefined4 sub_020879E0();
undefined4 ov40_0222E79C();
undefined4 ov40_0222F720();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 ov40_0222DA00();
undefined4 ov40_0222F920();
undefined4 ov40_02236184();
undefined4 ov40_02230964();
undefined4 ov40_02237D6C();
undefined4 ov40_02237B7C();
undefined4 ov40_0222D980();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov40_0222BF80();
undefined4 ov40_0222FA24();
undefined4 ov40_0222E7DC();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();

undefined4 ov40_02238A50(int param_1)

{
  int iVar1;
  int iVar2;

  iVar2 = *(int *)(param_1 + 0x860);
  iVar1 = *(int *)(param_1 + 8);
  if (iVar1 == 0) {
    sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
    if (*(int *)(iVar2 + 0x2f64) == 0) {
      ov40_02237D6C(param_1);
    }
    ov40_0222FA24(param_1 + 0x47c);
    ov40_0222F720(param_1 + 0x49c);
    ov40_0222F920(param_1 + 0x49c,param_1);
    *(undefined4 *)(iVar2 + 0x2f64) = 1;
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),2);
    ov40_0222D980(iVar2 + 0x1a4,iVar2 + 0x1a8,8,0x12,8,0x12,1);
    GfGfx_EngineATogglePlanes(4,0);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else if (iVar1 != 1) {
    if (iVar1 != 2) {
      return 0;
    }
    iVar1 = ov40_0222DA00(iVar2 + 0x1a4,iVar2 + 0x1a8,0,1);
    if (iVar1 == 0) {
      return 0;
    }
    ov40_0222E7DC(iVar2 + 0x2ed8,1);
    ov40_02237B7C(param_1,*(int *)(iVar2 + 0x2f64) + 0x79);
    GfGfx_EngineBTogglePlanes(4,1);
    GfGfx_EngineATogglePlanes(4,1);
    ov40_0222BF80(param_1,5);
    return 0;
  }
  iVar1 = ov40_0222DA00(iVar2 + 0x1a4,iVar2 + 0x1a8,1,1);
  if (iVar1 != 0) {
    ov40_02236184(param_1,*(undefined4 *)(param_1 + 0x4d4));
    ov40_02230964(param_1,1);
    ov40_0222E79C(iVar2 + 0x2ed8,param_1);
    ov40_0222E7DC(iVar2 + 0x2ed8,0);
    ov40_02230964(param_1,0);
    GfGfxLoader_LoadCharDataFromOpenNarc
              (*(undefined4 *)(param_1 + 0x14),0x3e,*(undefined4 *)(param_1 + 0x24),3,0,0,0,0x6d);
    GfGfxLoader_LoadScrnDataFromOpenNarc
              (*(undefined4 *)(param_1 + 0x14),0x50,*(undefined4 *)(param_1 + 0x24),3,0,0,0,0x6d);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  return 0;
}

