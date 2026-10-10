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
undefined4 func_0x0200d740() __asm__("sub_0200D740");
undefined4 func_0x0200dd54() __asm__("sub_0200DD54");
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov15_02200458();

void ov15_021FFDD8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  uint uVar4;

  iVar2 = 0x2200b0c;
  uVar4 = 0;
  iVar3 = param_1;
  do {
    uVar1 = func_0x0200d740(*(undefined4 *)(param_1 + 0x248),*(undefined4 *)(param_1 + 0x24c),iVar2,
                            0x100000,param_4);
    *(undefined4 *)(iVar3 + 0x250) = uVar1;
    uVar4 = uVar4 + 1;
    iVar2 = iVar2 + 0x34;
    iVar3 = iVar3 + 4;
  } while (uVar4 < 0x27);
  func_0x0200dd54(*(undefined4 *)(param_1 + 0x29c),1);
  uVar4 = 0;
  iVar3 = param_1;
  do {
    func_0x0200dd54(*(undefined4 *)(iVar3 + 0x2c0),1);
    uVar4 = uVar4 + 1;
    iVar3 = iVar3 + 4;
  } while (uVar4 < 4);
  uVar4 = 0;
  iVar3 = param_1;
  do {
    func_0x0200dd54(*(undefined4 *)(iVar3 + 0x274),1);
    uVar4 = uVar4 + 1;
    iVar3 = iVar3 + 4;
  } while (uVar4 < 8);
  ov15_02200458(param_1,1);
  ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x250),0);
  ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x26c),0);
  ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x270),0);
  uVar4 = 0;
  iVar3 = param_1;
  do {
    ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar3 + 0x2c0),0);
    uVar4 = uVar4 + 1;
    iVar3 = iVar3 + 4;
  } while (uVar4 < 4);
  uVar4 = 0;
  iVar3 = param_1;
  do {
    ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar3 + 0x2d0),0);
    uVar4 = uVar4 + 1;
    iVar3 = iVar3 + 4;
  } while (uVar4 < 6);
  ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x2e8),0);
  func_0x0200dd54(*(undefined4 *)(param_1 + 0x2e8),1);
  return;
}

