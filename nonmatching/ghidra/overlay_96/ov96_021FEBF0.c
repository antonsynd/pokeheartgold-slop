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
undefined4 ov96_021EB588();
undefined4 ov96_021EB52C();
undefined4 ov96_021EAB38();
undefined4 ov96_021EB564();
undefined4 ov96_02200900();
undefined4 ov96_021EB594();
undefined4 ov96_021FFE38();
undefined4 ov96_022006BC();

void ov96_021FEBF0(undefined4 param_1,int param_2,int *param_3,undefined4 param_4,byte param_5,
                  int param_6,int param_7,int param_8)

{
  int iVar1;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uStack_14 = param_4;
  switch(*(undefined1 *)(param_2 + 0xa0)) {
  case 0:
    ov96_021EB588(*(undefined4 *)(param_2 + 0x74),param_3);
    ov96_021EB588(*(undefined4 *)(param_2 + 0x70),param_3);
    ov96_021EB52C(*(undefined4 *)(param_2 + 0x70),1,1);
    ov96_021EB564(*(undefined4 *)(param_2 + 0x70),8);
    ov96_021EB52C(*(undefined4 *)(param_2 + 0x74),1,1);
    ov96_021EAB38(*(undefined4 *)(param_2 + (uint)param_5 * 4),0);
    *(undefined4 *)(param_2 + 200) = 1;
    *(undefined1 *)(param_2 + 0xa1) = 0;
    ov96_021FFE38((int)(*param_3 + ((uint)(*param_3 >> 0xb) >> 0x14)) >> 0xc,0x8b4,param_8);
    *(char *)(param_2 + 0xa0) = *(char *)(param_2 + 0xa0) + '\x01';
    return;
  case 1:
    iVar1 = ov96_021EB594(*(undefined4 *)(param_2 + 0x74));
    uStack_18 = *(undefined4 *)(iVar1 + 8);
    iStack_1c = *(int *)(iVar1 + 4) + -0x14000;
    iStack_20 = *param_3;
    ov96_021EB588(*(undefined4 *)(param_2 + 0x74),&iStack_20);
    ov96_021EB588(*(undefined4 *)(param_2 + 0x70),param_3);
    *(char *)(param_2 + 0xa1) = *(char *)(param_2 + 0xa1) + '\x01';
    if (0x13 < *(byte *)(param_2 + 0xa1)) {
      *(char *)(param_2 + 0xa0) = *(char *)(param_2 + 0xa0) + '\x01';
      return;
    }
    break;
  case 2:
    if (param_8 == 0) {
      if (param_7 == 0) {
        *(char *)(param_2 + 0xa0) = *(char *)(param_2 + 0xa0) + '\x01';
      }
      else {
        iVar1 = ov96_02200900(param_1,param_4);
        if (iVar1 != 0) {
          *(undefined1 *)(param_6 + 8) = 1;
          *(char *)(param_2 + 0xa0) = *(char *)(param_2 + 0xa0) + '\x01';
          return;
        }
      }
    }
    else {
      iVar1 = ov96_022006BC(param_1,param_5);
      if (iVar1 != 0) {
        *(undefined1 *)(param_6 + 8) = 1;
        *(char *)(param_2 + 0xa0) = *(char *)(param_2 + 0xa0) + '\x01';
        return;
      }
    }
  }
  return;
}

