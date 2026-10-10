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
undefined4 func_0x02003ea4(undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_02003EA4");
undefined4 ov07_022227A8(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221FA78(undefined4);
undefined4 ov07_022227D8(undefined4);
undefined4 Pokepic_SetAttr(undefined4, undefined4, undefined4);
undefined4 func_0x0201bc8c(undefined4, undefined4, undefined4, undefined4) __asm__("sub_0201BC8C");
undefined4 PaletteData_GetSelectedBuffersBitmask(void);
undefined4 ov07_0221C448(undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 ov07_0221E6C8(undefined4);
undefined4 PaletteData_BeginPaletteFade(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);

void ov07_02228B38(undefined4 param_1,char *param_2)

{
  undefined2 uVar1;
  int iVar2;
  undefined4 uVar3;
  char *pcVar4;

  switch(*param_2) {
  case '\0':
    uVar3 = ov07_0221FA78(*(undefined4 *)(param_2 + 0xc));
    uVar1 = ov07_0221E6C8(*(undefined4 *)(param_2 + 0xc));
    PaletteData_BeginPaletteFade(uVar3,1,uVar1,1,0,10,0);
    *param_2 = *param_2 + '\x01';
    return;
  case '\x01':
    ov07_0221FA78(*(undefined4 *)(param_2 + 0xc));
    iVar2 = PaletteData_GetSelectedBuffersBitmask();
    if (iVar2 != 0) {
      return;
    }
    *param_2 = *param_2 + '\x01';
code_r0x02228ba2:
    ov07_022227A8(param_2 + 0xb4,(int)*(short *)((uint)(byte)param_2[1] * 2 + 0x2236722),0,0,5);
    if (param_2[2] == '\0') {
      uVar3 = ov07_0221FA78(*(undefined4 *)(param_2 + 0xc));
      func_0x02003ea4(uVar3,0,0xff,10,0);
    }
    else {
      uVar3 = ov07_0221FA78(*(undefined4 *)(param_2 + 0xc));
      func_0x02003ea4(uVar3,0,0xff,10,0x7fff);
    }
    param_2[3] = '\x03';
    param_2[2] = param_2[2] ^ 1;
    param_2[1] = param_2[1] + '\x01';
    *param_2 = *param_2 + '\x01';
    goto code_r0x02228bfe;
  case '\x02':
    goto code_r0x02228ba2;
  case '\x03':
code_r0x02228bfe:
    iVar2 = ov07_022227D8(param_2 + 0xb4);
    if (iVar2 == 0) {
      if ((byte)param_2[1] < 8) {
        *param_2 = *param_2 + -1;
      }
      else {
        *param_2 = *param_2 + '\x01';
      }
    }
    if ((param_2[3] != '\0') && (param_2[3] = param_2[3] + -1, param_2[3] == '\0')) {
      uVar3 = ov07_0221FA78(*(undefined4 *)(param_2 + 0xc));
      func_0x02003ea4(uVar3,0,0xff,0,0);
    }
    iVar2 = 0;
    pcVar4 = param_2;
    do {
      if (*(int *)(pcVar4 + 0x1c) != 0) {
        Pokepic_SetAttr(*(int *)(pcVar4 + 0x1c),0,
                        (int)*(short *)(param_2 + 0xb4) + (int)*(short *)(pcVar4 + 0x14));
      }
      iVar2 = iVar2 + 1;
      pcVar4 = pcVar4 + 0x14;
    } while (iVar2 < 4);
    func_0x0201bc8c(*(undefined4 *)(param_2 + 8),3,0,(int)*(short *)(param_2 + 0xb4));
    return;
  default:
    ov07_0221C448(*(undefined4 *)(param_2 + 0xc),param_1);
    Heap_Free(param_2);
    return;
  }
}

