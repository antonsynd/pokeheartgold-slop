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
undefined4 sub_0208B448();
undefined4 sub_0208B9C8();
undefined4 sub_0208B400();
undefined4 sub_0208CBD4();
undefined4 sub_0208C2A0();
undefined4 sub_02089F98();
undefined4 sub_0208C42C();
undefined4 sub_0208BFD0();
undefined4 sub_0208BD38();
undefined4 sub_0208B5A8();
undefined4 sub_0208A8F4();
undefined4 sub_0208BCD4();
undefined4 sub_0208BF9C();

void sub_02089CB4(int param_1)

{
  char cVar1;

  cVar1 = *(char *)(*(int *)(param_1 + 0x22c) + 0x12);
  if ((cVar1 == '\0') || (cVar1 == '\x01')) {
    *(undefined1 *)(param_1 + 0x7bc) = 0;
  }
  else if (cVar1 == '\x02') {
    *(undefined1 *)(param_1 + 0x7bc) = 1;
  }
  sub_0208B448(param_1);
  sub_0208B5A8(param_1);
  sub_0208C2A0(param_1);
  sub_0208BD38(param_1);
  sub_0208BCD4(param_1);
  sub_0208C42C(param_1);
  sub_0208CBD4(param_1);
  sub_02089F98(param_1);
  sub_0208B9C8(param_1);
  if (*(char *)(*(int *)(param_1 + 0x22c) + 0x12) != '\x02') {
    sub_0208B400(param_1);
    sub_0208BF9C(param_1);
    sub_0208BFD0(param_1);
    return;
  }
  sub_0208A8F4(param_1);
  return;
}

