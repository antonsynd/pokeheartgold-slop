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
undefined4 sub_02034BF8();
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");
extern int iRam021d413c __asm__("sub_021D413C");

void sub_02034C94(void)

{
  int iVar1;
  undefined4 in_r3;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;

  iVar3 = iRam021d413c;
  iVar6 = iRam021d413c + 0x54;
  if ((int)((uint)*(byte *)(iRam021d413c + 0xd95) << 0x19) < 0) {
    iVar5 = 0;
    *(byte *)(iRam021d413c + 0xd95) = *(byte *)(iRam021d413c + 0xd95) & 0xbf;
    iVar2 = 0;
    iVar4 = 0;
    do {
      if ((*(short *)(iRam021d413c + iVar2 + 0xd44) != 0) &&
         (iVar1 = sub_02034BF8(iRam021d413c + 0x118 + iVar4,iVar3 + 0x58,6), iVar1 != 0)) {
        *(undefined2 *)(iRam021d413c + iVar5 * 2 + 0xd44) = 300;
        func_0x020d4a50(iVar6,iRam021d413c + 0x114 + iVar5 * 0xc0,0xc0,iRam021d413c + 0x114,in_r3);
        return;
      }
      iVar5 = iVar5 + 1;
      iVar2 = iVar2 + 2;
      iVar4 = iVar4 + 0xc0;
    } while (iVar5 < 0x10);
    iVar2 = 0;
    iVar3 = iRam021d413c;
    do {
      if (*(short *)(iVar3 + 0xd44) == 0) break;
      iVar2 = iVar2 + 1;
      iVar3 = iVar3 + 2;
    } while (iVar2 < 0x10);
    if (iVar2 < 0x10) {
      *(undefined2 *)(iRam021d413c + iVar2 * 2 + 0xd44) = 300;
      func_0x020d4a50(iVar6,iRam021d413c + 0x114 + iVar2 * 0xc0,0xc0,iVar2,in_r3);
      *(undefined1 *)(iRam021d413c + 0xd74) = 1;
    }
  }
  return;
}

