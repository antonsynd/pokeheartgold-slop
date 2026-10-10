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
undefined4 ov40_0222E7B8();
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 ov40_022307DC();
undefined4 ov40_0223064C();
undefined4 ov40_02230638();
undefined4 ov40_0222E79C();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 ov40_02241AB0();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 ov40_0222DA00();
undefined4 ov40_022306A0();
undefined4 ov40_02230964();
undefined4 ov40_0222DA84();
undefined4 ov40_02230410();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov40_02241A34();
undefined4 ov40_0222D66C();
undefined4 ManagedSprite_SetAnim();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 ov40_0222E7DC();

undefined4 ov40_022428D4(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *(int *)(param_1 + 0x860);
  switch(*(undefined4 *)(param_1 + 8)) {
  case 0:
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),2);
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),6);
    GfGfx_EngineBTogglePlanes(4,0);
    GfGfx_EngineATogglePlanes(4,0);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  case 1:
    ov40_0222DA84(iVar3 + 8,1);
    iVar2 = ov40_0222DA00(iVar3,iVar3 + 4,1,0);
    if (iVar2 != 0) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar3 + 8) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    break;
  case 2:
    if (*(int *)(param_1 + 0x86c) == 0xd2) {
      ov40_0222D66C(iVar3 + 0x10,param_1 + 0x14,3);
      ov40_0222D66C(iVar3 + 0x2c,param_1 + 0x14,0x5e);
      ManagedSprite_SetAnim(*(undefined4 *)(iVar3 + 0x14),0);
      ManagedSprite_SetAnim(*(undefined4 *)(iVar3 + 0x30),3);
    }
    ov40_02241A34(param_1);
    ov40_02241AB0(param_1);
    GfGfxLoader_LoadCharDataFromOpenNarc
              (*(undefined4 *)(param_1 + 0x14),0x3e,*(undefined4 *)(param_1 + 0x24),3,0,0,0,0x6d);
    GfGfxLoader_LoadCharDataFromOpenNarc
              (*(undefined4 *)(param_1 + 0x14),0x3e,*(undefined4 *)(param_1 + 0x24),7,0,0,0,0x6d);
    ov40_02230964(param_1,1);
    if (*(int *)(iVar3 + 0x1cc) == 0) {
      ov40_0223064C(iVar3 + 0x10c,param_1);
      ov40_02230638(iVar3 + 0x10c,param_1);
      ov40_022306A0(iVar3 + 0x10c,0);
      uVar1 = ov40_02230410(iVar3 + 0x10c);
      ov40_022307DC(param_1,uVar1,3);
    }
    else {
      ov40_0222E7B8(iVar3 + 0x80,param_1);
      ov40_0222E79C(iVar3 + 0x80,param_1);
      ov40_0222E7DC(iVar3 + 0x80,0);
      GfGfxLoader_LoadScrnDataFromOpenNarc
                (*(undefined4 *)(param_1 + 0x14),0x50,*(undefined4 *)(param_1 + 0x24),3,0,0,0,0x6d);
    }
    ov40_02230964(param_1,0);
    GfGfxLoader_LoadScrnDataFromOpenNarc
              (*(undefined4 *)(param_1 + 0x14),6,*(undefined4 *)(param_1 + 0x24),7,0,0,0,0x6d);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  case 3:
    ov40_0222DA84(iVar3 + 8,0);
    iVar2 = ov40_0222DA00(iVar3,iVar3 + 4,0,0);
    if (iVar2 != 0) {
      if (*(int *)(iVar3 + 0x1cc) == 0) {
        ov40_022306A0(iVar3 + 0x10c,1);
      }
      else {
        ov40_0222E7DC(iVar3 + 0x80,1);
      }
      GfGfx_EngineBTogglePlanes(4,1);
      GfGfx_EngineATogglePlanes(4,1);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar3 + 8) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    break;
  default:
    return 1;
  }
  return 0;
}

