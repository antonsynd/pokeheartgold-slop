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
undefined4 ov07_0223197C(undefined4, undefined4);
undefined4 ov07_02231FA0(undefined4, undefined4);
undefined4 ov07_02222004(undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221C4A8(undefined4, undefined4);
undefined4 ov07_0221FAB0(undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_02224B14(undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 Heap_Free(undefined4);
undefined4 ov07_0221C470(undefined4);
undefined4 GF_AssertFail(void);
undefined4 ov07_02231FE4(undefined4, undefined4);
undefined4 ov07_0221BFC0(undefined4);

void ov07_02224BAC(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  
  iVar2 = ov07_022324D8(param_1,0x68,param_3,param_4,param_4);
  *(undefined4 *)(iVar2 + 0x60) = param_1;
  uVar3 = ov07_0221C4A8(param_1,0);
  *(undefined4 *)(iVar2 + 8) = uVar3;
  uVar1 = ov07_0221C4A8(param_1,1);
  *(undefined2 *)(iVar2 + 100) = uVar1;
  iVar4 = ov07_0221C4A8(param_1,2);
  ov07_02231FE4(param_1,iVar2 + 0x20);
  iVar5 = 0xff;
  if (iVar4 < 0x109) {
    if (0x101 < iVar4) {
      if (iVar4 == 0x102) {
        iVar5 = ov07_0221C468(param_1);
        goto LAB_02224c62;
      }
      if (iVar4 == 0x104) {
        iVar4 = ov07_0221FAB0(param_1);
        if (iVar4 == 1) {
          uVar3 = ov07_0221C468(param_1);
          iVar5 = ov07_0223197C(param_1,uVar3);
        }
        goto LAB_02224c62;
      }
      if (iVar4 == 0x108) {
        iVar5 = ov07_0221C470(param_1);
        goto LAB_02224c62;
      }
    }
  }
  else if (iVar4 == 0x110) {
    iVar4 = ov07_0221FAB0(param_1);
    if (iVar4 == 1) {
      uVar3 = ov07_0221C470(param_1);
      iVar5 = ov07_0223197C(param_1,uVar3);
    }
    goto LAB_02224c62;
  }
  GF_AssertFail();
LAB_02224c62:
  if (iVar5 != 0xff) {
    uVar3 = ov07_0221FA48(param_1,iVar5);
    *(undefined4 *)(iVar2 + 0x14) = uVar3;
    ov07_02231FA0(uVar3,iVar2 + 0x10);
    iVar4 = ov07_02222004(param_1,iVar5);
    if (iVar4 < 1) {
      *(short *)(iVar2 + 100) = -*(short *)(iVar2 + 100);
    }
    ov07_0221BFC0(param_1);
    uVar3 = ov07_0221C410(*(undefined4 *)(iVar2 + 0x60),0x2224b15,iVar2);
    ov07_02224B14(uVar3,iVar2);
    return;
  }
  Heap_Free(iVar2);
  return;
}

