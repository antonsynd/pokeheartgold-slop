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
undefined4 func_0x020f2ba4(unsigned int, unsigned int) __asm__("sub_020F2BA4");
unsigned short LCRandom(void);
extern undefined ov87_021E8358;

void ov87_021E734C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  ushort extraout_r1;
  int iVar3;
  uint uVar4;
  ushort *puVar5;
  ushort *puVar6;
  uint uVar7;
  int iStack_28;
  ushort auStack_20 [4];
  undefined4 uStack_18;

  iVar3 = 0;
  puVar5 = auStack_20;
  uStack_18 = param_4;
  do {
    iVar3 = iVar3 + 1;
    *puVar5 = 0xff;
    puVar5 = puVar5 + 1;
  } while (iVar3 < 4);
  iVar1 = LCRandom();
  iVar3 = iVar1 >> 0x1f;
  uVar7 = 0;
  puVar5 = auStack_20;
  iStack_28 = param_1;
  do {
    if (uVar7 == (((uint)(iVar1 * 0x40000000 + iVar3) >> 0x1e | iVar3 << 2) - iVar3 & 0xffff)) {
      *(undefined2 *)(iStack_28 + 0x36a) = 0x5c;
    }
    else {
      do {
        uVar2 = LCRandom();
        func_0x020f2ba4(uVar2,0x17);
        *puVar5 = extraout_r1;
        uVar4 = 0;
        if (0 < (int)uVar7) {
          puVar6 = auStack_20;
          do {
            if (*puVar6 == *puVar5) break;
            uVar4 = uVar4 + 1;
            puVar6 = puVar6 + 1;
          } while ((int)uVar4 < (int)uVar7);
        }
      } while (uVar4 != uVar7);
      *(undefined2 *)(iStack_28 + 0x36a) = *(undefined2 *)(&ov87_021E8358 + (uint)*puVar5 * 2);
    }
    uVar7 = uVar7 + 1;
    iStack_28 = iStack_28 + 2;
    puVar5 = puVar5 + 1;
    if (3 < (int)uVar7) {
      return;
    }
  } while( true );
}

