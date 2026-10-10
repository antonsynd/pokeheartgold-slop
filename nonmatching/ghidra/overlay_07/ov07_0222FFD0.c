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
undefined4 ov07_0222FF04(undefined4, undefined4);
undefined4 ov07_0222FEB0(undefined4, undefined4, undefined4, undefined4);

undefined4 ov07_0222FFD0(int param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uStack_18;

  if ((*(int *)(param_1 + 0x274) < 0xf) &&
     (*(int *)(param_1 + 0x270) = *(int *)(param_1 + 0x270) + 1, 6 < *(int *)(param_1 + 0x270))) {
    *(undefined4 *)(param_1 + 0x270) = 0;
    ov07_0222FEB0(*(undefined4 *)(param_1 + *(int *)(param_1 + 0x274) * 4 + 0x18),
                  param_1 + 0x54 + *(int *)(param_1 + 0x274) * 0x24,*(undefined4 *)(param_1 + 0x10),
                  *(undefined4 *)(param_1 + 0x14));
    *(int *)(param_1 + 0x274) = *(int *)(param_1 + 0x274) + 1;
  }
  iVar1 = *(int *)(param_1 + 0x274);
  iVar2 = 0;
  uStack_18 = param_4;
  if (0 < iVar1) {
    iVar4 = param_1 + 0x54;
    iVar3 = param_1;
    do {
      uStack_18 = ov07_0222FF04(*(undefined4 *)(iVar3 + 0x18),iVar4);
      iVar1 = *(int *)(param_1 + 0x274);
      iVar2 = iVar2 + 1;
      iVar4 = iVar4 + 0x24;
      iVar3 = iVar3 + 4;
    } while (iVar2 < iVar1);
  }
  if ((0xe < iVar1) && (uStack_18 == 1)) {
    return 1;
  }
  return 0;
}

