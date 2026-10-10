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
undefined4 func_0x022282a4() __asm__("sub_022282A4");
undefined4 ov49_02258E04();
undefined4 func_0x022282dc() __asm__("sub_022282DC");
undefined4 func_0x02230974() __asm__("sub_02230974");
undefined4 func_0x0223089c() __asm__("sub_0223089C");
undefined4 func_0x0223093c() __asm__("sub_0223093C");
undefined4 ov49_022593BC();
undefined4 func_0x02228270() __asm__("sub_02228270");
undefined4 ov49_0225932C();
undefined4 ov49_02259320();
undefined4 func_0x02230968() __asm__("sub_02230968");
undefined4 func_0x02230908() __asm__("sub_02230908");
undefined4 func_0x022308e4() __asm__("sub_022308E4");

void ov49_02259764(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int aiStack_28 [2];
  int iStack_20;
  undefined4 auStack_1c [2];
  undefined4 uStack_14;
  
  switch(*(undefined2 *)(param_1 + 2)) {
  case 0:
    func_0x0223089c(param_1[1],0);
    func_0x0223093c(param_1[1],0);
    func_0x02230974(param_1[1],2);
    ov49_02259320(param_1 + 3,0,0x10000,4);
    func_0x02230908(param_1[1],auStack_1c);
    switch(param_3) {
    case 0:
    case 1:
      param_1[8] = uStack_14;
      break;
    case 2:
    case 3:
      param_1[8] = auStack_1c[0];
    }
    param_1[7] = 0;
    *(short *)(param_1 + 2) = *(short *)(param_1 + 2) + 1;
  case 1:
    iVar1 = ov49_0225932C(param_1 + 3,param_1[7]);
    param_1[7] = param_1[7] + 1;
    func_0x02230908(param_1[1],aiStack_28);
    switch(param_3) {
    case 0:
      iStack_20 = ov49_022593BC(param_1 + 3);
      iStack_20 = param_1[8] - iStack_20;
      break;
    case 1:
      iStack_20 = ov49_022593BC(param_1 + 3);
      iStack_20 = param_1[8] + iStack_20;
      break;
    case 2:
      aiStack_28[0] = ov49_022593BC(param_1 + 3);
      aiStack_28[0] = param_1[8] - aiStack_28[0];
      break;
    case 3:
      aiStack_28[0] = ov49_022593BC(param_1 + 3);
      aiStack_28[0] = param_1[8] + aiStack_28[0];
    }
    func_0x022308e4(param_1[1],aiStack_28);
    if (iVar1 == 1) {
      uVar2 = func_0x022282a4(param_3);
      param_1[7] = 4;
      switch(uVar2) {
      case 3:
        param_1[7] = param_1[7] + 2;
      case 0:
        param_1[7] = param_1[7] + 2;
      case 2:
        param_1[7] = param_1[7] + 2;
      default:
        *(short *)(param_1 + 2) = *(short *)(param_1 + 2) + 1;
        return;
      }
    }
    break;
  case 2:
    iVar1 = param_1[7];
    param_1[7] = iVar1 + -1;
    if (iVar1 + -1 == 0) {
      *(short *)(param_1 + 2) = *(short *)(param_1 + 2) + 1;
      uVar2 = func_0x022282dc(*param_1);
      uVar2 = func_0x02228270(uVar2,param_3);
      uVar3 = func_0x022282a4(param_3);
      ov49_02258E04(param_1,uVar2,uVar3);
      func_0x02230968(param_1[1]);
      func_0x0223089c(param_1[1],1);
      *(undefined1 *)((int)param_1 + 10) = 1;
    }
  }
  return;
}

