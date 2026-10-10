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
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 func_0x020f21c0() __asm__("sub_020F21C0");
undefined4 MTRandom();
undefined4 ManagedSprite_SetPositionXY();
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 ManagedSprite_ResetSpriteAnimCtrlState();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 func_0x020f2104() __asm__("sub_020F2104");

void ov96_0220B1D8(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iStack_18;
  
  iVar4 = 0;
  iVar5 = 0;
  while( true ) {
    if (param_1[1] == 0) {
      param_1[1] = 1;
      *(short *)(param_1 + 4) = (short)param_3;
      *(short *)((int)param_1 + 0x12) = (short)param_4;
      uVar1 = MTRandom();
      if ((uVar1 & 7) == 0xfffffffc) {
        uVar1 = MTRandom();
        uVar2 = func_0x020f21c0(((uVar1 & 7) + 4) * 0x1000);
        uVar2 = func_0x020f24c8(uVar2,0x3f000000);
      }
      else {
        uVar1 = MTRandom();
        uVar2 = func_0x020f21c0(((uVar1 & 7) + 4) * 0x1000);
        uVar2 = func_0x020f1520(0x3f000000,uVar2);
      }
      uVar1 = iVar5 >> 0x1f;
      if ((iVar5 * -0x80000000 + uVar1 >> 0x1f | uVar1 << 1) == uVar1) {
        iStack_18 = 1;
      }
      else {
        iStack_18 = -1;
      }
      iVar3 = func_0x020f2104(uVar2);
      param_1[2] = iStack_18 * iVar3;
      uVar1 = MTRandom();
      if ((uVar1 & 7) == 0xfffffff8) {
        uVar1 = MTRandom();
        uVar2 = func_0x020f21c0(((uVar1 & 7) + 8) * 0x1000);
        func_0x020f24c8(uVar2,0x3f000000);
      }
      else {
        uVar1 = MTRandom();
        uVar2 = func_0x020f21c0(((uVar1 & 7) + 8) * 0x1000);
        func_0x020f1520(0x3f000000,uVar2);
      }
      uVar2 = func_0x020f2104();
      param_1[3] = uVar2;
      ManagedSprite_SetPositionXY(*param_1,param_3,param_4);
      ManagedSprite_ResetSpriteAnimCtrlState(*param_1);
      ManagedSprite_SetDrawFlag(*param_1,1);
      iVar4 = iVar4 + 1;
    }
    if (param_2 <= iVar4) break;
    iVar5 = iVar5 + 1;
    param_1 = param_1 + 5;
    if (0xf < iVar5) {
      return;
    }
  }
  return;
}

