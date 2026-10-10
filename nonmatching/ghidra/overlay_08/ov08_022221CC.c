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
undefined4 ov08_02221E6C();
undefined4 ov08_0221D5DC();
undefined4 ov08_02222564();

void ov08_022221CC(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  int iVar2;
  uint uVar3;

  switch(param_2) {
  case 0:
    uVar1 = 0;
    do {
      iVar2 = ov08_0221D5DC(param_1,uVar1);
      if (iVar2 == 0) {
        ov08_02221E6C(param_1,uVar1 & 0xff,3,1,param_4);
      }
      else if (iVar2 == 1) {
        ov08_02221E6C(param_1,uVar1 & 0xff,0,0,param_4);
      }
      else if (iVar2 == 2) {
        ov08_02221E6C(param_1,uVar1 & 0xff,0,1,param_4);
      }
      uVar1 = uVar1 + 1;
    } while (uVar1 < 6);
    if (*(char *)(*param_1 + 0x35) != '\x01') {
      ov08_02221E6C(param_1,6,0,0,param_4);
      return;
    }
    ov08_02221E6C(param_1,6,3,0,param_4);
    return;
  case 1:
    ov08_02221E6C(param_1,6,0,0,param_4);
    ov08_02221E6C(param_1,7,0,0);
    if (-1 < (int)((uint)*(byte *)((int)param_1 + (uint)*(byte *)(*param_1 + 0x11) * 0x50 + 0x1b) <<
                  0x18)) {
      ov08_02221E6C(param_1,8,0,0);
      ov08_02221E6C(param_1,10,0,0);
      return;
    }
    ov08_02221E6C(param_1,8,3,0);
    ov08_02221E6C(param_1,10,3,0);
    return;
  case 2:
    iVar2 = ov08_02222564();
    if (iVar2 == 1) {
      ov08_02221E6C(param_1,0xc,0,0);
      ov08_02221E6C(param_1,0xd,0,0);
    }
    else {
      ov08_02221E6C(param_1,0xc,3,0);
      ov08_02221E6C(param_1,0xd,3,0);
    }
    ov08_02221E6C(param_1,0xb,0,0);
    ov08_02221E6C(param_1,6,0,0);
    return;
  case 3:
    iVar2 = ov08_02222564();
    if (iVar2 == 1) {
      ov08_02221E6C(param_1,0xc,0,0);
      ov08_02221E6C(param_1,0xd,0,0);
    }
    else {
      ov08_02221E6C(param_1,0xc,3,0);
      ov08_02221E6C(param_1,0xd,3,0);
    }
    uVar3 = 0;
    do {
      if ((short)param_1[(uint)*(byte *)(*param_1 + 0x11) * 0x14 + uVar3 * 2 + 0xd] == 0) {
        ov08_02221E6C(param_1,uVar3 + 0xe & 0xff,3,0);
      }
      else {
        ov08_02221E6C(param_1,uVar3 + 0xe & 0xff,0,0);
      }
      uVar3 = uVar3 + 1 & 0xffff;
    } while (uVar3 < 4);
    ov08_02221E6C(param_1,9,0,0);
    ov08_02221E6C(param_1,6,0,0);
    return;
  case 4:
    ov08_02221E6C(param_1,6,0,0,param_4);
    uVar1 = 0;
    do {
      if (*(byte *)(*param_1 + 0x34) == uVar1) {
        ov08_02221E6C(param_1,uVar1 + 0x1e & 0xff,2,0);
      }
      else {
        ov08_02221E6C(param_1,uVar1 + 0x1e & 0xff,0,0);
      }
      uVar1 = uVar1 + 1;
    } while (uVar1 < 4);
    return;
  case 5:
    uVar3 = 0;
    do {
      if ((short)param_1[(uint)*(byte *)(*param_1 + 0x11) * 0x14 + uVar3 * 2 + 0xd] == 0) {
        ov08_02221E6C(param_1,uVar3 + 0x13 & 0xff,3,0,param_4);
      }
      else {
        ov08_02221E6C(param_1,uVar3 + 0x13 & 0xff,0,0,param_4);
      }
      uVar3 = uVar3 + 1 & 0xffff;
    } while (uVar3 < 4);
    ov08_02221E6C(param_1,6,0,0);
    return;
  case 6:
  case 8:
    ov08_02221E6C(param_1,0x17,0,0,param_4);
    ov08_02221E6C(param_1,0x18,0,0);
    ov08_02221E6C(param_1,0x19,0,0);
    ov08_02221E6C(param_1,0x1a,0,0);
    ov08_02221E6C(param_1,0x1b,0,0);
    ov08_02221E6C(param_1,6,0,0);
    if (*(byte *)((int)param_1 + 0x2077) >> 4 == 1) {
      ov08_02221E6C(param_1,0x12,0,0);
      return;
    }
    break;
  case 7:
    ov08_02221E6C(param_1,0x1c,0,0,param_4);
    ov08_02221E6C(param_1,6,0,0);
    if (*(byte *)((int)param_1 + 0x2077) >> 4 == 1) {
      ov08_02221E6C(param_1,0x12,0,0);
      return;
    }
    break;
  case 9:
    ov08_02221E6C(param_1,0x1d,0,0,param_4);
    ov08_02221E6C(param_1,6,0,0);
    if (*(byte *)((int)param_1 + 0x2077) >> 4 == 1) {
      ov08_02221E6C(param_1,0x12,0,0);
    }
  }
  return;
}

