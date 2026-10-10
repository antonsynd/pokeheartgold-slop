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
undefined4 CopyWindowPixelsToVram_TextMode();
undefined4 ListMenuUpdateCursorObj();
undefined4 FillWindowPixelRect();
undefined4 PlaySE();
extern int uRam021d1154 __asm__("sub_021D1154");

undefined4 sub_02059A08(int param_1)

{
  char cVar1;
  
  if ((uRam021d1154 & 0x40) == 0) {
    if ((uRam021d1154 & 0x80) == 0) {
      if ((uRam021d1154 & 1) == 0) {
        if ((uRam021d1154 & 2) != 0) {
          PlaySE(0x5dc);
          return 2;
        }
        return 0;
      }
      PlaySE(0x5dc);
      if ((int)*(char *)(param_1 + 0x81) < (int)(*(byte *)(param_1 + 0x80) - 1)) {
        return 1;
      }
      return 2;
    }
    if ((int)*(char *)(param_1 + 0x81) == *(byte *)(param_1 + 0x80) - 1) {
      cVar1 = '\0';
    }
    else {
      cVar1 = *(char *)(param_1 + 0x81) + '\x01';
    }
    *(char *)(param_1 + 0x81) = cVar1;
  }
  else {
    cVar1 = *(char *)(param_1 + 0x81);
    if (cVar1 == '\0') {
      cVar1 = *(char *)(param_1 + 0x80);
    }
    *(char *)(param_1 + 0x81) = cVar1 + -1;
  }
  PlaySE(0x5dc);
  FillWindowPixelRect(*(int *)(param_1 + 0x7c),0xf,0,0,0x10,
                      (uint)*(byte *)(*(int *)(param_1 + 0x7c) + 8) << 3);
  ListMenuUpdateCursorObj
            (*(undefined4 *)(param_1 + 0x78),*(undefined4 *)(param_1 + 0x7c),0,
             (int)*(char *)(param_1 + 0x81) << 4);
  CopyWindowPixelsToVram_TextMode(*(undefined4 *)(param_1 + 0x7c));
  return 0;
}

