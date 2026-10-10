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

void ov05_0221D6C4(int *param_1,char param_2,char param_3)

{
  if (*(char *)(*param_1 + 0x29) == '\x01') {
    *(undefined1 *)(param_1 + 0x2d9) = 0x14;
    *(char *)(param_1 + 0x2da) = param_2 + -0x6e;
    *(undefined1 *)((int)param_1 + 0xb65) = 0x51;
    *(char *)((int)param_1 + 0xb69) = param_2 + -0x5e;
    *(undefined1 *)((int)param_1 + 0xb66) = 0x80;
    *(char *)((int)param_1 + 0xb6a) = param_3 + ',';
    *(undefined1 *)((int)param_1 + 0xb67) = 0xbd;
    *(char *)((int)param_1 + 0xb6b) = param_3 + '<';
    *(undefined1 *)(param_1 + 0x2db) = 0xb;
    *(char *)(param_1 + 0x2dc) = param_2 + 'x';
    *(undefined1 *)((int)param_1 + 0xb6d) = 0x4c;
    *(char *)((int)param_1 + 0xb71) = param_2 + -0x78;
    *(undefined1 *)((int)param_1 + 0xb6e) = 0x77;
    *(char *)((int)param_1 + 0xb72) = param_3 + '\x12';
    *(undefined1 *)((int)param_1 + 0xb6f) = 0xb8;
    *(char *)((int)param_1 + 0xb73) = param_3 + '\"';
    return;
  }
  *(undefined1 *)(param_1 + 0x2d9) = 0x18;
  *(char *)(param_1 + 0x2da) = param_2 + -0x60;
  *(undefined1 *)((int)param_1 + 0xb65) = 0x51;
  *(char *)((int)param_1 + 0xb69) = param_2 + -0x60;
  *(undefined1 *)((int)param_1 + 0xb66) = 0x88;
  *(char *)((int)param_1 + 0xb6a) = param_3 + '0';
  *(undefined1 *)((int)param_1 + 0xb67) = 0xc1;
  *(char *)((int)param_1 + 0xb6b) = param_3 + '0';
  *(undefined1 *)(param_1 + 0x2db) = 0xf;
  *(char *)(param_1 + 0x2dc) = param_2 + -0x7a;
  *(undefined1 *)((int)param_1 + 0xb6e) = 0x80;
  *(char *)((int)param_1 + 0xb72) = param_3 + '\x16';
  return;
}

