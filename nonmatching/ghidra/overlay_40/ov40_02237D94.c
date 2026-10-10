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
undefined4 ov40_02237008();
undefined4 ov40_0223D540();
undefined4 ov40_0223077C();
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 func_0x0222748c() __asm__("sub_0222748C");
undefined4 ov40_0223D5CC();
undefined4 sub_020879E0();
undefined4 ov40_0222DFB0();
undefined4 sub_02087A08();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 BgClearTilemapBufferAndCommit();
undefined4 ov40_0222DA00();
undefined4 ov40_0222DED0();
undefined4 ov40_0222DA84();
undefined4 ov40_02236FE0();
undefined4 PlaySE();
undefined4 ov40_0222D980();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 sub_020878B0();
undefined4 ov40_0222BF80();
undefined4 func_0x02227d44() __asm__("sub_02227D44");
undefined4 System_GetTouchNew();
undefined4 ov40_02237C9C();
undefined4 ov40_02238290();
undefined4 ov40_02230CDC();
undefined4 ov40_02230964();
undefined4 ov40_02236EB4();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov40_0222C710();
undefined4 ov40_02236F38();
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 ov40_02237030();
undefined4 ov40_0222F9E0();
undefined4 ov40_0222EED0();
undefined4 ov40_0222F734();
undefined4 ov40_0222F858();
undefined4 ov40_0222FA5C();
undefined4 ov40_0222F740();
undefined4 ov40_02237AC0();
extern undefined ov40_02245310;

undefined4 ov40_02237D94(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int iVar6;
  int iStack_18;
  undefined4 uStack_14;

  iVar6 = *(int *)(param_1 + 0x860);
  uStack_14 = param_4;
  iVar1 = ov40_0223D5CC();
  if (iVar1 == 0) {
    return 0;
  }
  switch(*(undefined4 *)(param_1 + 8)) {
  case 0:
    sub_020879E0(*(undefined4 *)(param_1 + 0x6f4),0);
    ov40_02237008(param_1);
    ov40_02236FE0(param_1);
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),2);
    ov40_0222D980(iVar6 + 0x1a4,iVar6 + 0x1a8,8,0x12,8,0x12,1);
    GfGfx_EngineATogglePlanes(4,0);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  case 1:
    ov40_0222DA84(iVar6 + 0x1ac,1);
    iVar1 = ov40_0222DA00(iVar6 + 0x1a4,iVar6 + 0x1a8,1,0);
    if (iVar1 != 0) {
      GfGfxLoader_LoadCharDataFromOpenNarc
                (*(undefined4 *)(param_1 + 0x14),0x3e,*(undefined4 *)(param_1 + 0x24),3,0,0,0,0x6d);
      GfGfxLoader_LoadScrnDataFromOpenNarc
                (*(undefined4 *)(param_1 + 0x14),3,*(undefined4 *)(param_1 + 0x24),3,0,0,0,0x6d);
      GfGfxLoader_LoadScrnDataFromOpenNarc
                (*(undefined4 *)(param_1 + 0x14),0x4e,*(undefined4 *)(param_1 + 0x24),7,0,0,0,0x6d);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar6 + 0x1ac) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    break;
  case 2:
    ov40_0223077C(param_1,*(undefined4 *)(param_1 + 0x6f0),0x80,0x60);
    sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),1);
    sub_02087A08(*(undefined4 *)(param_1 + 0x6f0),0x18,0x18);
    ov40_0222DED0(param_1,0x121);
    PlaySE(0x57d);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  case 3:
    uVar2 = ov40_0223D540(param_1);
    iVar1 = func_0x0222748c(uVar2,*(undefined4 *)(iVar6 + 0x380));
    if (iVar1 == 1) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 4:
    ov40_0222DFB0(param_1);
    uVar2 = ov40_0223D540(param_1);
    iVar1 = func_0x02227d44(uVar2,&iStack_18);
    if (iVar1 == 1) {
      func_0x02006154(0x57d,0);
      ov40_02230CDC(param_1,3,*(undefined4 *)(iStack_18 + 0xc),*(undefined4 *)(iStack_18 + 4));
      *(undefined4 *)(iVar6 + 0x388) = 0;
      *(undefined4 *)(iVar6 + 0x2f64) = 0;
      ov40_02230964(param_1,1);
      ov40_02236EB4(param_1);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f4),0);
      sub_020878B0(*(undefined4 *)(param_1 + 0x6f0),0);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
      sub_02087A08(*(undefined4 *)(param_1 + 0x6f0),0,0);
      GfGfx_EngineATogglePlanes(4,0);
      BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),3);
      ov40_02230964(param_1,0);
      *(undefined4 *)(param_1 + 8) = 7;
    }
    else {
      func_0x02006154(0x57d,0);
      PlaySE(0x577);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 5:
    sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
    sub_02087A08(*(undefined4 *)(param_1 + 0x6f0),0,0);
    if (*(int *)(iVar6 + 0x388) == 0) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      *(undefined4 *)(param_1 + 0xc) = 0;
      ov40_0222DED0(param_1,0x126);
    }
    else {
      *(undefined4 *)(param_1 + 8) = 0xff;
    }
    break;
  case 6:
    iVar1 = *(int *)(param_1 + 0xc) + 1;
    *(int *)(param_1 + 0xc) = iVar1;
    if ((0x3b < iVar1) || (iVar1 = System_GetTouchNew(), iVar1 == 1)) {
      *(undefined4 *)(param_1 + 0xc) = 0;
      ov40_0222DFB0(param_1);
      *(undefined4 *)(iVar6 + 0x2f64) = 0;
      ov40_02230964(param_1,1);
      ov40_02236EB4(param_1);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f4),0);
      sub_020878B0(*(undefined4 *)(param_1 + 0x6f0),0);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
      sub_02087A08(*(undefined4 *)(param_1 + 0x6f0),0,0);
      GfGfx_EngineATogglePlanes(4,0);
      BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),3);
      ov40_02230964(param_1,0);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 7:
    iVar1 = ov40_0222DA00(iVar6 + 0x1a4,iVar6 + 0x1a8,1,0);
    if (iVar1 != 0) {
      GfGfx_EngineATogglePlanes(4,0);
      GfGfx_EngineBTogglePlanes(4,0);
      GfGfxLoader_LoadScrnDataFromOpenNarc
                (*(undefined4 *)(param_1 + 0x14),0x4f,*(undefined4 *)(param_1 + 0x24),7,0,0,0,0x6d);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 8:
    ov40_0222DA84(iVar6 + 0x1ac,0);
    iVar1 = ov40_0222DA00(iVar6 + 0x1a4,iVar6 + 0x1a8,0,2);
    if (iVar1 != 0) {
      ov40_0222C710(param_1,2);
      ov40_02237030(param_1,0x113);
      ov40_02236F38(param_1);
      GfGfx_EngineATogglePlanes(4,1);
      GfGfx_EngineBTogglePlanes(4,1);
      ov40_0222BF80(param_1,3);
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar6 + 0x1ac) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    break;
  default:
    ov40_0222DA84(iVar6 + 0x1ac,0);
    iVar1 = ov40_0222DA00(iVar6 + 0x1a4,iVar6 + 0x1a8,0,0);
    if (iVar1 != 0) {
      ov40_02237C9C(param_1);
      ov40_02238290(param_1);
      ov40_02230964(param_1,1);
      puVar5 = (undefined4 *)&ov40_02245310;
      puVar4 = (undefined4 *)(iVar6 + 0x2eac);
      iVar1 = 5;
      do {
        uVar2 = *puVar5;
        uVar3 = puVar5[1];
        puVar5 = puVar5 + 2;
        *puVar4 = uVar2;
        puVar4[1] = uVar3;
        puVar4 = puVar4 + 2;
        iVar1 = iVar1 + -1;
      } while (iVar1 != 0);
      *puVar4 = *puVar5;
      *(undefined4 *)(iVar6 + 0x2eb0) = *(undefined4 *)(iVar6 + 0x388);
      ov40_0222F9E0(param_1 + 0x47c,param_1,2);
      ov40_0222F734(param_1 + 0x49c);
      ov40_0222EED0(param_1 + 0x49c,param_1,iVar6 + 0x2eac,iVar6 + 0x2e0c);
      ov40_0222FA5C(param_1 + 0x47c,param_1 + 0x49c);
      ov40_0222F740(param_1 + 0x49c,param_1,1);
      ov40_0222F858(param_1 + 0x49c,0x38,0xb0);
      ov40_02230964(param_1,0);
      ov40_02237AC0(param_1);
      GfGfx_EngineBTogglePlanes(4,1);
      GfGfx_EngineATogglePlanes(4,1);
      ov40_0223077C(param_1,*(undefined4 *)(param_1 + 0x6f0),0x10,
                    (*(int *)(param_1 + 0x4d8) * 0x18 + 0x44) * 0x10000 >> 0x10);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),1);
      sub_02087A08(*(undefined4 *)(param_1 + 0x6f0),0xc,0xc);
      ov40_0222BF80(param_1,5);
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar6 + 0x1ac) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),2,0xc,*(uint *)(iVar6 + 0x1ac) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
  }
  return 0;
}

