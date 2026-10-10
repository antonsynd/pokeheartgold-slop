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
undefined4 func_0x020182e0() __asm__("sub_020182E0");
undefined4 func_0x020182a8() __asm__("sub_020182A8");
undefined4 ov49_02258E60();
undefined4 ov49_02259154();
undefined4 ov49_02265980();
undefined4 func_0x020182a0() __asm__("sub_020182A0");
extern undefined ov49_0226A730;
extern undefined ov49_0226A734;
extern undefined ov49_0226A73C;

void ov49_02265E54(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iStack_28;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  undefined4 uStack_10;

  uStack_10 = param_4;
  ov49_02265980(param_1,param_2,1,&ov49_0226A730);
  ov49_02265980(param_1,param_2,0,&ov49_0226A73C);
  ov49_02265980(param_1,param_2,2,&ov49_0226A734);
  func_0x020182a0(param_2 + 0x84,0);
  ov49_02259154(*(undefined4 *)(param_2 + 8),&iStack_1c);
  iStack_20 = iStack_14;
  iVar1 = iStack_1c;
  iStack_28 = iStack_1c + 0x8000;
  iVar2 = iStack_18 + 0x20000;
  *(undefined4 *)(param_2 + 0x958) = 8;
  *(undefined4 *)(param_2 + 0x95c) = 8;
  iStack_1c = iStack_28;
  iStack_18 = iStack_18 + 0x10000;
  uVar3 = ov49_02258E60(*(undefined4 *)(param_2 + 8),6);
  switch(uVar3) {
  case 0:
    iStack_14 = iStack_14 + -0x1c000;
    iStack_20 = iStack_20 + -0xe000;
    func_0x020182e0(param_2 + 0x84,0xa38d,1);
    func_0x020182e0(param_2 + 0xfc,0xdc70,1);
    func_0x020182a8(param_2 + 0x84,iStack_1c + 0x8000,iStack_18,iStack_14);
    func_0x020182a8(param_2 + 0xfc,iStack_1c + -0x8000,iStack_18,iStack_14);
    break;
  case 1:
    iStack_14 = iStack_14 + 0x18000;
    iStack_20 = iStack_20 + 0xb000;
    func_0x020182e0(param_2 + 0x84,0x238e,1);
    func_0x020182e0(param_2 + 0xfc,0x5c71,1);
    func_0x020182a8(param_2 + 0x84,iStack_1c + -0x8000,iStack_18,iStack_14);
    func_0x020182a8(param_2 + 0xfc,iStack_1c + 0x8000,iStack_18,iStack_14);
    break;
  case 2:
    iStack_1c = iStack_1c + -0x17000;
    iStack_28 = iVar1 + 0x1000;
    iStack_20 = iStack_20 + 0x8000;
    func_0x020182e0(param_2 + 0x84,0xe38f,1);
    func_0x020182e0(param_2 + 0xfc,0x1c71,1);
    func_0x020182a8(param_2 + 0x84,iStack_1c,iStack_18,iStack_14 + -0x8000);
    func_0x020182a8(param_2 + 0xfc,iStack_1c,iStack_18,iStack_14 + 0x8000);
    break;
  case 3:
    iStack_1c = iStack_1c + 0x17000;
    iStack_28 = iVar1 + 0xf000;
    iStack_20 = iStack_20 + 0x8000;
    func_0x020182e0(param_2 + 0x84,0x638d,1);
    func_0x020182e0(param_2 + 0xfc,0x9c71,1);
    func_0x020182a8(param_2 + 0x84,iStack_1c,iStack_18,iStack_14 + 0x8000);
    func_0x020182a8(param_2 + 0xfc,iStack_1c,iStack_18,iStack_14 + -0x8000);
  }
  func_0x020182a8(param_2 + 0xc,iStack_28,iVar2,iStack_20);
  return;
}

