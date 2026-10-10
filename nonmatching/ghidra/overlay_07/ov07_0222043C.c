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
undefined4 sub_02015640(undefined4, undefined4);
undefined4 ov07_02231B90(undefined4, undefined4, undefined4);
undefined4 ov07_0221F9A8(undefined4, undefined4, undefined4);
undefined4 sub_02015628(undefined4, undefined4);
undefined4 ov07_022202D8(undefined4, undefined4, undefined4);

void ov07_0222043C(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,char param_6,int *param_7)

{
  int iVar1;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  undefined4 uStack_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  
  iStack_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  switch(param_5) {
  case 1:
    sub_02015640(param_2,&iStack_20);
    iVar1 = (int)param_6;
    iStack_20 = iVar1 * iStack_20;
    iStack_1c = iVar1 * iStack_1c;
    iStack_18 = iStack_18 * iVar1;
    break;
  case 2:
    iStack_20 = 0;
    iStack_1c = param_6 * 0xc80;
    iStack_18 = 0;
    break;
  case 3:
    ov07_02231B90(param_1,param_4,&iStack_20);
    break;
  case 4:
    ov07_02231B90(param_1,param_3,&iStack_20);
    break;
  case 5:
    iStack_30 = 0;
    iStack_2c = 0;
    iStack_28 = 0;
    uStack_24 = 0;
    ov07_0221F9A8(param_1,&iStack_30,4);
    iStack_20 = iStack_30;
    iStack_1c = iStack_2c;
    iStack_18 = iStack_28;
    ov07_022202D8(uStack_24,(int)param_6,&iStack_20);
  }
  iStack_20 = iStack_20 - *param_7;
  iStack_1c = iStack_1c - param_7[1];
  iStack_18 = iStack_18 - param_7[2];
  sub_02015628(param_2,&iStack_20);
  return;
}

