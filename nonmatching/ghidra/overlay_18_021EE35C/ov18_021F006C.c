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
undefined4 sub_02019B08();
undefined4 func_0x0201eea0() __asm__("sub_0201EEA0");
undefined4 GetWindowX();
undefined4 GetWindowY();
undefined4 GetWindowHeight();
undefined4 GetWindowWidth();
undefined4 CopyWindowPixelsToVram_TextMode();

void ov18_021F006C(int param_1,int param_2)

{
  short sVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  ushort *puVar9;
  uint uVar10;
  
  iVar2 = sub_02019B08(*(undefined4 *)(param_1 + 8),0xf);
  param_1 = param_1 + 0xc;
  param_2 = param_2 * 0x10;
  sVar1 = func_0x0201eea0(param_1 + param_2);
  iVar3 = GetWindowX(param_1 + param_2);
  iVar4 = GetWindowY(param_1 + param_2);
  uVar5 = GetWindowWidth(param_1 + param_2);
  uVar6 = GetWindowHeight(param_1 + param_2);
  uVar10 = 0;
  if (uVar6 != 0) {
    iVar8 = 0;
    do {
      uVar7 = 0;
      if (uVar5 != 0) {
        puVar9 = (ushort *)(iVar2 + iVar3 * 2 + iVar4 * 0x40);
        do {
          *puVar9 = (short)uVar7 + (short)iVar8 + sVar1 + (*puVar9 & 0xf000);
          uVar7 = uVar7 + 1;
          puVar9 = puVar9 + 1;
        } while (uVar7 < uVar5);
      }
      uVar10 = uVar10 + 1;
      iVar4 = iVar4 + 1;
      iVar8 = iVar8 + uVar5;
    } while (uVar10 < uVar6);
  }
  CopyWindowPixelsToVram_TextMode(param_1 + param_2);
  return;
}

