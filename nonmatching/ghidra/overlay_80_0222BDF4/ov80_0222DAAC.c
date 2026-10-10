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
undefined4 ToggleBgLayer();
undefined4 func_0x0200b5c0() __asm__("sub_0200B5C0");
undefined4 Heap_Alloc();
undefined4 ov80_0223AC24();
undefined4 func_0x0200b484() __asm__("sub_0200B484");
undefined4 SysTask_CreateOnMainQueue();
undefined4 ov80_0223B544();
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov80_0222D63C();

undefined4 ov80_0222DAAC(undefined4 *param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  short sVar5;
  undefined1 auStack_34 [32];
  
  iVar2 = param_1[1];
  if (iVar2 == 0) {
    ov80_0223AC24(1,0x10,0xfffffff0,param_1 + 3,2);
    param_1[1] = param_1[1] + 1;
  }
  else if (iVar2 == 1) {
    if (param_1[3] != 0) {
      func_0x020d4994(auStack_34,0,0x20);
      param_1[4] = 0;
      iVar2 = Heap_Alloc(0x65,0x608);
      param_1[9] = iVar2;
      *(undefined4 *)(iVar2 + 0x604) = 2;
      uVar3 = ov80_0223B544(0x4000020,auStack_34,0x65);
      iVar4 = 0;
      *(undefined4 *)(param_1[9] + 0x600) = uVar3;
      sVar5 = 0;
      iVar2 = 0;
      do {
        uVar1 = iVar4 >> 0x1f;
        *(short *)(param_1[9] + iVar2) = sVar5;
        *(short *)(param_1[9] + iVar2 + 2) = *(short *)(param_1[9] + iVar2) + 2;
        *(short *)(param_1[9] + iVar2 + 4) =
             (short)((int)((0x30 - iVar4) + ((uint)(0x30 - iVar4 >> 2) >> 0x1d)) >> 3) + 1;
        if ((iVar4 * -0x80000000 + uVar1 >> 0x1f | uVar1 << 1) != uVar1) {
          *(short *)(param_1[9] + iVar2 + 4) = -*(short *)(param_1[9] + iVar2 + 4);
        }
        if (iVar4 < 0x30) {
          *(short *)(param_1[9] + iVar2 + 6) = (short)iVar4;
        }
        else {
          *(short *)(param_1[9] + iVar2 + 6) = 0x60 - (short)iVar4;
        }
        *(undefined2 *)(param_1[9] + iVar2 + 8) = 0;
        *(undefined2 *)(param_1[9] + iVar2 + 10) = 0;
        uVar3 = ov80_0222D63C(0,0);
        iVar4 = iVar4 + 1;
        *(undefined4 *)(param_1[9] + iVar2 + 0xc) = uVar3;
        sVar5 = sVar5 + 2;
        iVar2 = iVar2 + 0x10;
      } while (iVar4 < 0x60);
      func_0x0200b484(0x28,0xfffffff0,0,0x1c,1);
      SysTask_CreateOnMainQueue(0x222d645,param_1,0x1000);
      param_1[1] = param_1[1] + 1;
    }
  }
  else {
    if (iVar2 != 2) {
      return 0;
    }
    iVar2 = func_0x0200b5c0(1);
    if (iVar2 != 0) {
      param_1[4] = 1;
      ToggleBgLayer(3,0);
      func_0x0201bc8c(*(undefined4 *)*param_1,3,0,0);
      func_0x0201bc8c(*(undefined4 *)*param_1,3,3,0);
      param_1[1] = param_1[1] + 1;
    }
  }
  return 1;
}

