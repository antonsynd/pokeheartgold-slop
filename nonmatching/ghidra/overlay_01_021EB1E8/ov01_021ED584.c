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
undefined4 GfGfx_EngineATogglePlanes(undefined4, undefined4);
undefined4 ov01_021EC7AC(undefined4);
undefined4 ov01_021EC7C8(undefined4);
undefined4 ov01_021EC790(undefined4, undefined4, undefined4);
undefined4 ov01_021EC678(undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021EA864(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021EB830(undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021EBCA4(undefined4);
undefined4 ov01_021EB840(undefined4);
undefined4 ov01_021EB818(undefined4, undefined4);
undefined4 ov01_021EC5FC(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);

void ov01_021ED584(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int *piVar3;

  piVar3 = (int *)param_2[0x3d6];
  switch(*(undefined2 *)((int)param_2 + 0xf62)) {
  case 0:
    ov01_021EC5FC(piVar3 + 0x11,piVar3 + 5,*(undefined4 *)(*(int *)(*param_2 + 0x104) + 0x4c),6,
                  0x7555,0x7fff,1,(short)param_2[0x3d9],param_4);
    ov01_021EB830(piVar3,0,9,0x1e);
    ov01_021EB818(0,0x10);
    GfGfx_EngineATogglePlanes(4,1);
    *(undefined2 *)((int)param_2 + 0xf62) = 1;
    return;
  case 1:
    iVar1 = ov01_021EC7AC(piVar3 + 5);
    iVar2 = ov01_021EB840(piVar3);
    ov01_021EB818(*piVar3,0x10 - *piVar3);
    if ((iVar1 == 1) && (iVar2 == 1)) {
      *(undefined2 *)((int)param_2 + 0xf62) = 3;
      return;
    }
    break;
  case 2:
    if ((short)param_2[0x3d9] != 0) {
      iVar1 = *(int *)(*(int *)(*param_2 + 0x104) + 0x4c);
      piVar3[5] = iVar1;
      ov01_021EC678(iVar1,6,0x7555,0x7fff);
      ov01_021EC7C8(piVar3 + 5);
    }
    ov01_021EB818(9,7);
    GfGfx_EngineATogglePlanes(4,1);
    *(undefined2 *)((int)param_2 + 0xf62) = 3;
    return;
  case 3:
    if (*(short *)((int)param_2 + 0xf66) == 5) {
      if ((short)param_2[0x3d9] != 0) {
        ov01_021EC790(piVar3 + 5,1,0);
      }
      ov01_021EB830(piVar3,9,0,0x1e);
      *(undefined2 *)((int)param_2 + 0xf62) = 4;
      return;
    }
    break;
  case 4:
    if ((short)param_2[0x3d9] == 0) {
      iVar1 = 1;
    }
    else {
      iVar1 = ov01_021EC7AC(piVar3 + 5);
    }
    iVar2 = ov01_021EB840(piVar3);
    ov01_021EB818(*piVar3,0x10 - *piVar3);
    if ((iVar1 == 1) && (iVar2 == 1)) {
      *(undefined2 *)((int)param_2 + 0xf62) = 5;
      return;
    }
    break;
  case 5:
    if ((short)param_2[0x3d9] != 0) {
      ov01_021EA864(piVar3[5],1,0,0,0,0);
    }
    ov01_021EBCA4(param_2[1]);
  }
  return;
}

