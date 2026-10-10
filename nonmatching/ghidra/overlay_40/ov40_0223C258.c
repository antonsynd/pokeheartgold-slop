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
undefined4 ov40_0222DA00();
undefined4 ov40_022306A0();
undefined4 ov40_02230964();
undefined4 ov40_022307DC();
undefined4 ov40_0223064C();
undefined4 ov40_02230638();
undefined4 ov40_02230410();
undefined4 ov40_0222E79C();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov40_0223CCBC();
undefined4 ov40_0222BF80();
undefined4 ov40_0222E7DC();

undefined4 ov40_0223C258(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;

  iVar4 = *(int *)(param_1 + 0x860);
  switch(*(undefined4 *)(param_1 + 8)) {
  case 0:
    ov40_02230964(param_1,1);
    if (*(int *)(iVar4 + 0x10) == 0) {
      ov40_0223064C(iVar4 + 0x220,param_1);
    }
    else {
      ov40_0222E7B8(iVar4 + 0x194,param_1);
    }
    GfGfx_EngineATogglePlanes(4,0);
    ov40_02230964(param_1,0);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  case 1:
    iVar4 = ov40_0222DA00(iVar4,iVar4 + 4,1,1,param_4);
    if (iVar4 != 0) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  case 2:
    ov40_02230964(param_1,1);
    if (*(int *)(iVar4 + 0x10) == 0) {
      ov40_0222E79C(iVar4 + 0x194,param_1);
      ov40_0222E7DC(iVar4 + 0x194,0);
      ov40_022307DC(param_1,0x50,3);
    }
    else {
      ov40_02230638(iVar4 + 0x220,param_1);
      ov40_022306A0(iVar4 + 0x220,0);
      uVar1 = ov40_02230410(iVar4 + 0x220);
      ov40_022307DC(param_1,uVar1,3);
    }
    ov40_02230964(param_1,0);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    break;
  case 3:
    iVar2 = ov40_0222DA00(iVar4,iVar4 + 4,0,1,param_4);
    if (iVar2 != 0) {
      if (*(int *)(iVar4 + 0x10) == 0) {
        ov40_0222E7DC(iVar4 + 0x194,1);
      }
      else {
        ov40_022306A0(iVar4 + 0x220,1);
      }
      GfGfx_EngineBTogglePlanes(4,1);
      GfGfx_EngineATogglePlanes(4,1);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    break;
  default:
    uVar3 = *(uint *)(iVar4 + 0x10) ^ 1;
    *(uint *)(iVar4 + 0x10) = uVar3;
    ov40_0223CCBC(param_1,uVar3 + 0x79);
    ov40_0222BF80(param_1,7);
  }
  return 0;
}

