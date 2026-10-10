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
undefined4 func_0x020bf0cc() __asm__("sub_020BF0CC");
undefined4 func_0x0201f590() __asm__("sub_0201F590");
undefined4 ov15_021FDAD0();
undefined4 func_0x020cf910() __asm__("sub_020CF910");
undefined4 ov15_021FDAF4();
undefined4 func_0x020cf82c() __asm__("sub_020CF82C");
undefined4 func_0x0201bb68() __asm__("sub_0201BB68");
undefined4 func_0x020cf8e4() __asm__("sub_020CF8E4");
undefined4 Camera_New();
undefined4 func_0x02023254() __asm__("sub_02023254");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x020bf084() __asm__("sub_020BF084");
undefined4 func_0x020bf0a8() __asm__("sub_020BF0A8");
extern undefined4 _ov01_02200540;
extern ushort uRam04000060 __asm__("sub_04000060");
extern undefined4 uRam02200544 __asm__("sub_02200544");
undefined4 func_0x02023240() __asm__("sub_02023240");
undefined4 func_0x020bf034() __asm__("sub_020BF034");
undefined4 func_0x020bf070() __asm__("sub_020BF070");
undefined4 Camera_SetStaticPtr();
undefined4 ov15_021FDD70();
extern ushort uRam04000008 __asm__("sub_04000008");



void ov15_021FD93C(int param_1)

{
  undefined4 uVar1;
  uint uVar2;
  
  func_0x0201f590(6);
  uRam04000060 = uRam04000060 & 0xcfff | 0x10;
  func_0x020cf82c(0,0,0,0);
  func_0x020cf910(0,0,0x7fff,0,0);
  func_0x020bf084(0x3def,0x294a,0);
  func_0x020bf0a8(0x3def,0x3def,0);
  func_0x020bf0cc(0xf,0,3,0,0x1f,0);
  uRam04000060 = uRam04000060 & 0xcfff | 0x20;
  func_0x020cf8e4(0x2201304);
  func_0x0201bb68(0,0);
  GfGfx_EngineATogglePlanes(1,1);
  uVar1 = Camera_New(6);
  *(undefined4 *)(param_1 + 0x818) = uVar1;
  *(undefined4 *)(param_1 + 0x904) = 0;
  *(undefined4 *)(param_1 + 0x908) = 0;
  *(undefined4 *)(param_1 + 0x90c) = 0;
  uVar1 = _ov01_02200540;
  *(undefined4 *)(param_1 + 0x910) = 0x153b51;
  *(undefined4 *)(param_1 + 0x914) = uVar1;
  *(undefined4 *)(param_1 + 0x918) = uRam02200544;
  *(undefined4 *)(param_1 + 0x91c) = 0xa010000;
  *(undefined4 *)(param_1 + 0x920) = 0;
  func_0x02023254((undefined4 *)(param_1 + 0x904),*(undefined4 *)(param_1 + 0x910),param_1 + 0x914,
                  *(undefined2 *)(param_1 + 0x91e),*(undefined1 *)(param_1 + 0x91c),1,
                  *(undefined4 *)(param_1 + 0x818));
  *(undefined4 *)(param_1 + 0x934) = 0;
  *(undefined4 *)(param_1 + 0x938) = 0xfffd3000;
  *(undefined4 *)(param_1 + 0x93c) = 0;
  ov15_021FDAD0(param_1 + 0x808);
  ov15_021FDAF4(param_1 + 0x808,*(byte *)(*(int *)(param_1 + 0x234) + 100) + 1,7);
  func_0x02023240(0x7b000,0x6a4000,*(undefined4 *)(param_1 + 0x818));
  Camera_SetStaticPtr(*(undefined4 *)(param_1 + 0x818));
  uVar2 = 0;
  do {
    func_0x020bf034(uVar2,0x1000,0,0);
    func_0x020bf070(uVar2,0x7fff);
    uVar2 = uVar2 + 1;
  } while (uVar2 < 4);
  ov15_021FDD70(param_1);
  GfGfx_EngineATogglePlanes(1,1);
  uRam04000008 = uRam04000008 & 0xfffc | 2;
  return;
}

