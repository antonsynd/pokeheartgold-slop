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
undefined4 PaletteData_ForceBeginPaletteFade();
undefined4 ov07_0221DE04();
undefined4 ov07_0221DEC0();
undefined4 SetBgControlParam();
undefined4 PaletteData_GetSelectedBuffersBitmask();
undefined4 func_0x02003ea4() __asm__("sub_02003EA4");

undefined4 ov07_0221E280(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  if (*(char *)(param_2 + 5) == '\0') {
    iVar1 = *(int *)(param_2 + 0x48);
    if (*(char *)(param_2 + 0xd) == '\0') {
      PaletteData_ForceBeginPaletteFade
                (*(undefined4 *)(iVar1 + 200),1,*(uint *)(iVar1 + 0x1a8) & 0xffff,
                 (int)*(char *)(param_2 + 0xe),0,0x10,0,param_4);
      func_0x02003ea4(*(undefined4 *)(*(int *)(param_2 + 0x48) + 200),0,0x200,0x10,0);
    }
    else {
      PaletteData_ForceBeginPaletteFade
                (*(undefined4 *)(iVar1 + 200),1,*(uint *)(iVar1 + 0x1a8) & 0xffff,
                 (int)*(char *)(param_2 + 0xe),0,0x10,0xffff,param_4);
      func_0x02003ea4(*(undefined4 *)(*(int *)(param_2 + 0x48) + 200),0,0x200,0x10,0xffff);
    }
    *(char *)(param_2 + 5) = *(char *)(param_2 + 5) + '\x01';
  }
  else if (*(char *)(param_2 + 5) != '\x01') {
    iVar1 = PaletteData_GetSelectedBuffersBitmask(*(undefined4 *)(*(int *)(param_2 + 0x48) + 200));
    if (iVar1 != 0) {
      return 1;
    }
    return 0;
  }
  iVar1 = PaletteData_GetSelectedBuffersBitmask(*(undefined4 *)(*(int *)(param_2 + 0x48) + 200));
  if (iVar1 == 0) {
    SetBgControlParam(*(undefined4 *)(*(int *)(param_2 + 0x48) + 0xc4),3,0,0);
    ov07_0221DE04(param_2,*(undefined4 *)(param_2 + 0x48),3,*(undefined4 *)(param_2 + 0x10));
    if (*(char *)(param_2 + 0xd) == '\0') {
      PaletteData_ForceBeginPaletteFade
                (*(undefined4 *)(*(int *)(param_2 + 0x48) + 200),1,0x200,
                 (int)*(char *)(param_2 + 0xe),0x10,0,0);
    }
    else {
      PaletteData_ForceBeginPaletteFade
                (*(undefined4 *)(*(int *)(param_2 + 0x48) + 200),1,0x200,
                 (int)*(char *)(param_2 + 0xe),0x10,0,0xffff);
    }
    ov07_0221DEC0(param_2);
    *(undefined1 *)(*(int *)(param_2 + 0x48) + 0x17c) = 2;
    *(char *)(param_2 + 5) = *(char *)(param_2 + 5) + '\x01';
  }
  return 1;
}

