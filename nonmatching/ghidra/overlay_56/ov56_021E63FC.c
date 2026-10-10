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
undefined4 PaletteData_BlendPalette(void *, int, unsigned short, unsigned short, unsigned char, unsigned short);
undefined4 SysTask_Destroy(void *);
undefined4 ov56_021E5D08();

void ov56_021E63FC(undefined *param_1,int param_2)

{
  char cVar1;

  if (*(int *)(param_2 + 0x30) == 0) {
    SysTask_Destroy(param_1);
    return;
  }
  if ((*(char *)(param_2 + 0x13) == '\0') && (*(char *)(param_2 + 10) != '\x01')) {
    if (*(char *)(param_2 + 0x17) != *(char *)(param_2 + 0x16)) {
      ov56_021E5D08(param_2);
      *(undefined1 *)(param_2 + 0x17) = *(undefined1 *)(param_2 + 0x16);
    }
    PaletteData_BlendPalette
              (*(undefined **)(param_2 + 0x30),0,*(byte *)(param_2 + 0x16) + 0x22,1,
               *(byte *)(param_2 + 0x14),0x7fff);
    cVar1 = *(char *)(param_2 + 0x14);
    if (*(char *)(param_2 + 0x15) == '\0') {
      *(char *)(param_2 + 0x14) = cVar1 + '\x01';
      if (cVar1 == '\f') {
        *(byte *)(param_2 + 0x15) = *(byte *)(param_2 + 0x15) ^ 1;
      }
    }
    else {
      *(char *)(param_2 + 0x14) = cVar1 + -1;
      if (cVar1 == '\x01') {
        *(byte *)(param_2 + 0x15) = *(byte *)(param_2 + 0x15) ^ 1;
        return;
      }
    }
  }
  return;
}

