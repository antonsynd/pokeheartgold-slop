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
typedef void code(void);
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
undefined4 func_0x02022588(undefined4, undefined4) __asm__("sub_02022588");
undefined4 func_0x02022638(void) __asm__("sub_02022638");
undefined4 sub_0203A880(void);
undefined4 G2dRenderer_Init(undefined4, undefined4, undefined4);
undefined4 func_0x020b78d4(void) __asm__("sub_020B78D4");
undefined4 GfGfx_EngineBTogglePlanes(undefined4, undefined4);
undefined4 GfGfx_EngineATogglePlanes(undefined4, undefined4);
undefined4 func_0x0200b150(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_0200B150");
undefined4 func_0x02009fe8(undefined4, undefined4) __asm__("sub_02009FE8");
undefined4 func_0x0200a080(undefined4) __asm__("sub_0200A080");
undefined4 func_0x020215c0(undefined4, undefined4, undefined4, undefined4) __asm__("sub_020215C0");
undefined4 func_0x020216c8(void) __asm__("sub_020216C8");
extern undefined ov90_0225C2A4;

void ov90_022590CC(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5)

{
  undefined4 uVar1;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  func_0x020b78d4();
  func_0x0200b150(0,0x7e,0,0x1f,0,0x7e,0,0x1f,param_5);
  uStack_20 = 0x4000;
  uStack_1c = 0x4000;
  uStack_18 = param_5;
  uStack_24 = param_3;
  func_0x020215c0(&uStack_24,0x10,0x10,&ov90_0225C2A4);
  func_0x02022588(param_4,param_5);
  func_0x020216c8();
  func_0x02022638();
  func_0x02009fe8(1,0x10);
  func_0x0200a080(1);
  uVar1 = G2dRenderer_Init(param_2,param_1 + 1,param_5);
  *param_1 = uVar1;
  sub_0203A880();
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  return;
}

