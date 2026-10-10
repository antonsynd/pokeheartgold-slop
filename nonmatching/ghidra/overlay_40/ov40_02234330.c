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
undefined4 Main_SetVBlankIntrCB();
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");
undefined4 ov40_022307DC();
undefined4 func_0x020032a4() __asm__("sub_020032A4");
undefined4 func_0x0202c028() __asm__("sub_0202C028");
undefined4 ov40_02235B4C();
undefined4 ov40_0222DA00();
undefined4 func_0x0224b5d0() __asm__("sub_0224B5D0");
undefined4 func_0x0202b9b8() __asm__("sub_0202B9B8");
undefined4 func_0x0224b530() __asm__("sub_0224B530");
undefined4 ov40_02230964();
undefined4 ov40_0222DA84();
undefined4 func_0x0224b554() __asm__("sub_0224B554");
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov40_02235940();
undefined4 func_0x02026e48() __asm__("sub_02026E48");
undefined4 ov40_0222BF80();
undefined4 RequestSwap3DBuffers();

undefined4 ov40_02234330(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *(int *)(param_1 + 0x860);
  iVar2 = *(int *)(param_1 + 8);
  if (iVar2 == 0) {
    ov40_02235940();
    ov40_022307DC(param_1,0x23,3);
    ov40_022307DC(param_1,0x25,7);
    GfGfx_EngineBTogglePlanes(8,1);
    GfGfx_EngineATogglePlanes(8,1);
    ov40_02230964(param_1,1);
    uVar1 = func_0x0202c028(*(undefined4 *)(param_1 + 0x830));
    uVar1 = func_0x0202b9b8(uVar1,0);
    *(undefined4 *)(iVar3 + 0x22c) = uVar1;
    if (*(int *)(iVar3 + 0x228) == 0) {
      uVar1 = func_0x0224b530(iVar3 + 0x218,*(undefined4 *)(iVar3 + 0x22c));
      *(undefined4 *)(iVar3 + 0x228) = uVar1;
      func_0x0224b5d0(*(undefined4 *)(iVar3 + 0x228),1);
    }
    ov40_02230964(param_1,0);
    GfGfx_EngineATogglePlanes(4,0);
    GfGfx_EngineATogglePlanes(1,0);
    Main_SetVBlankIntrCB(0x2235901,param_1);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else if (iVar2 == 1) {
    func_0x020032a4(*(undefined4 *)(param_1 + 0x28),0,0,0x200,param_4);
    *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  }
  else if (iVar2 == 2) {
    ov40_0222DA84(iVar3 + 8,0);
    iVar2 = ov40_0222DA00(iVar3,iVar3 + 4,0,0);
    if (iVar2 != 0) {
      GfGfx_EngineATogglePlanes(4,1);
      GfGfx_EngineATogglePlanes(1,1);
      ov40_02235B4C(param_1);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
    }
    func_0x02003ea4(*(undefined4 *)(param_1 + 0x28),3,0xc,*(uint *)(iVar3 + 8) & 0xff,
                    *(uint *)(param_1 + 0x58) & 0xffff);
  }
  else {
    ov40_0222BF80(param_1,3);
  }
  if (*(int *)(iVar3 + 0x228) != 0) {
    func_0x02026e48();
    func_0x0224b554(*(undefined4 *)(iVar3 + 0x228));
    RequestSwap3DBuffers(0,0);
  }
  return 0;
}

