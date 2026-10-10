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
undefined4 func_0x020c39d8() __asm__("sub_020C39D8");
undefined4 func_0x020be0a8() __asm__("sub_020BE0A8");
undefined4 ov91_02260334();
undefined4 func_0x020182c4() __asm__("sub_020182C4");
undefined4 func_0x02018030() __asm__("sub_02018030");
undefined4 func_0x020180bc() __asm__("sub_020180BC");
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 func_0x020181b0() __asm__("sub_020181B0");
undefined4 func_0x020182a0() __asm__("sub_020182A0");
undefined4 func_0x02018198() __asm__("sub_02018198");
undefined4 func_0x020182a8() __asm__("sub_020182A8");
undefined4 func_0x020be0e4() __asm__("sub_020BE0E4");
undefined4 func_0x020181d4() __asm__("sub_020181D4");
extern undefined ov91_0226274C;
extern undefined ov91_02261C04;
extern undefined ov91_022621AC;

void ov91_0225FF00(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  undefined *puVar6;
  undefined2 *puVar7;
  int iVar8;
  int iStack_28;
  undefined *puStack_24;
  int iStack_20;
  byte *pbStack_1c;
  undefined2 *puStack_18;
  
  func_0x020e5b44(param_1,0,0x230);
  puVar7 = (undefined2 *)&ov91_02261C04;
  iVar8 = 0;
  iVar3 = param_1 + 0x168;
  iVar4 = param_1;
  do {
    func_0x02018030(iVar3,param_2,*puVar7,param_3);
    func_0x020181b0(iVar4,iVar3);
    func_0x020182a0(iVar4,0);
    func_0x020182a8(iVar4,0,0xffede000,0);
    func_0x020182c4(iVar4,0x1800,0x1800,0x1800);
    iVar8 = iVar8 + 1;
    puVar7 = puVar7 + 1;
    iVar3 = iVar3 + 0x10;
    iVar4 = iVar4 + 0x78;
  } while (iVar8 < 3);
  iStack_28 = 0;
  puStack_18 = (undefined2 *)0x2261c1c;
  pbStack_1c = &ov91_0226274C;
  iStack_20 = param_1 + 0x198;
  puStack_24 = &ov91_022621AC;
  iVar4 = param_1;
  do {
    func_0x020180bc(iStack_20,param_1 + 0x168 + (uint)*pbStack_1c * 0x10,param_2,*puStack_18,param_3
                    ,param_4);
    func_0x02018198(iStack_20,0);
    uVar5 = 0;
    iVar3 = *(int *)(param_1 + (uint)*pbStack_1c * 0x10 + 0x170);
    if (iVar3 == 0) {
      iVar3 = 0;
    }
    else {
      iVar3 = iVar3 + 0x40;
    }
    if (iVar3 == 0) {
      bVar1 = true;
    }
    else {
      bVar1 = false;
    }
    while( true ) {
      if (bVar1) {
        iVar8 = 0;
      }
      else if ((iVar3 == 0) || (*(byte *)(iVar3 + 1) <= uVar5)) {
        iVar8 = 0;
      }
      else {
        iVar8 = iVar3 + (uint)*(ushort *)(iVar3 + 6);
        iVar8 = iVar8 + (uint)*(ushort *)(iVar8 + 2) + uVar5 * 0x10;
      }
      if (iVar8 == 0) break;
      func_0x020be0e4(*(undefined4 *)(iVar4 + 0x1a0),uVar5);
      uVar5 = uVar5 + 1;
    }
    iVar8 = 0;
    puVar6 = puStack_24;
    do {
      if (iVar3 == 0) {
        iVar2 = -1;
      }
      else {
        iVar2 = func_0x020c39d8(iVar3,puVar6);
      }
      if (iVar2 != -1) {
        func_0x020be0a8(*(undefined4 *)(iVar4 + 0x1a0));
      }
      iVar8 = iVar8 + 1;
      puVar6 = puVar6 + 0x10;
    } while (iVar8 < 0xf);
    iVar4 = iVar4 + 0x14;
    puStack_18 = puStack_18 + 1;
    pbStack_1c = pbStack_1c + 1;
    iStack_20 = iStack_20 + 0x14;
    puStack_24 = puStack_24 + 0xf0;
    iStack_28 = iStack_28 + 1;
  } while (iStack_28 < 6);
  func_0x020180bc(param_1 + 0x214,param_1 + 0x168,param_2,0x20,param_3,param_4);
  func_0x020181d4(param_1,param_1 + 0x214);
  *(undefined2 *)(param_1 + 0x22c) = 4;
  *(undefined2 *)(param_1 + 0x22e) = 0;
  ov91_02260334();
  func_0x020181d4(param_1 + 0x78,param_1 + 0x1e8);
  func_0x02018198(param_1 + 0x1e8,0);
  func_0x020182a0(param_1 + 0x78,1);
  *(undefined2 *)(param_1 + 0x210) = 4;
  return;
}

