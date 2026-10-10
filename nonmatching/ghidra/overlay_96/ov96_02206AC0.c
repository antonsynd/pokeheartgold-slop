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
undefined4 ov96_021EB588();
undefined4 ov96_021EB52C();

void ov96_02206AC0(int param_1,int param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iStack_24;
  int iStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uVar4 = 0;
  uStack_18 = param_4;
  do {
    iVar2 = param_1 + uVar4 * 0x10;
    if (*(int *)(iVar2 + 0x46c) == 0) {
      return;
    }
    iVar3 = ((uint)*(ushort *)(iVar2 + 0x478) - param_2) + 0x80;
    uStack_1c = 0;
    iStack_24 = iVar3 * 0x1000;
    iVar1 = ((uint)*(ushort *)(iVar2 + 0x47a) - param_3) + 0x60;
    iStack_20 = iVar1 * 0x1000;
    ov96_021EB588(*(undefined4 *)(iVar2 + 0x470),&iStack_24);
    ov96_021EB588(*(undefined4 *)(iVar2 + 0x474),&iStack_24);
    if ((((iVar3 < -0x20) || (0x120 < iVar3)) || (iVar1 < -0x20)) || (0xe0 < iVar1)) {
      ov96_021EB52C(*(undefined4 *)(iVar2 + 0x470),1,0);
      ov96_021EB52C(*(undefined4 *)(iVar2 + 0x474),1,0);
    }
    else {
      ov96_021EB52C(*(undefined4 *)(iVar2 + 0x470),1,1);
      ov96_021EB52C(*(undefined4 *)(iVar2 + 0x474),1,1);
    }
    uVar4 = uVar4 + 1 & 0xff;
  } while (uVar4 < 10);
  return;
}

