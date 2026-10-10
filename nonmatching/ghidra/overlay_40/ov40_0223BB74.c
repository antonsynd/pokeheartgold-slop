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
undefined4 ov40_0223BA70();
undefined4 ov40_0223B4BC();
undefined4 ov40_0222F740();
undefined4 ov40_022307DC();
undefined4 ov40_0222F9D4();
undefined4 ov40_0222FA5C();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 sub_0202FC48();
undefined4 ov40_0222FE00();
undefined4 ov40_0223D008();
undefined4 ov40_02230964();
undefined4 ov40_0222FE8C();
undefined4 func_0x0202fc24() __asm__("sub_0202FC24");
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov40_0222E9B8();
undefined4 ov40_0222F858();
undefined4 ov40_0222F488();
extern undefined ov40_022454F0;
undefined4 ov40_0222DA00();
undefined4 ov40_0223077C();
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 ov40_0222DA84();
undefined4 sub_020879E0();
undefined4 sub_02087A08();
undefined4 ov40_0222BF80();
undefined4 ov40_0223D1AC();

undefined4 ov40_0223BB74(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int iVar6;
  
  iVar6 = *(int *)(param_1 + 0x860);
  if (*(int *)(param_1 + 8) == 0) {
    iVar2 = sub_0202FC48();
    if (iVar2 != 0) {
      func_0x0202fc24();
    }
    puVar5 = (undefined4 *)&ov40_022454F0;
    puVar4 = (undefined4 *)(iVar6 + 0x2054);
    iVar2 = 5;
    do {
      uVar1 = *puVar5;
      uVar3 = puVar5[1];
      puVar5 = puVar5 + 2;
      *puVar4 = uVar1;
      puVar4[1] = uVar3;
      puVar4 = puVar4 + 2;
      iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    *puVar4 = *puVar5;
    *(undefined4 *)(iVar6 + 0x2054) = 0;
    *(undefined4 *)(iVar6 + 0x2058) = *(undefined4 *)(param_1 + 0x4138);
    ov40_0222FE00(param_1);
    uVar1 = ov40_0222FE8C(0x6d);
    *(undefined4 *)(iVar6 + 0x2080) = uVar1;
    *(undefined4 *)(iVar6 + 0x2088) = 500;
    GfGfxLoader_LoadCharDataFromOpenNarc
              (*(undefined4 *)(param_1 + 0x14),0x3e,*(undefined4 *)(param_1 + 0x24),3,0,0,0,0x6d);
    GfGfxLoader_LoadCharDataFromOpenNarc
              (*(undefined4 *)(param_1 + 0x14),0x3e,*(undefined4 *)(param_1 + 0x24),7,0,0,0,0x6d);
    ov40_022307DC(param_1,4,3);
    ov40_022307DC(param_1,7,7);
    GfGfx_EngineBTogglePlanes(8,1);
    GfGfx_EngineATogglePlanes(8,1);
    GfGfx_EngineATogglePlanes(4,0);
    GfGfx_EngineBTogglePlanes(4,0);
    ov40_0223B4BC(param_1,1);
    ov40_0223BA70(param_1);
    ov40_02230964(param_1,1);
    ov40_0222F9D4(param_1 + 0x47c,param_1);
    ov40_0222E9B8(param_1 + 0x49c,param_1,0,iVar6 + 0x2054);
    *(undefined4 *)(param_1 + 0x4e4) = 1;
    ov40_0222FA5C(param_1 + 0x47c,param_1 + 0x49c);
    ov40_0222F740(param_1 + 0x49c,param_1,1);
    ov40_0222F858(param_1 + 0x49c,0x40,0xb8);
    ov40_0222F488(param_1 + 0x49c,param_1);
    ov40_02230964(param_1,0);
    ov40_02230964(param_1,1);
    ov40_0223D008(param_1);
    ov40_0223D1AC(param_1,0);
    ov40_02230964(param_1,0);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else if (*(int *)(param_1 + 8) == 1) {
    ov40_0222DA84(iVar6 + 8,0);
    iVar2 = ov40_0222DA00(iVar6,iVar6 + 4,0,0);
    if (iVar2 != 0) {
      GfGfx_EngineATogglePlanes(4,1);
      GfGfx_EngineBTogglePlanes(4,1);
      ov40_0223D1AC(param_1,1);
      ov40_0223077C(param_1,*(undefined4 *)(param_1 + 0x6f0),0x10,
                    (*(int *)(param_1 + 0x4d8) * 0x18 + 0x4c) * 0x10000 >> 0x10);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),1);
      sub_02087A08(*(undefined4 *)(param_1 + 0x6f0),0xc,0xc);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar6 + 8) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),2,0xc,*(uint *)(iVar6 + 8) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
  }
  else {
    ov40_0222BF80(param_1,4);
  }
  return 0;
}

