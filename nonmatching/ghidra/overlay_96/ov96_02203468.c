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
undefined4 func_0x020cd224() __asm__("sub_020CD224");
undefined4 PokeathlonCourse_GetHeapAllocPtr4();

void ov96_02203468(void)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uStack_20;
  undefined4 uStack_18;

  iVar2 = PokeathlonCourse_GetHeapAllocPtr4();
  iVar3 = iVar2 + 200;
  uStack_18 = 0;
  iVar4 = iVar2 + 0xd4;
  uStack_20 = iVar3;
  do {
    bVar1 = false;
    if (*(int *)(iVar2 + 0xc4) == 1) {
      func_0x020cd224(0x1000,iVar4,iVar3,uStack_20);
    }
    else if ((*(int *)(iVar2 + 0xc4) == 3) &&
            (*(char *)(iVar2 + 0xf8) = *(char *)(iVar2 + 0xf8) + '\x01', 7 < *(byte *)(iVar2 + 0xf8)
            )) {
      *(undefined1 *)(iVar2 + 0xf8) = 0;
      *(undefined4 *)(iVar2 + 0xc4) = 0;
    }
    if ((((*(int *)(iVar2 + 200) < 0x1000) || (0x40000 < *(int *)(iVar2 + 200))) ||
        (*(int *)(iVar2 + 0xd0) < 0x1000)) || (0x40000 < *(int *)(iVar2 + 0xd0))) {
      bVar1 = true;
    }
    if (bVar1) {
      *(undefined4 *)(iVar2 + 0xc4) = 0;
      *(undefined4 *)(iVar2 + 0xd4) = 0;
      *(undefined4 *)(iVar2 + 0xdc) = 0;
      *(undefined4 *)(iVar2 + 0xd8) = 0;
      *(undefined4 *)(iVar2 + 0xe0) = 0;
      *(undefined4 *)(iVar2 + 0xe8) = 0;
      *(undefined4 *)(iVar2 + 0xe4) = 0;
    }
    iVar2 = iVar2 + 0x48;
    uStack_20 = uStack_20 + 0x48;
    iVar3 = iVar3 + 0x48;
    uStack_18 = uStack_18 + 1;
    iVar4 = iVar4 + 0x48;
  } while (uStack_18 < 0xc);
  return;
}

