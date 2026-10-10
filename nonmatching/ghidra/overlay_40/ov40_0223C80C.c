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
unsigned long long sub_0203088C(void *, int, int);
undefined4 ov40_02230D94();
undefined4 ov40_02230964();
undefined4 ov40_0223D504();
void * sub_020307F8(void);
undefined4 ov40_0223CCA0();
undefined4 ov40_0223064C();
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
undefined4 GfGfx_EngineBTogglePlanes(unsigned char, unsigned char);
undefined4 ov40_0222E7B8();
undefined4 ov40_0223B374();
undefined4 ov40_0222DA84();
undefined4 PaletteData_BlendPalettes(void *, int, unsigned short, unsigned char, unsigned short);
undefined4 ov40_0222DA00();
undefined4 ov40_0223C710();
undefined4 BgClearTilemapBufferAndCommit(void *, unsigned char);
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc(void *, int, void *, int, unsigned int, unsigned int, int, int);
undefined4 ov40_0222D66C();
undefined4 ov40_02230638();
undefined4 ov40_0222DED0();
undefined4 ov40_0222DFB0();
undefined4 ManagedSprite_SetAnim(void *, int);
undefined4 ov40_0223A430();
undefined4 ov40_0222BF80();
undefined4 ov40_0223CD14();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc(void *, int, void *, int, unsigned int, unsigned int, int, int);
undefined4 ov40_0222E79C();
undefined4 System_GetTouchNew(void);
undefined4 ov40_022307DC();
undefined4 ov40_0223B44C();
undefined4 ov40_0222E7DC();
undefined4 ov40_022306A0();
undefined4 ov40_02230410();

undefined4 ov40_0223C80C(int param_1)

{
  undefined *puVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  ulonglong uVar6;
  
  iVar5 = *(int *)(param_1 + 0x860);
  puVar1 = sub_020307F8();
  uVar6 = sub_0203088C(puVar1,4,0);
  iVar2 = ov40_02230D94(param_1,(int)uVar6,(int)(uVar6 >> 0x20));
  iVar3 = *(int *)(param_1 + 8);
  if (iVar2 == 0) {
    if (iVar3 == 0) {
      ov40_02230964(param_1,1);
      if (*(int *)(iVar5 + 0x10) == 0) {
        ov40_0223064C(iVar5 + 0x220,param_1);
      }
      else {
        ov40_0222E7B8(iVar5 + 0x194,param_1);
      }
      ov40_02230964(param_1,0);
      ov40_02230964(param_1,1);
      ov40_0223D504(param_1);
      ov40_02230964(param_1,0);
      ov40_0223CCA0(param_1);
      GfGfx_EngineATogglePlanes(4,0);
      GfGfx_EngineBTogglePlanes(4,0);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    else if (iVar3 == 1) {
      ov40_0222DA84(iVar5 + 8,1);
      iVar2 = ov40_0222DA00(iVar5,iVar5 + 4,1,0);
      if (iVar2 != 0) {
        ov40_02230964(param_1,1);
        ov40_0223B374(param_1);
        ov40_02230964(param_1,0);
        BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),3);
        BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),7);
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      PaletteData_BlendPalettes
                (*(undefined **)(param_1 + 0x28),3,0xc,(byte)*(undefined4 *)(iVar5 + 8),
                 (ushort)*(undefined4 *)(param_1 + 0x58));
    }
    else if (iVar3 == 2) {
      ov40_0222DA84(iVar5 + 8,0);
      iVar2 = ov40_0222DA00(iVar5,iVar5 + 4,0,1);
      if (iVar2 != 0) {
        ov40_0223C710(param_1,100,0);
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      PaletteData_BlendPalettes
                (*(undefined **)(param_1 + 0x28),3,0xc,(byte)*(undefined4 *)(iVar5 + 8),
                 (ushort)*(undefined4 *)(param_1 + 0x58));
    }
    else {
      ov40_0222BF80(param_1,0xc);
    }
  }
  else {
    switch(iVar3) {
    case 0:
      ov40_02230964(param_1,1);
      if (*(int *)(iVar5 + 0x10) == 0) {
        ov40_0223064C(iVar5 + 0x220,param_1);
      }
      else {
        ov40_0222E7B8(iVar5 + 0x194,param_1);
      }
      ov40_0223CCA0(param_1);
      ov40_02230964(param_1,0);
      ov40_02230964(param_1,1);
      ov40_0223D504(param_1);
      ov40_02230964(param_1,0);
      GfGfx_EngineATogglePlanes(4,0);
      GfGfx_EngineBTogglePlanes(4,0);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      break;
    case 1:
      ov40_0222DA84(iVar5 + 8,1);
      iVar2 = ov40_0222DA00(iVar5,iVar5 + 4,1,0);
      if (iVar2 != 0) {
        ov40_02230964(param_1,1);
        ov40_0223B374(param_1);
        ov40_02230964(param_1,0);
        BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),3);
        BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),7);
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      PaletteData_BlendPalettes
                (*(undefined **)(param_1 + 0x28),3,0xc,(byte)*(undefined4 *)(iVar5 + 8),
                 (ushort)*(undefined4 *)(param_1 + 0x58));
      break;
    case 2:
      ov40_0222DED0(param_1,0x115);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      break;
    case 3:
      iVar2 = System_GetTouchNew();
      if (iVar2 != 0) {
        ov40_0222DFB0(param_1);
        BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),2);
        BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),6);
        GfGfx_EngineBTogglePlanes(4,0);
        GfGfx_EngineATogglePlanes(4,0);
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      break;
    case 4:
      ov40_0222DA84(iVar5 + 8,1);
      iVar2 = ov40_0222DA00(iVar5,iVar5 + 4,1,0);
      if (iVar2 != 0) {
        ov40_02230964(param_1,1);
        ov40_0223B44C(param_1);
        ov40_02230964(param_1,0);
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      PaletteData_BlendPalettes
                (*(undefined **)(param_1 + 0x28),3,0xc,(byte)*(undefined4 *)(iVar5 + 8),
                 (ushort)*(undefined4 *)(param_1 + 0x58));
      break;
    case 5:
      ov40_02230964(param_1,1);
      ov40_0223A430(param_1);
      ov40_02230964(param_1,0);
      if (*(int *)(param_1 + 0x86c) == 0xd2) {
        ov40_0222D66C(iVar5 + 0x114,param_1 + 0x14,3);
        ov40_0222D66C(iVar5 + 0x130,param_1 + 0x14,0x5e);
        ManagedSprite_SetAnim(*(undefined **)(iVar5 + 0x118),0);
        ManagedSprite_SetAnim(*(undefined **)(iVar5 + 0x134),3);
      }
      ov40_0223CD14(param_1);
      GfGfxLoader_LoadCharDataFromOpenNarc
                (*(undefined **)(param_1 + 0x14),0x3e,*(undefined **)(param_1 + 0x24),3,0,0,0,0x6d);
      GfGfxLoader_LoadCharDataFromOpenNarc
                (*(undefined **)(param_1 + 0x14),0x3e,*(undefined **)(param_1 + 0x24),7,0,0,0,0x6d);
      ov40_02230964(param_1,1);
      if (*(int *)(iVar5 + 0x10) == 0) {
        ov40_02230638(iVar5 + 0x220,param_1);
        ov40_022306A0(iVar5 + 0x220,0);
        uVar4 = ov40_02230410(iVar5 + 0x220);
        ov40_022307DC(param_1,uVar4,3);
      }
      else {
        ov40_0222E79C(iVar5 + 0x194,param_1);
        ov40_0222E7DC(iVar5 + 0x194,0);
        GfGfxLoader_LoadScrnDataFromOpenNarc
                  (*(undefined **)(param_1 + 0x14),0x50,*(undefined **)(param_1 + 0x24),3,0,0,0,0x6d
                  );
      }
      ov40_02230964(param_1,0);
      GfGfxLoader_LoadScrnDataFromOpenNarc
                (*(undefined **)(param_1 + 0x14),6,*(undefined **)(param_1 + 0x24),7,0,0,0,0x6d);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      break;
    case 6:
      ov40_0222DA84(iVar5 + 8,0);
      iVar2 = ov40_0222DA00(iVar5,iVar5 + 4,0,0);
      if (iVar2 != 0) {
        if (*(int *)(iVar5 + 0x10) == 0) {
          ov40_022306A0(iVar5 + 0x220,1);
        }
        else {
          ov40_0222E7DC(iVar5 + 0x194,1);
        }
        GfGfx_EngineBTogglePlanes(4,1);
        GfGfx_EngineATogglePlanes(4,1);
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      PaletteData_BlendPalettes
                (*(undefined **)(param_1 + 0x28),3,0xc,(byte)*(undefined4 *)(iVar5 + 8),
                 (ushort)*(undefined4 *)(param_1 + 0x58));
      break;
    default:
      iVar2 = 0;
      if (0 < *(int *)(param_1 + 0x4138)) {
        iVar5 = param_1 + 0x2680;
        iVar3 = param_1;
        do {
          *(int *)(iVar3 + 0x2608) = iVar5;
          iVar2 = iVar2 + 1;
          iVar5 = iVar5 + 0xe4;
          iVar3 = iVar3 + 4;
        } while (iVar2 < *(int *)(param_1 + 0x4138));
      }
      ov40_0222BF80(param_1,7);
    }
  }
  return 0;
}

