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
undefined4 ov96_02215944();
undefined4 ov96_022186CC();
undefined4 VEC_Mag(void *);
undefined4 VEC_Add(void *, void *, void *);
undefined4 ov96_02218784();
undefined4 VEC_MultAdd(int, void *, void *, void *);
undefined4 VEC_Subtract(void *, void *, void *);
undefined4 GF_AssertFail(void);
undefined4 VEC_Normalize(void *, void *);

void ov96_022187A8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  int iStack_48;
  int iStack_44;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  VEC_Subtract((undefined *)(param_1 + 0x20),(undefined *)(param_1 + 0x2c),(undefined *)&uStack_24);
  iVar1 = VEC_Mag((undefined *)&uStack_24);
  if (*(int *)(param_1 + 0x60) << 4 < 0) {
    if (*(int *)(param_1 + 0x18) == 0) {
      GF_AssertFail();
    }
    if ((*(int *)(param_1 + 0x18) == 6) || (*(int *)(param_1 + 0x18) == 9)) {
      iVar3 = 0x1000;
    }
    else {
      iVar3 = 0xb33;
    }
    if (*(char *)(param_1 + 0x58) < '\x01') {
      uStack_60 = 0;
      uStack_5c = 0;
      uStack_54 = 0;
      uStack_58 = 0;
      uStack_50 = 0;
      uStack_4c = 0;
      VEC_Normalize((undefined *)(param_1 + 0x44),(undefined *)&uStack_54);
      VEC_MultAdd(iVar3,(undefined *)&uStack_54,(undefined *)&uStack_60,(undefined *)&iStack_48);
      if (iStack_48 < 0) {
        iStack_48 = -iStack_48;
      }
      if (iStack_44 < 0) {
        iStack_44 = -iStack_44;
      }
      ov96_02215944(param_1 + 0x44,iStack_48);
    }
    VEC_Add((undefined *)(param_1 + 0x2c),(undefined *)(param_1 + 0x44),
            (undefined *)(param_1 + 0x2c));
    *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x28) = *(undefined4 *)(param_1 + 0x34);
    if (*(int *)(param_1 + 0x44) != 0) {
      return;
    }
    if (*(int *)(param_1 + 0x48) != 0) {
      return;
    }
    ov96_02218784(param_2,(*(uint *)(param_1 + 0x60) & 0x3fffff) >> 0x14);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(uint *)(param_1 + 0x60) = *(uint *)(param_1 + 0x60) & 0xf7ffffff;
  }
  if (((-1 < *(int *)(param_1 + 0x60) << 3) && (*(char *)(param_1 + 0x58) < '\x01')) && (0 < iVar1))
  {
    VEC_Normalize((undefined *)&uStack_24,(undefined *)&uStack_30);
    if (-1 < *(int *)(param_1 + 0x60) << 4) {
      uVar2 = ov96_022186CC(&uStack_30);
      *(uint *)(param_1 + 0x60) = (uVar2 & 0xf) << 0x10 | *(uint *)(param_1 + 0x60) & 0xfff0ffff;
    }
    uVar2 = *(uint *)(*(int *)(*(int *)(param_1 + 4) + 4) + 0xc);
    if (*(int *)(*(int *)(param_1 + 4) + 8) < 0x1e000) {
      uVar2 = uVar2 * 0x800 + 0x800 >> 0xc |
              ((((int)uVar2 >> 0x1f) << 0xb | uVar2 >> 0x15) + (uint)(0xfffff7ff < uVar2 * 0x800)) *
              0x100000;
    }
    if ((int)uVar2 < iVar1) {
      uStack_6c = 0;
      uStack_68 = 0;
      uStack_64 = 0;
      VEC_MultAdd(uVar2,(undefined *)&uStack_30,(undefined *)&uStack_6c,(undefined *)&uStack_3c);
    }
    else {
      uStack_3c = uStack_24;
      uStack_38 = uStack_20;
      uStack_34 = uStack_1c;
    }
    VEC_Add((undefined *)(param_1 + 0x2c),(undefined *)&uStack_3c,(undefined *)(param_1 + 0x2c));
    *(undefined4 *)(param_1 + 0x38) = uStack_30;
    *(undefined4 *)(param_1 + 0x3c) = uStack_2c;
    *(undefined4 *)(param_1 + 0x40) = uStack_28;
  }
  return;
}

