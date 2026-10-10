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
undefined4 GetWindowX();
undefined4 GetWindowY();
undefined4 CopyWindowPixelsToVram_TextMode();
undefined4 ov18_021F04C0();
undefined4 FillWindowPixelBuffer();
undefined4 ov18_021EE3AC();
undefined4 sub_020196E8();

void ov18_021F0428(int param_1)

{
  char cVar1;
  char cVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;

  uVar5 = 0;
  iVar6 = param_1 + 0xc;
  do {
    iVar7 = (uVar5 + 8) * 0x10;
    FillWindowPixelBuffer(iVar6 + iVar7,0);
    iVar4 = (int)*(char *)(param_1 + 0x18ca) + uVar5 + -2;
    if ((-1 < iVar4) && (iVar4 < *(int *)(param_1 + 0x1900))) {
      uVar3 = ov18_021F04C0(param_1);
      ov18_021EE3AC(param_1,*(undefined4 *)(param_1 + 0x65c),uVar5 + 8,uVar3,0x48,0,4,0xf0c00,2);
    }
    CopyWindowPixelsToVram_TextMode(iVar6 + iVar7);
    cVar1 = GetWindowX(iVar6 + iVar7);
    cVar2 = GetWindowY(iVar6 + iVar7);
    sub_020196E8(*(undefined4 *)(param_1 + 8),uVar5 + 0x11,(int)cVar1,(int)cVar2);
    uVar5 = uVar5 + 1;
  } while (uVar5 < 6);
  return;
}

