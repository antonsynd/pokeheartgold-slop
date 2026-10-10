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
undefined4 func_0x020d2388() __asm__("sub_020D2388");
undefined4 func_0x020de0c8() __asm__("sub_020DE0C8");
undefined4 func_0x020ddc80() __asm__("sub_020DDC80");
undefined4 func_0x020d1f34() __asm__("sub_020D1F34");
undefined4 ov112_021E5D44();
undefined4 ov112_021E5D38();
undefined4 func_0x020d1ad4() __asm__("sub_020D1AD4");
undefined4 ov112_021E5964();
undefined4 ov112_021E5D50();
undefined4 func_0x020ddc70() __asm__("sub_020DDC70");
undefined4 func_0x020d2600() __asm__("sub_020D2600");
undefined4 ov112_021E5D5C();
extern int uRam021ffae8 __asm__("sub_021FFAE8");
extern uint uRam021ffab8 __asm__("sub_021FFAB8");
extern undefined4 uRam021ffabc __asm__("sub_021FFABC");
extern int uRam021ffaec __asm__("sub_021FFAEC");

void ov112_021E73C8(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  
  uRam021ffabc = 1;
  uRam021ffab8 = 1;
  uRam021ffae8 = 0;
  uRam021ffaec = 0;
  ov112_021E5964();
  ov112_021E5D5C(1);
  ov112_021E5D38(0x21e6a6d);
  ov112_021E5D44(0x21e6f61);
  ov112_021E5D50(0x21e6bdd);
  func_0x020de0c8();
  iVar1 = func_0x020de0c8();
  if (iVar1 == 0xaa) {
    func_0x020ddc80(0);
    func_0x020ddc70(0);
  }
  func_0x020d2600(0x21ffb08);
  func_0x020d2388(0x21ffb20,0x21ffac0,1);
  func_0x020d1ad4(0x21ffbd8,0x21e7399,0,param_1 + param_2,param_2,param_3);
  func_0x020d1f34(0x21ffbd8);
  return;
}

