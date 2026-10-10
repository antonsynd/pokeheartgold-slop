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
undefined4 func_0x0200dd10() __asm__("sub_0200DD10");
undefined4 ManagedSprite_IsAnimated();

undefined4 ov15_021FD850(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  int iVar2;
  byte bVar3;
  byte *pbVar4;
  
  pbVar4 = (byte *)(param_1 + 0x940);
  if (*(char *)(param_1 + 0x942) == '\x01') {
    iVar2 = ManagedSprite_IsAnimated(*(undefined4 *)(param_1 + (uint)*pbVar4 * 4 + 0x250));
    if (iVar2 == 0) {
      return *(undefined4 *)(param_1 + 0x944);
    }
  }
  else {
    bVar1 = *(byte *)(param_1 + 0x943);
    if ((bVar1 & 0xf) == 0) {
      func_0x0200dd10(*(undefined4 *)(param_1 + (uint)*pbVar4 * 4 + 0x250),
                      *(byte *)(param_1 + 0x941) & 0xf,bVar1,param_4,param_4);
      *(byte *)(param_1 + 0x943) =
           *(byte *)(param_1 + 0x943) & 0xf0 | (*(byte *)(param_1 + 0x943) & 0xf) + 1 & 0xf;
    }
    else if ((bVar1 & 0xf) == 1) {
      bVar3 = ((bVar1 >> 4) + 1) * '\x10';
      *(byte *)(param_1 + 0x943) = bVar1 & 0xf | bVar3;
      if (*(byte *)(param_1 + 0x943) >> 4 == 4) {
        func_0x0200dd10(*(undefined4 *)(param_1 + (uint)*pbVar4 * 4 + 0x250),
                        *(byte *)(param_1 + 0x941) >> 4,bVar3,0xf0,param_4);
        *(byte *)(param_1 + 0x943) = *(byte *)(param_1 + 0x943) & 0xf;
        *(byte *)(param_1 + 0x943) =
             *(byte *)(param_1 + 0x943) & 0xf0 | (*(byte *)(param_1 + 0x943) & 0xf) + 1 & 0xf;
      }
    }
    else if (((bVar1 & 0xf) == 2) &&
            (*(byte *)(param_1 + 0x943) = bVar1 & 0xf | ((bVar1 >> 4) + 1) * '\x10',
            *(byte *)(param_1 + 0x943) >> 4 == 2)) {
      return *(undefined4 *)(param_1 + 0x944);
    }
  }
  return 0x23;
}

