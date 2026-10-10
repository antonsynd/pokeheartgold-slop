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
undefined4 ov75_02247878();
undefined4 sub_0203A914();
undefined4 sub_0203957C();
undefined4 func_0x021ed9b4() __asm__("sub_021ED9B4");
undefined4 func_0x02237f2c() __asm__("sub_02237F2C");
undefined4 func_0x021ec11c() __asm__("sub_021EC11C");
undefined4 sub_020399EC();
undefined4 func_0x021fa0d8() __asm__("sub_021FA0D8");
undefined4 func_0x021ec8d8() __asm__("sub_021EC8D8");
undefined4 func_0x021ec210() __asm__("sub_021EC210");
undefined4 Sys_ClearSleepDisableFlag();
undefined4 func_0x021ecdc8() __asm__("sub_021ECDC8");

undefined4 ov75_022488BC(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uStack_10;
  int iStack_c;
  
  uVar1 = func_0x021ecdc8();
  switch(uVar1) {
  case 0:
  case 4:
  case 5:
    ov75_02247878(param_1);
    iVar2 = func_0x021ec11c(&iStack_c,&uStack_10);
    param_1[5] = iVar2;
    param_1[6] = iStack_c;
    func_0x021ec210();
    func_0x021ec8d8();
    sub_0203A914();
    sub_0203957C();
    Sys_ClearSleepDisableFlag(4);
    if (*(int *)(*param_1 + 0x118) == 1) {
      func_0x02237f2c();
      *(undefined4 *)(*param_1 + 0x118) = 0;
    }
    param_1[2] = 0x1b;
    switch(uStack_10) {
    case 1:
    case 2:
      param_1[2] = 0x1b;
      break;
    case 3:
      func_0x021ed9b4();
      param_1[2] = 0x1b;
      break;
    case 4:
      func_0x021fa0d8();
      param_1[2] = 0x1b;
      break;
    case 5:
    case 7:
      sub_020399EC();
      break;
    case 6:
      param_1[2] = 0x1b;
    }
    if ((iStack_c < -20000) && (-30000 < iStack_c)) {
      param_1[2] = 0x1b;
    }
    break;
  case 3:
    param_1[2] = 0x10;
  }
  return 0;
}

