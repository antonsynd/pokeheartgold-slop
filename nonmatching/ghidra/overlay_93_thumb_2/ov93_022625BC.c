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
undefined4 OverlayManager_GetData();
undefined4 func_0x0225892c() __asm__("sub_0225892C");
undefined4 func_0x02258aa4() __asm__("sub_02258AA4");
undefined4 IsPaletteFadeFinished();
undefined4 func_0x022589cc() __asm__("sub_022589CC");
undefined4 func_0x022589f8() __asm__("sub_022589F8");
undefined4 func_0x02258938() __asm__("sub_02258938");
undefined4 sub_0200FC20();
undefined4 func_0x02258b98() __asm__("sub_02258B98");
undefined4 sub_0200FB70();
undefined4 func_0x02258a04() __asm__("sub_02258A04");
undefined4 func_0x022589bc() __asm__("sub_022589BC");
undefined4 func_0x02258aa0() __asm__("sub_02258AA0");

undefined4 ov93_022625BC(undefined4 param_1,int *param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;

  piVar1 = (int *)OverlayManager_GetData();
  iVar2 = *piVar1;
  if (*(char *)(iVar2 + 0x3d) != '\x01') {
    switch(*param_2) {
    case 0:
      if (*(char *)(iVar2 + 0x31) == '\0') {
        *param_2 = 1;
      }
      else {
        *param_2 = 3;
      }
      break;
    case 1:
      iVar2 = func_0x0225892c(iVar2,0x75);
      piVar1[1] = iVar2;
      *param_2 = *param_2 + 1;
      break;
    case 2:
      iVar2 = func_0x022589bc(piVar1[1]);
      if (iVar2 == 1) {
        uVar3 = func_0x022589cc(piVar1[1]);
        *(undefined4 *)(*piVar1 + 0x34) = uVar3;
        func_0x02258938(piVar1[1]);
        piVar1[1] = 0;
        *param_2 = 5;
      }
      break;
    case 3:
      iVar2 = func_0x022589f8(iVar2,iVar2 + 0x10,0x75);
      piVar1[2] = iVar2;
      *param_2 = *param_2 + 1;
      break;
    case 4:
      iVar2 = func_0x02258aa0(piVar1[2]);
      if (iVar2 == 1) {
        uVar3 = func_0x02258aa4(piVar1[2]);
        *(undefined4 *)(*piVar1 + 0x38) = uVar3;
        func_0x02258a04(piVar1[2]);
        piVar1[2] = 0;
        *param_2 = 5;
      }
      break;
    default:
      return 1;
    }
    return 0;
  }
  if (*(char *)(iVar2 + 0x3e) == '\0') {
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 == 1) {
      sub_0200FB70();
    }
    sub_0200FC20(0);
    *(char *)(*piVar1 + 0x3e) = *(char *)(*piVar1 + 0x3e) + '\x01';
  }
  else {
    if (*(char *)(iVar2 + 0x3e) != '\x01') {
      if (piVar1[1] != 0) {
        func_0x02258938();
        piVar1[1] = 0;
      }
      if (piVar1[2] != 0) {
        func_0x02258a04();
        piVar1[2] = 0;
      }
      return 1;
    }
    iVar2 = func_0x02258b98();
    if (iVar2 == 1) {
      *(char *)(*piVar1 + 0x3e) = *(char *)(*piVar1 + 0x3e) + '\x01';
    }
  }
  return 0;
}

