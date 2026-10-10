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
undefined4 func_0x020182c4() __asm__("sub_020182C4");
undefined4 func_0x02018030() __asm__("sub_02018030");
undefined4 sub_020182E0();
undefined4 GF_DegreeToSinCosIdxNoWrap();
undefined4 func_0x020180bc() __asm__("sub_020180BC");
undefined4 func_0x020181b0() __asm__("sub_020181B0");
undefined4 func_0x020182a0() __asm__("sub_020182A0");
undefined4 func_0x020182a8() __asm__("sub_020182A8");
undefined4 func_0x020181d4() __asm__("sub_020181D4");
extern undefined ov91_02261BF8;
extern undefined ov91_02261BFE;
extern undefined ov91_02261C0A;
extern undefined ov91_02261D64;

void ov91_02260F50(int param_1,undefined4 param_2,undefined4 param_3,int param_4,int param_5,
                  undefined4 param_6,undefined4 param_7)

{
  undefined4 uVar1;
  undefined2 uVar2;
  uint uVar3;
  ushort *puVar4;
  int iVar5;
  int iVar6;
  undefined2 *puVar7;
  int iStack_28;
  
  iVar6 = param_1 + 0x168;
  uVar3 = 0;
  iVar5 = param_1;
  do {
    if (uVar3 == 0) {
      uVar2 = 0x24;
    }
    else if (uVar3 == 1) {
      uVar2 = 0x25;
    }
    else {
      uVar2 = *(undefined2 *)(&ov91_02261C0A + (param_4 + -1) * 2);
    }
    func_0x02018030(iVar6,param_3,uVar2,param_6);
    func_0x020181b0(iVar5,iVar6);
    func_0x020182a8(iVar5,0,0xfff9e000,0);
    func_0x020182c4(iVar5,0x1800,0x1800,0x1800);
    if (uVar3 == 1) {
      func_0x020182a0(iVar5,0);
    }
    if (uVar3 < 2) {
      sub_020182E0(iVar5,*(undefined2 *)(&ov91_02261D64 + param_5 * 2 + (param_4 + -1) * 8),1);
    }
    else {
      uVar1 = GF_DegreeToSinCosIdxNoWrap(0xb4);
      sub_020182E0(iVar5,uVar1,1);
    }
    uVar3 = uVar3 + 1;
    iVar6 = iVar6 + 0x10;
    iVar5 = iVar5 + 0x78;
  } while ((int)uVar3 < 3);
  iStack_28 = 0;
  iVar5 = param_1 + 0x198;
  puVar7 = (undefined2 *)&ov91_02261BF8;
  puVar4 = (ushort *)&ov91_02261BFE;
  do {
    func_0x020180bc(iVar5,param_1 + 0x168 + (uint)*puVar4 * 0x10,param_3,*puVar7,param_6,param_7);
    func_0x020181d4(param_1 + (uint)*puVar4 * 0x78,iVar5);
    puVar7 = puVar7 + 1;
    iStack_28 = iStack_28 + 1;
    puVar4 = puVar4 + 1;
    iVar5 = iVar5 + 0x14;
  } while (iStack_28 < 3);
  *(undefined4 *)(param_1 + 0x1d4) = 0x1000;
  return;
}

