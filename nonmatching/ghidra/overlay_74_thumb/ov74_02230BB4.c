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
undefined4 ov74_02230A4C();
undefined4 ov74_02231184();
undefined4 ov74_02231260();
undefined4 ov74_022312C0();

void ov74_02230BB4(void)

{
  int iVar1;
  int iVar2;
  int iVar3;

  iVar1 = ov74_02231184();
  if (*(char *)(iVar1 + 0x19) == '\x01') {
    *(char *)(iVar1 + 0x1a) = *(char *)(iVar1 + 0x1a) + -1;
    if (*(char *)(iVar1 + 0x1a) != '\0') {
      return;
    }
    *(undefined1 *)(iVar1 + 0x19) = 0;
  }
  if (*(char *)(iVar1 + 0x19) == '\0') {
    iVar2 = ov74_02231260();
    ov74_022312C0(*(undefined4 *)(iVar1 + 8),*(undefined4 *)(iVar1 + 4),0x40 - iVar2,3,
                  *(undefined1 *)(iVar1 + 0x1c));
    iVar3 = ov74_02231260();
    ov74_02230A4C(*(undefined4 *)(iVar1 + 8),(0x40 - iVar2) + iVar3,0xffff);
    *(undefined1 *)(iVar1 + 0x19) = 1;
    *(undefined1 *)(iVar1 + 0x1a) = 0x3c;
  }
  return;
}

