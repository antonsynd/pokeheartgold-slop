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
undefined4 ov96_0220C8B8();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov96_0220C7FC();

void ov96_0220C680(int param_1)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = *(uint *)(param_1 + 0x40);
  if ((uVar2 & 0x3ff) >> 2 != 3) {
    if ((int)(*(uint *)(param_1 + 0x44) << 0x17) < 0) {
      uVar1 = (uVar2 >> 0x15) + 1;
      *(uint *)(param_1 + 0x40) = uVar1 * 0x200000 | uVar2 & 0x1fffff;
      if (0x59 < (uVar1 & 0x7ff)) {
        ov96_0220C7FC();
        return;
      }
    }
    else if ((*(uint *)(param_1 + 0x44) & 0xff) == 0) {
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x14),0);
    }
    else {
      uVar1 = (uVar2 >> 0x15) + 1;
      *(uint *)(param_1 + 0x40) = uVar2 & 0x1fffff | uVar1 * 0x200000;
      if (1 < (uVar1 & 0x7ff)) {
        *(uint *)(param_1 + 0x40) = *(uint *)(param_1 + 0x40) & 0x1fffff;
        *(uint *)(param_1 + 0x44) =
             *(uint *)(param_1 + 0x44) & 0xffffff00 | (*(uint *)(param_1 + 0x44) & 0xff) - 1 & 0xff;
      }
      uVar2 = *(uint *)(param_1 + 0x44) & 0xff;
      if (0x31 < uVar2) {
        ov96_0220C8B8(*(undefined4 *)(param_1 + 0x14),uVar2,1);
        return;
      }
    }
  }
  return;
}

