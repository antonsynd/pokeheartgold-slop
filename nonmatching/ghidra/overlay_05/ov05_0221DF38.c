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
typedef void code(void);
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
undefined4 Party_GetMonByIndex(undefined4, undefined4);
undefined4 GetMonGender(undefined4);
undefined4 GetMonData(undefined4, undefined4, undefined4);
undefined4 Party_GetCount(undefined4);
undefined4 Pokemon_GetIconNaix(void);
undefined4 GetMonIconNaixEx(undefined4, undefined4, undefined4);
undefined4 Pokemon_GetStatusIconId(undefined4);

void ov05_0221DF38(int param_1,undefined4 param_2,int param_3)

{
  undefined1 uVar1;
  undefined2 uVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  uint uVar7;
  int iVar8;
  uint uVar9;
  int iVar10;
  
  uVar3 = Party_GetCount(param_2);
  param_1 = param_1 + param_3 * 0x18;
  uVar9 = 0;
  do {
    if (uVar9 < (uVar3 & 0xffff)) {
      uVar4 = Party_GetMonByIndex(param_2,uVar9);
      iVar10 = param_1 + uVar9 * 0x18;
      uVar5 = Pokemon_GetIconNaix();
      *(undefined4 *)(iVar10 + 0x214) = uVar5;
      uVar2 = GetMonData(uVar4,5,0);
      *(undefined2 *)(iVar10 + 0x218) = uVar2;
      if (*(short *)(iVar10 + 0x218) != 0) {
        iVar8 = param_1 + uVar9 * 0x18;
        uVar1 = GetMonData(uVar4,0x4c,0);
        *(undefined1 *)(iVar8 + 0x223) = uVar1;
        uVar2 = GetMonData(uVar4,0xa3,0);
        *(undefined2 *)(iVar8 + 0x21a) = uVar2;
        uVar2 = GetMonData(uVar4,0xa4,0);
        *(undefined2 *)(iVar8 + 0x21c) = uVar2;
        uVar1 = GetMonData(uVar4,0xa1,0);
        *(undefined1 *)(iVar8 + 0x220) = uVar1;
        uVar2 = GetMonData(uVar4,6,0);
        *(undefined2 *)(iVar8 + 0x21e) = uVar2;
        uVar1 = GetMonData(uVar4,0xa2,0);
        *(undefined1 *)(iVar8 + 0x224) = uVar1;
        uVar1 = GetMonData(uVar4,0x70,0);
        *(undefined1 *)(iVar8 + 0x225) = uVar1;
        iVar6 = GetMonData(uVar4,0xb0,0);
        *(bool *)(iVar10 + 0x222) = iVar6 != 1;
        uVar1 = GetMonGender(uVar4);
        *(undefined1 *)(iVar8 + 0x221) = uVar1;
        uVar7 = Pokemon_GetStatusIconId(uVar4);
        *(uint *)(iVar8 + 0x228) = uVar7 & 0xff;
      }
    }
    else {
      uVar4 = GetMonIconNaixEx(0,0,0);
      *(undefined4 *)(param_1 + uVar9 * 0x18 + 0x214) = uVar4;
    }
    uVar9 = uVar9 + 1 & 0xffff;
  } while (uVar9 < 3);
  return;
}

