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
undefined4 ov07_022324D8(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_02231FA0(undefined4, undefined4);
undefined4 ov07_0221C768(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_02231FE4(undefined4, undefined4);

void ov07_022290BC(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;

  iVar1 = ov07_022324D8(param_1,0x70,param_3,param_4,param_4);
  ov07_02231FE4(param_1,iVar1);
  iVar2 = ov07_0221C768(*(undefined4 *)(iVar1 + 4),1);
  if (iVar2 < 0x47) {
    if (0x45 < iVar2) {
      *(undefined4 *)(iVar1 + 0x48) = 3;
      goto LAB_02229124;
    }
    if (iVar2 < 0x1f) {
      if (iVar2 == 0x1e) {
        *(undefined4 *)(iVar1 + 0x48) = 1;
        goto LAB_02229124;
      }
    }
    else if (iVar2 == 0x32) {
      *(undefined4 *)(iVar1 + 0x48) = 2;
      goto LAB_02229124;
    }
  }
  else if (iVar2 < 0x6f) {
    if (0x6d < iVar2) {
      *(undefined4 *)(iVar1 + 0x48) = 5;
      goto LAB_02229124;
    }
    if (iVar2 == 0x5a) {
      *(undefined4 *)(iVar1 + 0x48) = 4;
      goto LAB_02229124;
    }
  }
  else if (iVar2 == 0x96) {
    *(undefined4 *)(iVar1 + 0x48) = 6;
    goto LAB_02229124;
  }
  *(undefined4 *)(iVar1 + 0x48) = 0;
LAB_02229124:
  iVar5 = 0;
  iVar4 = iVar1 + 0x28;
  iVar2 = iVar1;
  do {
    iVar3 = ov07_0221FA48(*(undefined4 *)(iVar1 + 4),iVar5);
    *(int *)(iVar2 + 0x38) = iVar3;
    if (iVar3 != 0) {
      ov07_02231FA0(iVar3,iVar4);
    }
    iVar5 = iVar5 + 1;
    iVar2 = iVar2 + 4;
    iVar4 = iVar4 + 4;
  } while (iVar5 < 4);
  ov07_0221C410(*(undefined4 *)(iVar1 + 4),0x2229025,iVar1);
  return;
}

