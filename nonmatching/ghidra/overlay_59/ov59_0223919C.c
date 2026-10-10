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
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 Sprite_GetPositionXY();
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 Heap_Alloc();
undefined4 func_0x020ccba0() __asm__("sub_020CCBA0");
undefined4 SysTask_CreateOnMainQueue();

void ov59_0223919C(undefined4 *param_1,int param_2,int param_3)

{
  short sVar1;
  int *piVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  short sStack_18;
  short sStack_16;
  
  piVar2 = (int *)Heap_Alloc(*param_1,0x20);
  func_0x020d4994(piVar2,0,0x20);
  *piVar2 = (int)param_1;
  *(undefined1 *)((int)piVar2 + 7) = *(undefined1 *)((int)param_1 + 0x4d);
  if (param_2 == 0) {
    iVar3 = param_1[*(byte *)((int)param_1 + 0x4d) + 0x97];
  }
  else {
    iVar3 = param_1[0x96];
  }
  piVar2[7] = iVar3;
  Sprite_GetPositionXY(piVar2[7],&sStack_16,&sStack_18);
  sVar1 = (short)param_2;
  if (param_3 == 0) {
    *(short *)(piVar2 + 2) = sVar1 * 4 + 0xc0;
    sVar1 = sVar1 * -10 + 0x60;
  }
  else {
    *(short *)(piVar2 + 2) =
         *(short *)((uint)*(byte *)((int)piVar2 + 7) * 4 + 0x223c6c4) + sVar1 * 4;
    sVar1 = *(short *)((uint)*(byte *)((int)piVar2 + 7) * 4 + 0x223c6c6) + sVar1 * -10;
  }
  *(short *)((int)piVar2 + 10) = sVar1;
  iVar7 = ((int)(short)piVar2[2] - (int)sStack_16) * 0x10000 >> 0x10;
  iVar8 = ((int)*(short *)((int)piVar2 + 10) - (int)sStack_18) * 0x10000 >> 0x10;
  iVar3 = iVar8;
  if (iVar8 < 0) {
    iVar3 = -iVar8;
  }
  iVar6 = iVar7;
  if (iVar7 < 0) {
    iVar6 = -iVar7;
  }
  if (iVar6 < iVar3) {
    iVar3 = iVar8;
    if (iVar8 < 0) {
      iVar3 = -iVar8;
    }
    *(char *)((int)piVar2 + 5) = (char)((int)(iVar3 + ((uint)(iVar3 >> 2) >> 0x1d)) >> 3);
  }
  else {
    iVar3 = iVar7;
    if (iVar7 < 0) {
      iVar3 = -iVar7;
    }
    *(char *)((int)piVar2 + 5) = (char)((int)(iVar3 + ((uint)(iVar3 >> 2) >> 0x1d)) >> 3);
  }
  iVar3 = (int)sStack_16;
  if (iVar3 < 1) {
    uVar4 = func_0x020f2178(iVar3 << 0xc);
    func_0x020f24c8(uVar4,0x3f000000);
  }
  else {
    uVar4 = func_0x020f2178(iVar3 << 0xc);
    func_0x020f1520(0x3f000000,uVar4);
  }
  iVar3 = func_0x020f2104();
  piVar2[5] = iVar3;
  iVar3 = (int)sStack_18;
  if (iVar3 < 1) {
    uVar4 = func_0x020f2178(iVar3 << 0xc);
    func_0x020f24c8(uVar4,0x3f000000);
  }
  else {
    uVar4 = func_0x020f2178(iVar3 << 0xc);
    func_0x020f1520(0x3f000000,uVar4);
  }
  iVar3 = func_0x020f2104();
  piVar2[6] = iVar3;
  *(undefined1 *)((int)piVar2 + 6) = 0;
  if (*(byte *)((int)piVar2 + 5) == 0) {
    uVar4 = func_0x020f2178(0);
    uStack_1c = func_0x020f24c8(uVar4,0x3f000000);
  }
  else {
    uVar4 = func_0x020f2178((uint)*(byte *)((int)piVar2 + 5) << 0xc);
    uStack_1c = func_0x020f1520(0x3f000000,uVar4);
  }
  if (iVar7 < 1) {
    uVar4 = func_0x020f2178(iVar7 << 0xc);
    func_0x020f24c8(uVar4,0x3f000000);
  }
  else {
    uVar4 = func_0x020f2178(iVar7 << 0xc);
    func_0x020f1520(0x3f000000,uVar4);
  }
  uVar4 = func_0x020f2104();
  uVar5 = func_0x020f2104(uStack_1c);
  iVar3 = func_0x020ccba0(uVar4,uVar5);
  piVar2[3] = iVar3;
  if (*(byte *)((int)piVar2 + 5) == 0) {
    uVar4 = func_0x020f2178(0);
    uStack_20 = func_0x020f24c8(uVar4,0x3f000000);
  }
  else {
    uVar4 = func_0x020f2178((uint)*(byte *)((int)piVar2 + 5) << 0xc);
    uStack_20 = func_0x020f1520(0x3f000000,uVar4);
  }
  if (iVar8 < 1) {
    uVar4 = func_0x020f2178(iVar8 << 0xc);
    func_0x020f24c8(uVar4,0x3f000000);
  }
  else {
    uVar4 = func_0x020f2178(iVar8 << 0xc);
    func_0x020f1520(0x3f000000,uVar4);
  }
  uVar4 = func_0x020f2104();
  uVar5 = func_0x020f2104(uStack_20);
  iVar3 = func_0x020ccba0(uVar4,uVar5);
  piVar2[4] = iVar3;
  SysTask_CreateOnMainQueue(0x2239c91,piVar2,0);
  *(char *)(param_1 + 0x14) = *(char *)(param_1 + 0x14) + '\x01';
  return;
}

