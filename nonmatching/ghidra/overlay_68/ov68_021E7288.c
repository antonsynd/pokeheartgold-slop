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
undefined4 ov68_021E71C4();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 func_0x020cf910() __asm__("sub_020CF910");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x020c2698() __asm__("sub_020C2698");
undefined4 func_0x020cf704() __asm__("sub_020CF704");
undefined4 func_0x020cf564() __asm__("sub_020CF564");
undefined4 ov68_021E7224();
undefined4 func_0x020cf82c() __asm__("sub_020CF82C");
extern ushort uRam04000008 __asm__("sub_04000008");
extern ushort uRam04000060 __asm__("sub_04000060");
extern undefined4 uRam04000540 __asm__("sub_04000540");
extern undefined4 uRam04000580 __asm__("sub_04000580");

void ov68_021E7288(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  func_0x020c2698();
  func_0x020cf564();
  func_0x020cf704();
  uRam04000060 = uRam04000060 & 0xcfd9 | 0x18;
  func_0x020cf82c(0,0,0,0,param_4);
  func_0x020cf910(0,0,0x7fff,0x3f,0);
  uRam04000540 = 2;
  uRam04000580 = 0xbfff0000;
  func_0x020d4994(param_1 + 0x55,0,0x1c);
  ov68_021E71C4(param_1 + 0x55,0x42);
  ov68_021E7224(param_1 + 0x55,*(undefined4 *)*param_1,0x42);
  GfGfx_EngineATogglePlanes(1,1);
  uRam04000008 = uRam04000008 & 0xfffc | 1;
  return;
}

