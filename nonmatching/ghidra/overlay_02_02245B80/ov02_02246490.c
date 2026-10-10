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
undefined4 func_0x020cf15c(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_020CF15C");

undefined4 ov02_02246490(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  byte bVar2;
  
  if (*(char *)(param_1 + 9) == '\0') {
    *(undefined1 *)(param_1 + 0xb) = 0;
    *(undefined1 *)(param_1 + 10) = 0;
    *(undefined1 *)(param_1 + 0xd) = 0;
    *(char *)(param_1 + 9) = *(char *)(param_1 + 9) + '\x01';
  }
  else {
    if (*(char *)(param_1 + 9) != '\x01') {
      *(undefined1 *)(param_1 + 10) = 0;
      *(undefined1 *)(param_1 + 0xb) = 0;
      *(undefined1 *)(param_1 + 9) = 0;
      return 1;
    }
    cVar1 = *(char *)(param_1 + 0xb);
    *(char *)(param_1 + 0xb) = cVar1 + '\x01';
    if (cVar1 == '\0') {
      func_0x020cf15c(0x4000050,2,5,(uint)*(byte *)(param_1 + 0xd),
                      0x1f - (uint)*(byte *)(param_1 + 0xd),param_4);
      bVar2 = *(byte *)(param_1 + 10);
      *(byte *)(param_1 + 10) = bVar2 + 1;
      if (bVar2 < 0xc) {
        cVar1 = '\x01';
      }
      else {
        cVar1 = -1;
      }
      *(char *)(param_1 + 0xd) = *(char *)(param_1 + 0xd) + cVar1;
      *(undefined1 *)(param_1 + 0xb) = 0;
      if (0x18 < *(byte *)(param_1 + 10)) {
        *(char *)(param_1 + 9) = *(char *)(param_1 + 9) + '\x01';
      }
    }
  }
  return 0;
}

