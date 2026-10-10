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

void ov59_0223A7FC(int param_1,int param_2)

{
  byte bVar1;
  char cVar2;
  uint uVar3;

  if (param_2 == 0) {
    *(undefined1 *)(param_1 + 0x4b) = *(undefined1 *)(param_1 + 0x4a);
    *(undefined1 *)(param_1 + 0x49) = 1;
    uVar3 = (uint)*(byte *)(param_1 + 0x4a);
    switch(uVar3) {
    default:
      *(undefined1 *)(param_1 + 0x4a) = 0;
      return;
    case 1:
    case 2:
      goto code_r0x0223a832;
    case 3:
      *(undefined1 *)(param_1 + 0x4a) = 2;
      return;
    }
  }
  *(undefined1 *)(param_1 + 0x4c) = *(undefined1 *)(param_1 + 0x4a);
  *(undefined1 *)(param_1 + 0x49) = 0;
  cVar2 = *(char *)(param_1 + 0x4a);
  if (cVar2 == '\0') {
    if (1 < *(byte *)(param_1 + 0x4b)) {
      *(undefined1 *)(param_1 + 0x4a) = 1;
      return;
    }
    *(byte *)(param_1 + 0x4a) = *(byte *)(param_1 + 0x4b);
    return;
  }
  if (cVar2 != '\x01') {
    if (cVar2 != '\x02') {
      *(undefined1 *)(param_1 + 0x4a) = 0;
      return;
    }
    if (*(byte *)(param_1 + 0x4b) < 2) {
      *(undefined1 *)(param_1 + 0x4a) = 2;
      return;
    }
    *(byte *)(param_1 + 0x4a) = *(byte *)(param_1 + 0x4b);
    return;
  }
  cVar2 = *(char *)(param_1 + 0x4b);
  if (cVar2 == '\0') {
    *(undefined1 *)(param_1 + 0x4a) = 1;
    return;
  }
  if (cVar2 == '\x03') {
    *(undefined1 *)(param_1 + 0x4a) = 2;
    return;
  }
  *(char *)(param_1 + 0x4a) = cVar2;
  return;
code_r0x0223a832:
  bVar1 = *(byte *)(param_1 + 0x4c);
  if ((uVar3 != bVar1) && (uVar3 - 1 != (uint)bVar1)) {
    *(undefined1 *)(param_1 + 0x4a) = 1;
    return;
  }
  *(byte *)(param_1 + 0x4a) = bVar1;
  return;
}

