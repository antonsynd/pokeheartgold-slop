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
undefined4 ov96_02219174();
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 ov96_02217890();
undefined4 GF_AssertFail();
undefined4 ov96_0221785C();
undefined4 ov96_02215958();
undefined4 ov96_02217868();
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 ov96_021E8228();
undefined4 func_0x020cd224() __asm__("sub_020CD224");
undefined4 func_0x020f22dc() __asm__("sub_020F22DC");

undefined4 ov96_022178A0(int param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  bool bVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;

  uVar5 = **(undefined4 **)(param_2[1] + 4);
  uVar4 = (*(undefined4 **)(param_2[1] + 4))[1];
  iVar1 = ov96_0221785C(*(undefined4 *)(param_1 + 0x14),param_2[5]);
  if (iVar1 != 0) {
    if (param_2[5] == 6) {
      uVar5 = func_0x020f2178(uVar5);
      func_0x020f22dc(0x40400000,uVar5);
      uVar5 = func_0x020f2104();
      uVar4 = func_0x020f2178(uVar4);
      func_0x020f22dc(0x40000000,uVar4);
      uVar4 = func_0x020f2104();
      uVar3 = (param_2[0x18] & 0xfff) + 1;
      if (200 < uVar3) {
        uVar3 = 200;
      }
      param_2[0x18] = param_2[0x18] & 0xfffff000 | uVar3 & 0xfff;
      ov96_021E8228(*param_2,(param_2[0x18] & 0x3fffff) >> 0x14,(param_2[0x18] & 0xffffff) >> 0x16,3
                    ,1);
      ov96_021E8228(*param_2,(param_2[0x18] & 0x3fffff) >> 0x14,(param_2[0x18] & 0xffffff) >> 0x16,4
                    ,1);
    }
    else if (param_2[5] == 0xb) {
      uVar5 = *(undefined4 *)(*(int *)(param_2[1] + 4) + 0x10);
      uVar4 = *(undefined4 *)(*(int *)(param_2[1] + 4) + 0x14);
      uVar3 = (param_2[0x18] & 0xfff) + 2;
      if (200 < uVar3) {
        uVar3 = 200;
      }
      param_2[0x18] = param_2[0x18] & 0xfffff000 | uVar3 & 0xfff;
      ov96_021E8228(*param_2,(param_2[0x18] & 0x3fffff) >> 0x14,(param_2[0x18] & 0xffffff) >> 0x16,3
                    ,1,param_3,param_4);
      ov96_021E8228(*param_2,(param_2[0x18] & 0x3fffff) >> 0x14,(param_2[0x18] & 0xffffff) >> 0x16,4
                    ,1);
    }
    else {
      uVar5 = 0x3000;
    }
    func_0x020cd224(uVar5,param_3,param_1 + 0x44,param_1 + 0x44);
    ov96_02215958(param_1 + 0x44,0xc000);
    ov96_02217868(param_2,param_3);
    iVar1 = ov96_02217890(param_2[5]);
    if (iVar1 != 0) {
      *(undefined1 *)(param_1 + 0x5d) = 4;
      *(undefined1 *)((int)param_2 + 0x5d) = 4;
      ov96_02219174(param_1,uVar4);
    }
    if ((*(int *)(param_1 + 0x10) == 0) || (iVar1 = ov96_02217890(param_2[5]), iVar1 != 0)) {
      *(undefined4 **)(param_1 + 0x10) = param_2;
      iVar1 = param_2[4];
      if ((iVar1 != 0) && (iVar1 != param_1)) {
        *(int *)(param_1 + 0x10) = iVar1;
      }
    }
    *(uint *)(param_1 + 0x60) = *(uint *)(param_1 + 0x60) | 0x8000000;
    *(undefined4 *)(param_1 + 0x18) = param_2[5];
    iVar1 = ov96_02217890(param_2[5]);
    uVar3 = *(uint *)(param_1 + 0x60);
    if (iVar1 == 0) {
      *(uint *)(param_1 + 0x60) = uVar3 & 0x7fffffff | 0x80000000;
    }
    else {
      if ((uVar3 & 0xffff) >> 0xe != 2) {
        if (param_2[5] == 6) {
          *(uint *)(param_1 + 0x60) = uVar3 & 0xffff3fff | 0x4000;
        }
        else if (param_2[5] == 0xb) {
          *(uint *)(param_1 + 0x60) = uVar3 & 0xffff3fff | 0x8000;
        }
      }
      uVar3 = (param_2[0x18] & 0x3fffff) >> 0x14;
      if (uVar3 < (*(uint *)(param_1 + 0x60) & 0x3fffff) >> 0x14) {
        uVar3 = uVar3 + 1;
      }
      *(uint *)(param_1 + 0x60) = (uVar3 & 3) << 0xc | *(uint *)(param_1 + 0x60) & 0xffffcfff;
      *(undefined4 *)(param_1 + 100) = 4;
    }
    bVar2 = false;
    if ((param_2[5] != 3) && (param_2[5] != 4)) {
      bVar2 = true;
    }
    if (!bVar2) {
      GF_AssertFail();
    }
    bVar2 = true;
    uVar3 = *(int *)(param_1 + 0x14) - 3;
    if ((uVar3 < 9) && ((1 << (uVar3 & 0xff) & 0x103U) != 0)) {
      bVar2 = false;
    }
    if (!bVar2) {
      GF_AssertFail();
    }
    return 1;
  }
  return 0;
}

