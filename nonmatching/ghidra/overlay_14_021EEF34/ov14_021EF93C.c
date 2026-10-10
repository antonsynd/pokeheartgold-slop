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
undefined4 ov14_021F0244();
undefined4 GridInputHandler_IsButtonInputMode();
undefined4 ov14_021F1C4C();
undefined4 ov14_021F7A50();
undefined4 PlaySE();

undefined4 ov14_021EF93C(int param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  
  uVar1 = ov14_021F7A50();
  iVar2 = GridInputHandler_IsButtonInputMode(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c));
  if (iVar2 == 0) {
    uVar1 = 0xfffffffe;
  }
  if (uVar1 < 0x25) {
    if (uVar1 == 0x24) {
LAB_021ef990:
      PlaySE(0x5ea);
      uVar3 = ov14_021F1C4C(param_1,0xff);
      return uVar3;
    }
  }
  else {
    switch(uVar1) {
    case 0xfffffffc:
      PlaySE(0x5dc);
      return 0x88;
    case 0xfffffffd:
      PlaySE(0x5dc);
      uVar3 = ov14_021F0244(param_1,0x89);
      return uVar3;
    case 0xfffffffe:
      goto LAB_021ef990;
    case 0xffffffff:
      return 0x88;
    }
  }
  PlaySE(0x5ea);
  uVar3 = ov14_021F1C4C(param_1,uVar1);
  return uVar3;
}

