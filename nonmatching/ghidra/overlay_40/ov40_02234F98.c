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
undefined4 ov40_0223077C();
undefined4 ov40_0223D540();
undefined4 System_GetTouchNew();
undefined4 ov40_0223D5CC();
undefined4 sub_020879E0();
undefined4 ov40_0222DFB0();
undefined4 sub_02087A08();
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 func_0x022273f8() __asm__("sub_022273F8");
undefined4 func_0x02227d44() __asm__("sub_02227D44");
undefined4 ov40_0222DED0();
undefined4 ov40_02230CDC();
undefined4 PlaySE();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov40_0222BF80();

undefined4 ov40_02234F98(int param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iStack_10;
  
  iVar3 = *(int *)(param_1 + 0x860);
  iStack_10 = param_4;
  iVar1 = ov40_0223D5CC();
  if (iVar1 != 0) {
    switch(*(undefined4 *)(param_1 + 8)) {
    case 0:
      ov40_0223077C(param_1,*(undefined4 *)(param_1 + 0x6f0),0x80,0x60);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),1);
      sub_02087A08(*(undefined4 *)(param_1 + 0x6f0),0x18,0x18);
      ov40_0222DED0(param_1,0x11f);
      PlaySE(0x57d);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      break;
    case 1:
      uVar2 = ov40_0223D540(param_1);
      iVar1 = func_0x022273f8(uVar2,*(undefined4 *)(iVar3 + 0x2e0));
      if (iVar1 == 1) {
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      break;
    case 2:
      ov40_0222DFB0(param_1);
      uVar2 = ov40_0223D540(param_1);
      iVar1 = func_0x02227d44(uVar2,&iStack_10);
      if (iVar1 == 1) {
        func_0x02006154(0x57d,0);
        ov40_02230CDC(param_1,1,*(undefined4 *)(iStack_10 + 0xc),*(undefined4 *)(iStack_10 + 4));
        *(undefined4 *)(iVar3 + 0x2e4) = 0;
        *(undefined4 *)(param_1 + 0xc) = 0;
        sub_020879E0(*(undefined4 *)(param_1 + 0x6f0));
        ov40_0222BF80(param_1,3);
      }
      else {
        func_0x02006154(0x57d,0);
        PlaySE(0x577);
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      break;
    case 3:
      GfGfx_EngineATogglePlanes(1,0);
      GfGfx_EngineATogglePlanes(4,0);
      GfGfx_EngineBTogglePlanes(4,0);
      sub_020879E0(*(undefined4 *)(param_1 + 0x6f0),0);
      sub_02087A08(*(undefined4 *)(param_1 + 0x6f0),0,0);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      break;
    case 4:
      if (*(int *)(iVar3 + 0x2e4) == 0) {
        ov40_0222DED0(param_1,0x125);
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
        *(undefined4 *)(param_1 + 0xc) = 0;
      }
      else {
        *(undefined4 *)(iVar3 + 0x234) = 0;
        *(undefined4 *)(iVar3 + 0x230) = 0;
        ov40_0222BF80(param_1,7);
      }
      break;
    default:
      iVar1 = *(int *)(param_1 + 0xc) + 1;
      *(int *)(param_1 + 0xc) = iVar1;
      if ((0x3b < iVar1) || (iVar1 = System_GetTouchNew(), iVar1 == 1)) {
        *(undefined4 *)(param_1 + 0xc) = 0;
        ov40_0222DFB0(param_1);
        ov40_0222BF80(param_1,3);
      }
    }
    return 0;
  }
  return 0;
}

