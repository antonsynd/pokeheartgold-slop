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
undefined4 sub_02015720(undefined4, undefined4);
undefined4 ov07_02221664(undefined4);
undefined4 sub_02015708(undefined4, undefined4);
undefined4 ov07_02231B90(undefined4, undefined4, undefined4);
undefined4 ov07_022217A4(undefined4, undefined4);
undefined4 func_0x020f2998(undefined4, undefined4) __asm__("sub_020F2998");

undefined4
ov07_02221AE4(undefined4 param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  int iStack_38;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;
  
  iStack_38 = 0;
  iStack_34 = 0;
  iStack_30 = 0;
  uStack_18 = param_4;
  ov07_022217A4(param_2,&iStack_2c);
  uVar1 = ov07_02221664(param_2);
  *(undefined1 *)(param_2 + 2) = uVar1;
  if (iStack_28 == 1) {
    *(undefined1 *)(param_2 + 2) = 1;
  }
  switch(iStack_2c) {
  case 0:
    sub_02015720(param_1,&iStack_38);
    iStack_38 = iStack_38 * *(char *)(param_2 + 2);
    iStack_34 = iStack_34 * *(char *)(param_2 + 2);
    iStack_30 = iStack_30 * *(char *)(param_2 + 2);
    break;
  case 1:
    iStack_38 = iStack_24 * *(char *)(param_2 + 2);
    iStack_34 = iStack_20 * *(char *)(param_2 + 2);
    iStack_30 = iStack_1c * *(char *)(param_2 + 2);
    break;
  case 2:
    ov07_02231B90(*param_2,param_2[9],&iStack_38);
    break;
  case 3:
    ov07_02231B90(*param_2,param_2[10],&iStack_38);
    break;
  case 4:
    ov07_02231B90(*param_2,param_2[10],&iStack_38);
    iStack_38 = func_0x020f2998(iStack_24 * iStack_38,iStack_20);
    iStack_34 = func_0x020f2998(iStack_24 * iStack_34,iStack_20);
    iStack_30 = func_0x020f2998(iStack_24 * iStack_30,iStack_20);
  }
  iStack_38 = iStack_38 - param_2[0xb];
  iStack_34 = iStack_34 - param_2[0xc];
  iStack_30 = iStack_30 - param_2[0xd];
  sub_02015708(param_1,&iStack_38);
  return 1;
}

