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
undefined4 Camera_Copy(undefined4, undefined4);
undefined4 func_0x020f1520(undefined4, undefined4) __asm__("sub_020F1520");
undefined4 func_0x02023630(undefined4, undefined4) __asm__("sub_02023630");
undefined4 func_0x020ccba0(undefined4, undefined4) __asm__("sub_020CCBA0");
undefined4 func_0x020f24c8(undefined4, undefined4) __asm__("sub_020F24C8");
undefined4 func_0x020f2104(void) __asm__("sub_020F2104");
undefined4 Camera_SetFixedTarget(undefined4, undefined4);
undefined4 func_0x020f2178(undefined4) __asm__("sub_020F2178");
undefined4 Camera_SetStaticPtr(undefined4);

void ov02_02246548(int param_1,int param_2,int param_3,undefined4 param_4,undefined2 param_5)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_14 = param_4;
  if (param_2 < 1) {
    uVar2 = func_0x020f2178(param_2 << 0xc);
    func_0x020f24c8(uVar2,0x3f000000);
  }
  else {
    uVar2 = func_0x020f2178(param_2 << 0xc);
    func_0x020f1520(0x3f000000,uVar2);
  }
  uVar1 = func_0x020f2104();
  *(undefined2 *)(param_1 + 8) = uVar1;
  if (param_3 < 1) {
    uVar2 = func_0x020f2178(param_3 << 0xc);
    func_0x020f24c8(uVar2,0x3f000000);
  }
  else {
    uVar2 = func_0x020f2178(param_3 << 0xc);
    func_0x020f1520(0x3f000000,uVar2);
  }
  uVar1 = func_0x020f2104();
  *(undefined2 *)(param_1 + 10) = uVar1;
  *(short *)(param_1 + 0xe) = (short)param_4;
  *(undefined2 *)(param_1 + 0x12) = param_5;
  *(undefined2 *)(param_1 + 0x10) = 0;
  if (*(ushort *)(param_1 + 0x12) == 0) {
    uVar2 = func_0x020f2178(0);
    func_0x020f24c8(uVar2,0x3f000000);
  }
  else {
    uVar2 = func_0x020f2178((uint)*(ushort *)(param_1 + 0x12) << 0xc);
    func_0x020f1520(0x3f000000,uVar2);
  }
  uVar2 = func_0x020f2104();
  uVar2 = func_0x020ccba0(0x168000,uVar2);
  *(undefined4 *)(param_1 + 0x14) = uVar2;
  Camera_Copy(*(undefined4 *)(*(int *)(param_1 + 4) + 0x24),*(undefined4 *)(param_1 + 0x18));
  func_0x02023630(&uStack_20,*(undefined4 *)(param_1 + 0x18));
  puVar3 = (undefined4 *)(param_1 + 0x20);
  *puVar3 = uStack_20;
  *(undefined4 *)(param_1 + 0x24) = uStack_1c;
  *(undefined4 *)(param_1 + 0x28) = uStack_18;
  *(undefined4 *)(param_1 + 0x2c) = *puVar3;
  *(undefined4 *)(param_1 + 0x30) = *(undefined4 *)(param_1 + 0x24);
  *(undefined4 *)(param_1 + 0x34) = *(undefined4 *)(param_1 + 0x28);
  Camera_SetFixedTarget(puVar3,*(undefined4 *)(param_1 + 0x18));
  Camera_SetStaticPtr(*(undefined4 *)(param_1 + 0x18));
  return;
}

