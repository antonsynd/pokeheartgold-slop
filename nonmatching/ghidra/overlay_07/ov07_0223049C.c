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
undefined4 ov07_022222B4();
undefined4 Heap_Free();
undefined4 ov07_0221E6C8();
undefined4 PaletteData_BeginPaletteFade();
undefined4 ov07_0221FA78();
undefined4 ov07_02222268();
undefined4 ov07_02231EC0();
undefined4 PaletteData_GetSelectedBuffersBitmask();
extern ushort uRam04000040 __asm__("sub_04000040");
extern undefined2 uRam04000044 __asm__("sub_04000044");
extern uint uRam04000000 __asm__("sub_04000000");
undefined4 ov07_0221C448();

void ov07_0223049C(undefined4 param_1,undefined4 *param_2)

{
  undefined2 uVar1;
  undefined4 uVar2;
  int iVar3;

  switch(param_2[1]) {
  case 0:
    ov07_02222268(param_2 + 3,0x7f,0,0,0,8);
    uRam04000000 = uRam04000000 & 0xffff1fff | 0x2000;
    ov07_02231EC0(*param_2,0,0);
    uRam04000040 = 0xff;
    uRam04000044 = 0xbf;
    param_2[2] = 7;
    param_2[1] = param_2[1] + 1;
    return;
  case 1:
    iVar3 = param_2[2];
    param_2[2] = iVar3 + -1;
    if (iVar3 + -1 < 0) {
      uVar2 = ov07_0221FA78(*param_2);
      uVar1 = ov07_0221E6C8(*param_2);
      PaletteData_BeginPaletteFade(uVar2,1,uVar1,0,0,0x10,0xffff);
      param_2[1] = param_2[1] + 1;
      return;
    }
    break;
  case 2:
    iVar3 = ov07_022222B4(param_2 + 3);
    if (iVar3 == 0) {
      param_2[1] = param_2[1] + 1;
      return;
    }
    uRam04000040 = *(short *)(param_2 + 3) + 0x80U & 0xff | (0x7f - *(short *)(param_2 + 3)) * 0x100
    ;
    uRam04000044 = 0xbf;
    return;
  case 3:
    ov07_0221FA78(*param_2);
    iVar3 = PaletteData_GetSelectedBuffersBitmask();
    if (iVar3 == 0) {
      param_2[1] = param_2[1] + 1;
      uRam04000000 = uRam04000000 & 0xffff1fff;
      uVar2 = ov07_0221FA78(*param_2);
      uVar1 = ov07_0221E6C8(*param_2);
      PaletteData_BeginPaletteFade(uVar2,1,uVar1,0,0x10,0,0xffff);
      return;
    }
    break;
  case 4:
    ov07_0221FA78(*param_2);
    iVar3 = PaletteData_GetSelectedBuffersBitmask();
    if (iVar3 == 0) {
      param_2[1] = param_2[1] + 1;
      return;
    }
    break;
  case 5:
    Heap_Free(param_2);
    ov07_0221C448(*param_2,param_1);
  }
  return;
}

