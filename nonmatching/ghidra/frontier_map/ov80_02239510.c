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
undefined4 GF_AssertFail();
undefined4 sub_02096868();
undefined4 ov80_02239914();
undefined4 func_0x022280b8() __asm__("sub_022280B8");
undefined4 func_0x02229200() __asm__("sub_02229200");
undefined4 func_0x0222903c() __asm__("sub_0222903C");

undefined4 ov80_02239510(int param_1,undefined2 *param_2,int param_3)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined2 uStack_20;
  undefined2 uStack_1e;
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  ushort uStack_18;
  undefined2 uStack_16;

  piVar1 = (int *)sub_02096868(*(undefined4 *)(param_1 + 8));
  if (param_3 == -1) {
    param_3 = 0;
    do {
      if (*piVar1 == 0) break;
      param_3 = param_3 + 1;
      piVar1 = piVar1 + 0xf;
    } while (param_3 < 0x20);
    if (param_3 == 0x20) {
      GF_AssertFail();
    }
  }
  uStack_20 = param_2[3];
  uStack_1e = param_2[4];
  uStack_1c = param_2[2];
  uStack_1a = param_2[1];
  uStack_18 = (ushort)*(byte *)(param_2 + 5);
  uStack_16 = *param_2;
  uVar2 = func_0x022280b8(*(undefined4 *)(param_1 + 0x14),&uStack_20);
  uVar3 = func_0x0222903c(*(undefined4 *)(param_1 + 0x20),uVar2,0,0x65);
  func_0x02229200(uVar3,*(undefined1 *)((int)param_2 + 0xb));
  ov80_02239914(*(undefined4 *)(param_1 + 8),param_3,uVar2,uVar3,param_2);
  return uVar2;
}

