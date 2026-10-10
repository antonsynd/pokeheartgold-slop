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
undefined4 ov10_0221EF34(undefined4, undefined4);
undefined4 ov10_0221EF24(undefined4, undefined4);
undefined4 func_0x0224ede0(undefined4, undefined4, undefined4, undefined4) __asm__("sub_0224EDE0");
undefined4 ov10_0221EEF0(undefined4);
undefined4 ov10_0221F084(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x022527cc(undefined4, undefined4) __asm__("sub_022527CC");
undefined4 ov10_0221EF7C(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);

void ov10_0221E498(undefined4 param_1,int param_2)

{
  undefined1 uVar1;
  undefined1 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  undefined1 *puVar9;
  undefined1 auStack_2c [8];
  undefined1 auStack_24 [16];
  
  ov10_0221EF24(param_2,1);
  uVar1 = ov10_0221EEF0(param_2);
  iVar3 = ov10_0221EEF0(param_2);
  uVar4 = ov10_0221EEF0(param_2);
  iVar7 = 0;
  puVar9 = auStack_2c;
  do {
    uVar2 = func_0x0224ede0(param_2,*(undefined1 *)(param_2 + 0x3cf),iVar7 + 10,0);
    *puVar9 = uVar2;
    iVar7 = iVar7 + 1;
    puVar9 = puVar9 + 1;
  } while (iVar7 < 6);
  uVar8 = (uint)*(byte *)(param_2 + 0x3cf);
  uVar5 = func_0x022527cc(param_2,uVar8);
  iVar7 = ov10_0221EF7C(param_1,param_2,uVar8,param_2 + 0x2d4c + uVar8 * 0xc0,auStack_24,
                        *(undefined2 *)(param_2 + uVar8 * 0xc0 + 0x2db8),auStack_2c,uVar5,
                        (*(uint *)(param_2 + uVar8 * 0xc0 + 0x2dcc) & 0x3fffff) >> 0x13,iVar3);
  iVar6 = ov10_0221EF34(param_2,uVar1);
  if (iVar3 == 1) {
    uVar1 = *(undefined1 *)(param_2 + (uint)*(byte *)(param_2 + 0x355) + 0x36c);
  }
  else {
    uVar1 = 100;
  }
  uVar5 = func_0x022527cc(param_2,iVar6);
  iVar3 = param_2 + iVar6 * 0xc0;
  iVar3 = ov10_0221F084(param_1,param_2,*(undefined2 *)(param_2 + iVar6 * 2 + 0x307c),
                        *(undefined2 *)(iVar3 + 0x2db8),auStack_2c,iVar6,uVar5,
                        (*(uint *)(iVar3 + 0x2dcc) & 0x3fffff) >> 0x13,uVar1);
  if (iVar7 < iVar3) {
    ov10_0221EF24(param_2,uVar4);
  }
  return;
}

