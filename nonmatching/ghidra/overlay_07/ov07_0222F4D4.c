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
undefined4 ManagedSprite_SetDrawFlag(undefined4, undefined4);
undefined4 ov07_0222260C(undefined4);
undefined4 func_0x0200e024(undefined4, undefined4, undefined4) __asm__("sub_0200E024");
undefined4 func_0x020f24c8(undefined4, undefined4) __asm__("sub_020F24C8");
undefined4 ov07_02222558(undefined4);
undefined4 ov07_02222590(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_022226FC(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_02222644(undefined4, undefined4, undefined4);

undefined4 ov07_0222F4D4(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uStack_14;
  undefined4 uStack_10;

  iVar1 = *(int *)(param_1 + 0x94);
  uVar2 = 0;
  if (iVar1 == 0) {
    ov07_0222260C(param_1 + 0x28);
    ov07_02222644(param_1 + 0x28,&uStack_10,&uStack_14);
    if (*(int *)(param_1 + 200) == 1) {
      uStack_10 = func_0x020f24c8(0,uStack_10);
    }
    func_0x0200e024(*(undefined4 *)(param_1 + 0x18),uStack_10,uStack_14);
    ov07_022226FC(*(undefined4 *)(param_1 + 0x18),(int)(short)*(undefined4 *)(param_1 + 0x14),
                  (int)(short)*(undefined4 *)(param_1 + 0x10),*(undefined4 *)(param_1 + 0x3c),0);
    *(int *)(param_1 + 0x98) = *(int *)(param_1 + 0x98) + -1;
    if (*(int *)(param_1 + 0x98) < 0) {
      *(int *)(param_1 + 0x94) = *(int *)(param_1 + 0x94) + 1;
      ov07_02222590(param_1 + 0x28,10,1,0x14,0x14,10,4);
    }
  }
  else if (iVar1 == 1) {
    ov07_0222260C(param_1 + 0x28);
    iVar1 = ov07_02222558(param_1 + 0x4c);
    if (iVar1 == 0) {
      *(int *)(param_1 + 0x94) = *(int *)(param_1 + 0x94) + 1;
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x20),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x18),0);
      uVar2 = 1;
    }
    else {
      *(undefined2 *)(param_1 + 0x28) = *(undefined2 *)(param_1 + 0x4c);
      ov07_02222644(param_1 + 0x28,&uStack_10,&uStack_14);
      if (*(int *)(param_1 + 200) == 1) {
        uStack_10 = func_0x020f24c8(0,uStack_10);
      }
      func_0x0200e024(*(undefined4 *)(param_1 + 0x18),uStack_10,uStack_14);
      ov07_022226FC(*(undefined4 *)(param_1 + 0x18),(int)(short)*(undefined4 *)(param_1 + 0x14),
                    (int)(short)*(undefined4 *)(param_1 + 0x10),*(undefined4 *)(param_1 + 0x3c),0);
    }
  }
  else if (iVar1 == 2) {
    uVar2 = 1;
  }
  return uVar2;
}

