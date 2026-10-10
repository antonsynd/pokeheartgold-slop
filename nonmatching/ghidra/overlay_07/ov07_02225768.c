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
undefined4 Pokepic_SetAttr(void *, int, int);
undefined4 GF_AssertFail(void);
undefined4 ov07_0221C468();
undefined4 ov07_0223197C();
undefined4 ov07_0221FAA0();
undefined4 ov07_02231A50();
undefined4 ov07_0221C4A8();
undefined4 ov07_0221C470();
undefined4 ov07_02232020();

void ov07_02225768(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 unaff_r6;
  short sStack_30;
  short sStack_2e;
  __asm__ volatile("movs %0, r6" : "=l"(unaff_r6) : : "cc");

  undefined1 auStack_2c [4];
  undefined1 auStack_28 [8];
  undefined *puStack_20;
  undefined4 uStack_14;

  uStack_14 = param_4;
  iVar2 = ov07_0221C4A8(param_1,0);
  if (iVar2 < 9) {
    if (1 < iVar2) {
      if (iVar2 == 2) {
        unaff_r6 = ov07_0221C468(param_1);
        goto LAB_022257cc;
      }
      if (iVar2 == 4) {
        uVar3 = ov07_0221C468(param_1);
        unaff_r6 = ov07_0223197C(param_1,uVar3);
        goto LAB_022257cc;
      }
      if (iVar2 == 8) {
        unaff_r6 = ov07_0221C470(param_1);
        goto LAB_022257cc;
      }
    }
  }
  else if (iVar2 == 0x10) {
    uVar3 = ov07_0221C470(param_1);
    unaff_r6 = ov07_0223197C(param_1,uVar3);
    goto LAB_022257cc;
  }
  GF_AssertFail();
LAB_022257cc:
  ov07_02231A50(param_1,unaff_r6,&sStack_30);
  ov07_02232020(param_1,iVar2,auStack_28,auStack_2c);
  sVar1 = ov07_0221FAA0(param_1,unaff_r6);
  Pokepic_SetAttr(puStack_20,0,(int)sStack_30);
  Pokepic_SetAttr(puStack_20,1,(int)sStack_2e + (int)sVar1);
  return;
}

