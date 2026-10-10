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
undefined4 ov90_0225A28C();
undefined4 ov90_0225BA14();
undefined4 ov90_02259538();
undefined4 sub_02037AC0();
undefined4 ov90_02259200();
undefined4 IsPaletteFadeFinished();
undefined4 ov90_0225B978();
undefined4 GF_AssertFail();
undefined4 ov90_0225B274();
undefined4 ov90_0225B7FC();
undefined4 BeginNormalPaletteFade();
undefined4 ov90_0225926C();
undefined4 ov90_0225A088();
undefined4 ov90_0225BA38();
undefined4 ov90_0225B8F0();
undefined4 ov90_022594FC();
undefined4 ov90_02259464();
undefined4 ov90_0225B2A8();
undefined4 ScheduleSetBgPosText();
undefined4 ov90_0225B538();
undefined4 ov90_0225B38C();
undefined4 ov90_0225A108();
undefined4 sub_02037B38();
undefined4 ov90_0225B9A8();
undefined4 func_0x021e6a4c() __asm__("sub_021E6A4C");
undefined4 ov90_02259170();

void ov90_0225A980(undefined4 param_1,short *param_2)

{
  bool bVar1;
  undefined1 uVar2;
  uint uVar3;
  ushort uVar4;
  short *psVar5;
  undefined4 uVar6;
  int iVar7;

  switch((char)param_2[2]) {
  case '\0':
    *(undefined4 *)(param_2 + 0x326) = **(undefined4 **)(param_2 + 0xc);
    if (*(char *)((int)param_2 + 0x17) == '\x01') {
      *(undefined1 *)((int)param_2 + 9) = 0;
    }
    else {
      uVar3 = ov90_0225BA14(param_2);
      if ((*(char *)((int)param_2 + *(byte *)((int)param_2 + 0x15) + 0x2c) == '\0') &&
         (uVar3 < *(uint *)(param_2 + (uint)*(byte *)((int)param_2 + 0x15) * 2 + 0xe))) {
        uVar6 = ov90_0225A28C(**(undefined4 **)(param_2 + 0xc));
        **(undefined4 **)(param_2 + 0xc) = uVar6;
        *(undefined1 *)((int)param_2 + 9) = 1;
      }
      else {
        *(undefined1 *)((int)param_2 + 9) = 0;
      }
      if (*(char *)((int)param_2 + 0x15) == '\0') {
        ov90_0225BA38(param_2);
      }
    }
    BeginNormalPaletteFade(3,1,1,0xffff,6,1,param_2[1]);
    *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    break;
  case '\x01':
    iVar7 = IsPaletteFadeFinished();
    if (iVar7 != 0) {
      *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    }
    break;
  case '\x02':
    ov90_02259464(param_2 + 0x34,param_2 + 0x2c,1,0);
    *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    break;
  case '\x03':
    iVar7 = ov90_02259538(param_2 + 0x34,0);
    if (iVar7 != 0) {
      *param_2 = 0x40;
      *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    }
    break;
  case '\x04':
    if ((*param_2 != 0) && (*param_2 = *param_2 + -1, *param_2 == 0)) {
      bVar1 = true;
      ov90_022594FC(param_2 + 0x34,0);
      ov90_0225A088(param_2 + 0x19e,param_2 + 0x26,param_2[1]);
      uVar3 = ov90_0225BA14(param_2);
      iVar7 = 0;
      psVar5 = param_2;
      if (*(byte *)(param_2 + 10) != 0) {
        do {
          if (uVar3 < *(uint *)(psVar5 + 0xe)) {
            bVar1 = false;
          }
          iVar7 = iVar7 + 1;
          psVar5 = psVar5 + 2;
        } while (iVar7 < (int)(uint)*(byte *)(param_2 + 10));
      }
      if (bVar1) {
        param_2[0x329] = 0x10;
        *(undefined1 *)(param_2 + 2) = 0x16;
      }
      else {
        *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
        param_2[0x328] = 4;
      }
    }
    break;
  case '\x05':
    bVar1 = false;
    do {
      param_2[0x328] = param_2[0x328] + -1;
      iVar7 = 0;
      if (*(byte *)(param_2 + 10) != 0) {
        do {
          if (param_2[0x328] == (ushort)*(byte *)((int)param_2 + iVar7 + 0x2c)) {
            bVar1 = true;
          }
          iVar7 = iVar7 + 1;
        } while (iVar7 < (int)(uint)*(byte *)(param_2 + 10));
      }
    } while (!bVar1);
    switch(param_2[0x328]) {
    case 0:
    case 1:
      param_2[0x329] = 0x20;
      break;
    case 2:
    case 3:
      param_2[0x329] = 0x10;
      break;
    default:
      GF_AssertFail();
    }
    ov90_0225B8F0(param_2);
    *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    break;
  case '\x06':
    param_2[0x329] = param_2[0x329] + -1;
    ov90_0225B8F0(param_2);
    if (param_2[0x329] == 0) {
      iVar7 = 0;
      if ((char)param_2[10] != '\0') {
        do {
          uVar4 = (ushort)*(byte *)((int)param_2 + iVar7 + 0x2c);
          bVar1 = false;
          if (param_2[0x328] == uVar4) {
            bVar1 = true;
          }
          else if ((param_2[0x328] == 1) && (uVar4 == 0)) {
            bVar1 = true;
          }
          if (bVar1) {
            ov90_0225B7FC(param_2,iVar7);
          }
          iVar7 = iVar7 + 1;
        } while (iVar7 < (int)(uint)*(byte *)(param_2 + 10));
      }
      if ((ushort)param_2[0x328] < 2) {
        *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
      }
      else {
        *(undefined1 *)(param_2 + 2) = 5;
      }
    }
    break;
  case '\a':
    iVar7 = ov90_0225B8F0(param_2);
    if (iVar7 != 0) {
      *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    }
    break;
  case '\b':
    *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    ov90_0225B274(param_2);
    *param_2 = 0x1e;
    break;
  case '\t':
    if (*param_2 != 0) {
      *param_2 = *param_2 + -1;
    }
    if (*param_2 == 0) {
      *(undefined1 *)(param_2 + 2) = 10;
      *param_2 = 0;
    }
    break;
  case '\n':
    if (*(char *)((int)param_2 + *(byte *)((int)param_2 + 0x15) + 0x2c) == '\0') {
      uVar6 = 0x11;
    }
    else {
      uVar6 = 0x12;
    }
    ov90_02259200(param_2 + 0x2c,
                  *(undefined4 *)(param_2 + (uint)*(byte *)((int)param_2 + 0x15) * 2 + 0x1e));
    ov90_02259464(param_2 + 0x34,param_2 + 0x2c,uVar6,0);
    *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    break;
  case '\v':
    iVar7 = ov90_02259538(param_2 + 0x34,0);
    if ((iVar7 != 0) && (iVar7 = ov90_0225B978(param_2), iVar7 == 1)) {
      if (*(char *)((int)param_2 + 0x17) == '\x01') {
        *param_2 = 0x66;
        *(undefined1 *)(param_2 + 2) = 0xe;
      }
      else {
        *param_2 = 0x66;
        *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
      }
    }
    break;
  case '\f':
    if (*param_2 == 0) {
      if (*(char *)((int)param_2 + 9) == '\0') {
        uVar6 = 9;
      }
      else {
        ov90_0225926C(param_2 + 0x2c,**(undefined4 **)(param_2 + 0xc));
        if (*(int *)(param_2 + 0x326) == **(int **)(param_2 + 0xc)) {
          uVar6 = 0x13;
        }
        else {
          uVar6 = 2;
        }
      }
      ov90_02259200(param_2 + 0x2c,
                    *(undefined4 *)(param_2 + (uint)*(byte *)((int)param_2 + 0x15) * 2 + 0x1e));
      ov90_02259464(param_2 + 0x34,param_2 + 0x2c,uVar6,0);
      *(undefined1 *)(param_2 + 2) = 0xd;
    }
    else {
      *param_2 = *param_2 + -1;
    }
    break;
  case '\r':
    iVar7 = ov90_02259538(param_2 + 0x34,0);
    if (iVar7 != 0) {
      *param_2 = 0x66;
      *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    }
    break;
  case '\x0e':
    if ((*param_2 != 0) && (*param_2 = *param_2 + -1, *param_2 == 0)) {
      ov90_022594FC(param_2 + 0x34,0);
      *param_2 = 0x1e;
      *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    }
    break;
  case '\x0f':
    if (*param_2 == 0) {
      sub_02037AC0(0x82);
      if ((char)param_2[0xb] != '\0') {
        func_0x021e6a4c();
      }
      *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    }
    else {
      *param_2 = *param_2 + -1;
    }
    break;
  case '\x10':
    iVar7 = sub_02037B38(0x82);
    if (iVar7 != 0) {
      if (*(char *)((int)param_2 + 0x17) == '\0') {
        *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
      }
      else {
        *(undefined1 *)(param_2 + 2) = 0x13;
      }
    }
    break;
  case '\x11':
    BeginNormalPaletteFade(3,0,0,0,6,1,param_2[1]);
    *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    break;
  case '\x12':
    iVar7 = IsPaletteFadeFinished();
    if (iVar7 != 0) {
      *(undefined1 *)(param_2 + 2) = 0x15;
    }
    break;
  case '\x13':
    ov90_0225B9A8(param_2);
    *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    break;
  case '\x14':
    iVar7 = ov90_0225B38C(param_2 + 0xf4,param_2 + 0x34,param_2 + 0x2c,
                          *(undefined1 *)((int)param_2 + 7),param_2[1]);
    if (iVar7 != 0) {
      uVar2 = ov90_0225B538(param_2 + 0xf4);
      *(undefined1 *)(param_2 + 4) = uVar2;
      *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    }
    break;
  case '\x15':
    ov90_0225A108(param_2 + 0x19e);
    *(undefined1 *)(param_2 + 3) = 1;
    break;
  case '\x16':
    param_2[0x329] = param_2[0x329] + -1;
    if (param_2[0x329] == 0) {
      *(char *)(param_2 + 2) = (char)param_2[2] + '\x01';
    }
    break;
  case '\x17':
    uVar3 = (uint)*(byte *)(param_2 + 10);
    iVar7 = 0;
    if (uVar3 != 0) {
      do {
        *(char *)((int)param_2 + iVar7 + 0x2c) = (char)uVar3 + -1;
        ov90_0225B7FC(param_2,iVar7,*(undefined1 *)((int)param_2 + iVar7 + 0x2c));
        uVar3 = (uint)*(byte *)(param_2 + 10);
        iVar7 = iVar7 + 1;
      } while (iVar7 < (int)uVar3);
    }
    *(undefined1 *)(param_2 + 2) = 7;
  }
  ov90_0225B2A8(param_2);
  ov90_02259170(param_2 + 0x50);
  ScheduleSetBgPosText(*(undefined4 *)(param_2 + 0x26),3,4,2);
  ScheduleSetBgPosText(*(undefined4 *)(param_2 + 0x26),5,4,2);
  return;
}

