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

undefined4 ov87_021E7734(int param_1)

{
  char cVar1;
  char cVar2;
  bool bVar3;
  int iVar4;

  bVar3 = false;
  if (*(byte *)(param_1 + 0x3a1) < 2) {
    return 0;
  }
  cVar1 = *(char *)(param_1 + (uint)*(byte *)(param_1 + 0x3a3) + 0x360);
  cVar2 = *(char *)(param_1 + (uint)*(byte *)(param_1 + 0x3a2) + 0x360);
  if (cVar2 == cVar1) {
    *(byte *)(param_1 + 0x3a0) = *(byte *)(param_1 + 0x3a0) & 0xfe | 1;
  }
  else if (cVar2 == '\x04') {
    *(byte *)(param_1 + 0x3a0) = *(byte *)(param_1 + 0x3a0) & 0xfe | 1;
  }
  else if (cVar1 == '\x04') {
    *(byte *)(param_1 + 0x3a0) = *(byte *)(param_1 + 0x3a0) & 0xfe | 1;
  }
  if (2 < *(byte *)(param_1 + 0x3a1)) {
    cVar1 = *(char *)(param_1 + (uint)*(byte *)(param_1 + 0x3a3) + 0x360);
    cVar2 = *(char *)(param_1 + (uint)*(byte *)(param_1 + 0x3a2) + 0x360);
    if ((cVar2 == cVar1) && (cVar2 == *(char *)(param_1 + (uint)*(byte *)(param_1 + 0x3a4) + 0x360))
       ) {
      bVar3 = true;
    }
    if ((cVar2 == '\x04') && (cVar1 == '\x04')) {
      bVar3 = true;
    }
    if ((cVar2 == '\x04') &&
       (*(char *)(param_1 + (uint)*(byte *)(param_1 + 0x3a4) + 0x360) == '\x04')) {
      bVar3 = true;
    }
    if ((cVar1 == '\x04') &&
       (*(char *)(param_1 + (uint)*(byte *)(param_1 + 0x3a4) + 0x360) == '\x04')) {
      bVar3 = true;
    }
    if ((cVar2 == '\x04') &&
       (cVar1 == *(char *)(param_1 + (uint)*(byte *)(param_1 + 0x3a4) + 0x360))) {
      bVar3 = true;
    }
    if ((cVar1 == '\x04') &&
       (cVar2 == *(char *)(param_1 + (uint)*(byte *)(param_1 + 0x3a4) + 0x360))) {
      bVar3 = true;
    }
    if ((*(char *)(param_1 + (uint)*(byte *)(param_1 + 0x3a4) + 0x360) == '\x04') &&
       (cVar2 == cVar1)) {
      bVar3 = true;
    }
    if (bVar3) {
      iVar4 = 0;
      do {
        cVar1 = *(char *)(param_1 + (uint)*(byte *)(param_1 + iVar4 + 0x3a2) + 0x360);
        if (cVar1 != '\x04') {
          *(char *)(param_1 + 0x39f) = cVar1;
          return 1;
        }
        iVar4 = iVar4 + 1;
      } while (iVar4 < 3);
      return 1;
    }
    return 0;
  }
  return 0;
}

