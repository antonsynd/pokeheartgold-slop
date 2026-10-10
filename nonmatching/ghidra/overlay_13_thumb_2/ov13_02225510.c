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
undefined4 func_0x020e5bb0() __asm__("sub_020E5BB0");
undefined4 ov13_02225F14();
undefined4 func_0x020f2948() __asm__("sub_020F2948");
undefined4 ov13_022259C8();
undefined4 ov13_022256C8();
undefined4 func_0x020e5ad8() __asm__("sub_020E5AD8");

bool ov13_02225510(int param_1,undefined1 *param_2,uint param_3,undefined4 param_4,uint param_5)

{
  undefined1 uVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  undefined1 *puVar6;
  undefined1 *puVar7;
  uint uVar8;
  uint uVar9;
  undefined1 *puVar10;
  longlong lVar11;
  int iStack_19c;
  undefined4 uStack_178;
  undefined4 uStack_174;
  uint uStack_170;
  uint uStack_16c;
  undefined1 auStack_168 [8];
  undefined1 auStack_160 [8];
  undefined1 auStack_158 [320];
  undefined4 uStack_18;
  
  uStack_178 = 0xa6a6a6a6;
  uStack_174 = 0xa6a6a6a6;
  if (((param_3 & 7) == 0) && ((param_5 & 7) == 0)) {
    uVar2 = param_3 - 1 >> 3;
    if (uVar2 < 2) {
      return false;
    }
    uStack_18 = param_4;
    uVar3 = ov13_022259C8(auStack_158,param_4,param_5 << 3);
    puVar7 = auStack_168;
    iVar4 = 8;
    puVar6 = param_2;
    do {
      uVar1 = *puVar6;
      puVar6 = puVar6 + 1;
      *puVar7 = uVar1;
      puVar7 = puVar7 + 1;
      iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    func_0x020e5ad8(param_1,param_2 + 8,param_3 - 1);
    iStack_19c = 5;
    do {
      if (uVar2 != 0) {
        lVar11 = func_0x020f2948(uVar2,0,iStack_19c,iStack_19c >> 0x1f);
        uVar8 = uVar2;
        do {
          uVar9 = (uint)(lVar11 + (int)uVar8);
          uVar5 = (uint)((ulonglong)(lVar11 + (int)uVar8) >> 0x20);
          uStack_16c = (uVar9 & 0xff0000) >> 8 | (uVar9 & 0xff00) << 8 | uVar9 * 0x1000000 |
                       uVar9 >> 0x18;
          uStack_170 = uVar5 >> 0x18 |
                       uVar5 * 0x1000000 | (uVar5 & 0xff00) << 8 | (uVar5 & 0xff0000) >> 8;
          ov13_022256C8(auStack_168,&uStack_170,auStack_168);
          puVar7 = auStack_160;
          puVar10 = (undefined1 *)(param_1 + (uVar8 - 1) * 8);
          iVar4 = 8;
          puVar6 = puVar10;
          do {
            uVar1 = *puVar6;
            puVar6 = puVar6 + 1;
            *puVar7 = uVar1;
            puVar7 = puVar7 + 1;
            iVar4 = iVar4 + -1;
          } while (iVar4 != 0);
          ov13_02225F14(auStack_158,uVar3,auStack_168,auStack_168);
          puVar7 = auStack_160;
          iVar4 = 8;
          do {
            uVar1 = *puVar7;
            puVar7 = puVar7 + 1;
            *puVar10 = uVar1;
            puVar10 = puVar10 + 1;
            iVar4 = iVar4 + -1;
          } while (iVar4 != 0);
          uVar8 = uVar8 - 1;
        } while (0 < (int)uVar8);
      }
      iStack_19c = iStack_19c + -1;
    } while (-1 < iStack_19c);
    iVar4 = func_0x020e5bb0(&uStack_178,auStack_168,8);
    return iVar4 == 0;
  }
  return false;
}

