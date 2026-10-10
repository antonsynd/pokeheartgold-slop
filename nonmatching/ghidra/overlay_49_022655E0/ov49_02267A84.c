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
undefined4 func_0x020182a8() __asm__("sub_020182A8");
undefined4 func_0x020182a0() __asm__("sub_020182A0");
undefined4 ov49_02259154();
undefined4 ov49_02265980();
extern undefined ov49_0226A70C;

void ov49_02267A84(undefined4 param_1,int param_2,uint param_3)

{
  undefined *puVar1;
  int iVar2;
  uint uVar3;
  undefined4 uStack_20;
  int iStack_1c;
  int iStack_18;

  uVar3 = 0;
  if (param_3 != 0) {
    puVar1 = &ov49_0226A70C;
    iVar2 = param_2 + 0xc;
    do {
      ov49_02265980(param_1,param_2,uVar3,puVar1);
      ov49_02259154(*(undefined4 *)(param_2 + 8),&uStack_20);
      iStack_1c = iStack_1c + 0x8000;
      iStack_18 = iStack_18 + 0x6000;
      func_0x020182a8(iVar2,uStack_20);
      func_0x020182a0(iVar2,0);
      uVar3 = uVar3 + 1;
      puVar1 = puVar1 + 4;
      iVar2 = iVar2 + 0x78;
    } while (uVar3 < param_3);
  }
  *(char *)(param_2 + 0x954) = (char)param_3;
  return;
}

