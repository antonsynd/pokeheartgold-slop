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
undefined4 ov13_02222948();
undefined4 ov13_02222A9C();
extern undefined ov13_02245A14;

undefined4 ov13_022216E0(uint *param_1)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint *puVar5;
  int iVar6;
  uint uStack_20;
  undefined4 uStack_1c;

  uStack_20 = *param_1;
  iVar4 = 0;
  uStack_1c = 0;
  if (uStack_20 == 0) {
    return 5;
  }
  if (0x40 < uStack_20) {
    uStack_20 = 0x40;
  }
  iVar6 = 0;
  if (0 < (int)uStack_20) {
    puVar5 = param_1 + 2;
    do {
      if ((param_1[0x15] & 1) != 0) {
        uVar1 = ov13_02222A9C(&ov13_02245A14);
        if (param_1[1] == uVar1) {
          uVar2 = ov13_02222A9C(&ov13_02245A14);
          iVar3 = ov13_02222948(puVar5,&ov13_02245A14,uVar2);
          if (iVar3 == 0) {
            iVar4 = iVar4 + 1;
          }
        }
      }
      iVar6 = iVar6 + 1;
      param_1 = param_1 + 0x15;
      puVar5 = puVar5 + 0x15;
    } while (iVar6 < (int)uStack_20);
  }
  if (1 < iVar4) {
    uStack_1c = 4;
  }
  if (iVar4 == 0) {
    uStack_1c = 5;
  }
  return uStack_1c;
}

