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
undefined4 GF_AssertFail(void);
undefined4 ov96_02218578();
undefined4 ov96_02218EB8();
undefined4 ov96_02218F18();
undefined4 ov96_022187A8();
undefined4 ov96_02218DF8();
undefined4 ov96_02218A50();
undefined4 ov96_02218F58();
undefined4 ov96_02219030();
undefined4 ov96_02218934();
undefined4 ov96_02218AF0();
undefined4 ov96_02218FD4();

void ov96_02218B1C(undefined4 *param_1,undefined *param_2,undefined4 param_3,undefined4 *param_4)

{
  int iVar1;

  if (0 < *(char *)((int)param_1 + 0x5d)) {
    param_4 = (undefined4 *)(*(char *)((int)param_1 + 0x5d) + -1);
    *(char *)((int)param_1 + 0x5d) = (char)param_4;
    if ('\0' < *(char *)((int)param_1 + 0x5d)) {
      return;
    }
  }
  switch(param_1[5]) {
  default:
    ov96_022187A8((int)param_1,param_2,0x5d,param_4);
    break;
  case 5:
  case 7:
  case 8:
  case 10:
  case 0xb:
  case 0xc:
    break;
  case 6:
    ov96_02218F18((int)param_1);
  }
  switch(param_1[5]) {
  default:
    GF_AssertFail();
    break;
  case 1:
    iVar1 = ov96_02218934((int)param_1);
    if (iVar1 == 0) {
      iVar1 = param_1[0x18];
      if (-1 < iVar1 << 4) {
        if (iVar1 << 2 < 0) {
          ov96_02218F58(param_1);
        }
        else if (iVar1 << 1 < 0) {
          ov96_02218DF8((int)param_1,(short *)(param_1 + 7));
        }
      }
    }
    else {
      ov96_02219030(param_1);
    }
    break;
  case 2:
    iVar1 = ov96_02218934((int)param_1);
    if (iVar1 == 0) {
      *(char *)(param_1 + 0x16) = *(char *)(param_1 + 0x16) + -1;
      if (*(char *)(param_1 + 0x16) < '\x01') {
        ov96_02218578((int)param_1,1);
      }
    }
    else {
      ov96_02219030(param_1);
    }
    break;
  case 3:
    *(char *)((int)param_1 + 0x5b) = *(char *)((int)param_1 + 0x5b) + -1;
    if (*(char *)((int)param_1 + 0x5b) < '\x01') {
      ov96_02218A50((int)param_1);
      ov96_02218578((int)param_1,4);
    }
    break;
  case 4:
    if ((int)(param_1[0x18] << 4) < 0) {
      GF_AssertFail();
    }
    iVar1 = ov96_02218934((int)param_1);
    if (iVar1 == 0) {
      if ((int)(param_1[0x18] << 2) < 0) {
        ov96_02218F58(param_1);
      }
      else if ((int)(param_1[0x18] << 1) < 0) {
        ov96_02218DF8((int)param_1,(short *)(param_1 + 7));
      }
      else {
        *(char *)((int)param_1 + 0x5e) = *(char *)((int)param_1 + 0x5e) + -1;
        if (*(char *)((int)param_1 + 0x5e) < '\x01') {
          ov96_02218578((int)param_1,1);
        }
      }
    }
    else {
      ov96_02219030(param_1);
    }
    break;
  case 5:
    *(char *)((int)param_1 + 0x59) = *(char *)((int)param_1 + 0x59) + -1;
    if (*(char *)((int)param_1 + 0x59) < '\x01') {
      *(undefined1 *)((int)param_1 + 0x59) = 6;
      ov96_02218578((int)param_1,6);
    }
    break;
  case 6:
    *(char *)((int)param_1 + 0x59) = *(char *)((int)param_1 + 0x59) + -1;
    if (*(char *)((int)param_1 + 0x59) < '\x01') {
      param_1[8] = param_1[0xb];
      param_1[9] = param_1[0xc];
      param_1[10] = param_1[0xd];
      param_1[0x11] = 0;
      param_1[0x12] = 0;
      param_1[0x13] = 0;
      ov96_02218578((int)param_1,7);
    }
    break;
  case 7:
    *(char *)((int)param_1 + 0x59) = *(char *)((int)param_1 + 0x59) + -1;
    if (*(char *)((int)param_1 + 0x59) < '\x01') {
      ov96_02218EB8(param_1);
    }
    break;
  case 8:
    *(char *)((int)param_1 + 0x5a) = *(char *)((int)param_1 + 0x5a) + -1;
    if (*(char *)((int)param_1 + 0x5a) < '\x01') {
      *(undefined1 *)((int)param_1 + 0x5a) = 0;
      ov96_02218578((int)param_1,9);
    }
    break;
  case 9:
    param_1[0x14] =
         (int)*(short *)(*(char *)((int)param_1 + 0x5a) * 2 +
                        (uint)*(byte *)(*(int *)(param_1[1] + 4) + 0x18) * 0x14 + 0x221d7d0) << 0xc;
    *(char *)((int)param_1 + 0x5a) = *(char *)((int)param_1 + 0x5a) + '\x01';
    if ('\t' < *(char *)((int)param_1 + 0x5a)) {
      *(undefined1 *)((int)param_1 + 0x5a) = 10;
      ov96_02218578((int)param_1,10);
    }
    break;
  case 10:
    *(char *)((int)param_1 + 0x5a) = *(char *)((int)param_1 + 0x5a) + -1;
    if (*(char *)((int)param_1 + 0x5a) < '\x01') {
      *(undefined1 *)((int)param_1 + 0x5a) = 0;
      ov96_02218578((int)param_1,0xb);
    }
    break;
  case 0xb:
    if (param_1[0x14] == 0) {
      ov96_02218FD4((int)param_1);
      iVar1 = ov96_02218934((int)param_1);
      if (iVar1 != 0) {
        ov96_02219030(param_1);
      }
    }
    else {
      iVar1 = param_1[0x14] +
              (uint)*(byte *)(*(byte *)(*(int *)(param_1[1] + 4) + 0x18) + 0x221d69c) * -0x1000;
      param_1[0x14] = iVar1;
      if (iVar1 < 1) {
        param_1[0x14] = 0;
      }
    }
    break;
  case 0xc:
    *(char *)((int)param_1 + 0x5a) = *(char *)((int)param_1 + 0x5a) + -1;
    if (*(char *)((int)param_1 + 0x5a) < '\x01') {
      ov96_02218578((int)param_1,1);
    }
  }
  ov96_02218AF0((int)param_1);
  return;
}

