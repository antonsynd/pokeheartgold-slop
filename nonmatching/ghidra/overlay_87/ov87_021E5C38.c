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
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 PlaySE();
undefined4 System_GetTouchHeldCoords();
undefined4 func_0x02025204() __asm__("sub_02025204");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 ClearFrameAndWindow2();
undefined4 ov87_021E7FD4();
extern undefined ov87_021E81C0;

undefined4 ov87_021E5C38(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  undefined4 uStack_10;
  
  cVar1 = *(char *)(param_1 + 8);
  uStack_10 = param_4;
  if (cVar1 == '\0') {
    GfGfx_EngineATogglePlanes(4,1);
    *(undefined1 *)(param_1 + 0xf) = 0x1e;
    *(undefined1 *)(param_1 + 8) = 1;
  }
  else if (cVar1 == '\x01') {
    if (*(char *)(param_1 + 0xf) == '\0') {
      GfGfx_EngineATogglePlanes(4,0);
      ov87_021E7FD4(*(undefined4 *)(param_1 + 0x340),0);
    }
    else {
      *(char *)(param_1 + 0xf) = *(char *)(param_1 + 0xf) + -1;
    }
    iVar2 = func_0x02025204(&ov87_021E81C0);
    if (iVar2 != -1) {
      GfGfx_EngineATogglePlanes(4,0);
      ov87_021E7FD4(*(undefined4 *)(param_1 + 0x340),0);
      PlaySE(0x5e4);
      *(char *)(param_1 + (uint)*(byte *)(param_1 + 0xe) + 0x15) = (char)iVar2;
      *(char *)(param_1 + 0xe) = *(char *)(param_1 + 0xe) + '\x01';
      System_GetTouchHeldCoords(auStack_14,auStack_18);
      ClearFrameAndWindow2(param_1 + 0x14c,0);
      GfGfx_EngineBTogglePlanes(1,0);
      *(undefined1 *)(param_1 + 8) = 2;
    }
  }
  else if (cVar1 == '\x02') {
    return 1;
  }
  return 0;
}

