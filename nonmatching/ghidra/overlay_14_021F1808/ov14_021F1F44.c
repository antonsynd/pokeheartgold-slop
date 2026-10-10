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
undefined4 func_0x02019f74() __asm__("sub_02019F74");
undefined4 ov14_021F2330();
undefined4 PlaySE();
undefined4 ov14_021F7340();
undefined4 ov14_021F0244();
undefined4 GridInputHandler_IsButtonInputMode();
undefined4 ov14_021F15C8();
undefined4 ov14_021F7B7C();



undefined4 ov14_021F1F44(int param_1)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  
  iVar2 = ov14_021F7B7C();
  if (iVar2 == 1) {
    PlaySE(0x5dd);
    *(undefined1 *)(param_1 + 0x26) = 1;
    *(undefined1 *)(param_1 + 0x27) = 1;
    uVar1 = func_0x02019f74(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c));
    *(undefined1 *)(param_1 + 0x28) = uVar1;
    uVar3 = ov14_021F2330(param_1,0xf,0x97);
    return uVar3;
  }
  uVar4 = ov14_021F7340(param_1);
  iVar2 = GridInputHandler_IsButtonInputMode(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c));
  if (iVar2 == 0) {
    uVar4 = 0xfffffffe;
  }
  if (uVar4 < 0xfffffffe) {
    if (0xfffffffc < uVar4) {
      PlaySE(0x5dc);
      uVar3 = ov14_021F0244(param_1,0x74);
      return uVar3;
    }
    if (uVar4 < 0x2b) {
      switch(uVar4) {
      case 0x24:
        goto LAB_021f1ff0;
      }
    }
    else if (uVar4 == 0xfffffffc) {
      return 0x73;
    }
  }
  else {
    if (uVar4 == 0xffffffff) {
      return 0x73;
    }
    if (uVar4 == 0xfffffffe) {
LAB_021f1ff0:
      uVar3 = ov14_021F15C8(param_1,0xff);
      return uVar3;
    }
  }
  uVar3 = ov14_021F15C8(param_1,uVar4);
  return uVar3;
}

