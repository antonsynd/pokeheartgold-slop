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
undefined4 VEC_Mag(void *);
undefined4 VEC_Add(void *, void *, void *);
undefined4 VEC_MultAdd(int, void *, void *, void *);
undefined4 ov96_0220D6CC();
undefined4 _s32_div_f();
undefined4 VEC_Normalize(void *, void *);
undefined4 VEC_Subtract(void *, void *, void *);
undefined4 ov96_0220E960();

void ov96_0220D744(int param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  int iStack_64;
  int iStack_60;
  int iStack_58;
  int iStack_54;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
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
  undefined4 uStack_14;
  
  if (*(int *)(param_1 + 0xc) != 0) {
    VEC_Subtract((undefined *)(param_1 + 0x10),(undefined *)(param_1 + 0x1c),(undefined *)&uStack_1c
                );
    iVar1 = VEC_Mag((undefined *)&uStack_1c);
    uVar3 = *(uint *)(param_1 + 0x40);
    *(uint *)(param_1 + 0x40) = (uint)(0 < iVar1) << 0x1c | uVar3 & 0xefffffff;
    if ((int)(uVar3 << 5) < 0) {
      uStack_4c = 0;
      uStack_48 = 0;
      uStack_40 = 0;
      uStack_44 = 0;
      uStack_3c = 0;
      uStack_38 = 0;
      VEC_Normalize((undefined *)(param_1 + 0x34),(undefined *)&uStack_40);
      VEC_MultAdd(0xccd,(undefined *)&uStack_40,(undefined *)&uStack_4c,(undefined *)&iStack_58);
      if (iStack_58 < 0) {
        iStack_58 = -iStack_58;
      }
      if (iStack_54 < 0) {
        iStack_54 = -iStack_54;
      }
      if (*(int *)(param_1 + 0x40) << 4 < 0) {
        iVar2 = _s32_div_f(*(int *)(*(int *)(param_1 + 8) + 4),100);
        VEC_Normalize((undefined *)&uStack_1c,(undefined *)&uStack_28);
        VEC_MultAdd(iVar2,(undefined *)(param_1 + 0x28),(undefined *)&uStack_4c,
                    (undefined *)&iStack_64);
        if (iStack_64 < 0) {
          iStack_64 = -iStack_64;
        }
        iStack_58 = iStack_58 + iStack_64;
        if (iStack_60 < 0) {
          iStack_60 = -iStack_60;
        }
        iStack_54 = iStack_54 + iStack_60;
      }
      ov96_0220E960(param_1 + 0x34,iStack_58,iStack_54);
      VEC_Add((undefined *)(param_1 + 0x1c),(undefined *)(param_1 + 0x34),
              (undefined *)(param_1 + 0x1c));
      *(undefined4 *)(param_1 + 0x10) = *(undefined4 *)(param_1 + 0x1c);
      *(undefined4 *)(param_1 + 0x14) = *(undefined4 *)(param_1 + 0x20);
      *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_1 + 0x24);
      if (*(int *)(param_1 + 0x34) != 0) {
        return;
      }
      if (*(int *)(param_1 + 0x38) != 0) {
        return;
      }
      *(uint *)(param_1 + 0x40) = *(uint *)(param_1 + 0x40) & 0xfbffffff;
    }
    if (*(int *)(param_1 + 0x40) << 3 < 0) {
      VEC_Normalize((undefined *)&uStack_1c,(undefined *)&uStack_28);
      if (-1 < *(int *)(param_1 + 0x40) << 5) {
        uVar3 = ov96_0220D6CC(&uStack_28);
        *(uint *)(param_1 + 0x40) = (uVar3 & 0xf) << 0x14 | *(uint *)(param_1 + 0x40) & 0xff0fffff;
      }
      iVar2 = *(int *)(*(int *)(param_1 + 8) + 8);
      if (iVar2 < iVar1) {
        uStack_70 = 0;
        uStack_6c = 0;
        uStack_68 = 0;
        VEC_MultAdd(iVar2,(undefined *)&uStack_28,(undefined *)&uStack_70,(undefined *)&uStack_34);
      }
      else {
        uStack_34 = uStack_1c;
        uStack_30 = uStack_18;
        uStack_2c = uStack_14;
      }
      VEC_Add((undefined *)(param_1 + 0x1c),(undefined *)&uStack_34,(undefined *)(param_1 + 0x1c));
      *(undefined4 *)(param_1 + 0x28) = uStack_28;
      *(undefined4 *)(param_1 + 0x2c) = uStack_24;
      *(undefined4 *)(param_1 + 0x30) = uStack_20;
    }
  }
  return;
}

