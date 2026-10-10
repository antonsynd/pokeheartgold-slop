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
undefined4 func_0x021ec5b4() __asm__("sub_021EC5B4");
undefined4 func_0x021ec210() __asm__("sub_021EC210");
undefined4 ov72_0223A444();
undefined4 func_0x021ec0fc() __asm__("sub_021EC0FC");
undefined4 func_0x021ec60c() __asm__("sub_021EC60C");
undefined4 func_0x021ec724() __asm__("sub_021EC724");
undefined4 func_0x021ec9e0() __asm__("sub_021EC9E0");
undefined4 func_0x021ec8d8() __asm__("sub_021EC8D8");

undefined4 ov72_02239220(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_50 [4];
  undefined4 uStack_4c;
  undefined1 auStack_48 [60];
  undefined4 uStack_c;

  uStack_c = param_4;
  func_0x021ec60c();
  iVar1 = func_0x021ec5b4();
  if (iVar1 != 0) {
    uVar2 = func_0x021ec724();
    switch(uVar2) {
    default:
      func_0x021ec0fc(auStack_50);
      ov72_0223A444(param_1);
      *(undefined4 *)(param_1 + 0x1c) = 0x35;
      *(undefined4 *)(param_1 + 0xf5c) = 0xfffffffe;
      break;
    case 4:
      func_0x021ec9e0(auStack_48);
      *(undefined4 *)(param_1 + 0x1c) = 4;
      break;
    case 7:
      uVar2 = func_0x021ec0fc(&uStack_4c);
      *(undefined4 *)(param_1 + 0xf50) = uVar2;
      *(undefined4 *)(param_1 + 0xf54) = uStack_4c;
      func_0x021ec210();
      func_0x021ec8d8();
      ov72_0223A444(param_1);
      *(undefined4 *)(param_1 + 0x1c) = 0x37;
    }
  }
  return 3;
}

