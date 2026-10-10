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
undefined4 BgTilemapRectChangePalette();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 func_0x0200dd10() __asm__("sub_0200DD10");

undefined4 ov67_021E6A40(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  
  cVar1 = *(char *)(param_1 + 0x496);
  if (cVar1 == '\0') {
    if ((int)((uint)*(byte *)(param_1 + 0x494) << 0x1f) < 0) {
      BgTilemapRectChangePalette
                (*(undefined4 *)(param_1 + 0x10),*(byte *)(param_1 + 0x494) >> 1,
                 *(undefined1 *)(param_1 + 0x498),*(undefined1 *)(param_1 + 0x499),
                 *(undefined1 *)(param_1 + 0x49a),*(undefined1 *)(param_1 + 0x49b),
                 *(byte *)(param_1 + 0x495) & 0xf,param_4);
      ScheduleBgTilemapBufferTransfer
                (*(undefined4 *)(param_1 + 0x10),*(byte *)(param_1 + 0x494) >> 1);
    }
    else {
      func_0x0200dd10(*(undefined4 *)(param_1 + (uint)(*(byte *)(param_1 + 0x494) >> 1) * 4 + 0x484)
                      ,*(byte *)(param_1 + 0x495) & 0xf);
    }
    *(char *)(param_1 + 0x496) = *(char *)(param_1 + 0x496) + '\x01';
  }
  else if (cVar1 == '\x01') {
    *(char *)(param_1 + 0x497) = *(char *)(param_1 + 0x497) + '\x01';
    if (*(char *)(param_1 + 0x497) == '\x04') {
      if ((int)((uint)*(byte *)(param_1 + 0x494) << 0x1f) < 0) {
        BgTilemapRectChangePalette
                  (*(undefined4 *)(param_1 + 0x10),*(byte *)(param_1 + 0x494) >> 1,
                   *(undefined1 *)(param_1 + 0x498),*(undefined1 *)(param_1 + 0x499),
                   *(undefined1 *)(param_1 + 0x49a),*(undefined1 *)(param_1 + 0x49b),
                   *(byte *)(param_1 + 0x495) >> 4,param_4);
        ScheduleBgTilemapBufferTransfer
                  (*(undefined4 *)(param_1 + 0x10),*(byte *)(param_1 + 0x494) >> 1);
      }
      else {
        func_0x0200dd10(*(undefined4 *)
                         (param_1 + (uint)(*(byte *)(param_1 + 0x494) >> 1) * 4 + 0x484),
                        *(byte *)(param_1 + 0x495) >> 4);
      }
      *(undefined1 *)(param_1 + 0x497) = 0;
      *(char *)(param_1 + 0x496) = *(char *)(param_1 + 0x496) + '\x01';
    }
  }
  else if ((cVar1 == '\x02') &&
          (*(char *)(param_1 + 0x497) = *(char *)(param_1 + 0x497) + '\x01',
          *(char *)(param_1 + 0x497) == '\x02')) {
    return 0;
  }
  return 1;
}

