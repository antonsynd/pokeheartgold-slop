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
undefined4 ov82_0223F6C4();
undefined4 func_0x0222a7cc() __asm__("sub_0222A7CC");
undefined4 ov82_0223F6E8();
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 sub_0203769C();
undefined4 ov82_0223FE18();
undefined4 PlaySE();
undefined4 ov82_0223F948();
undefined4 ov82_0223EF7C();
undefined4 ov82_0223F84C();
undefined4 Options_GetFrame();
undefined4 ov82_0223F90C();
undefined4 ov82_0223F834();
undefined4 ov82_0223FD78();
undefined4 ov82_0223F5E0();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 ov82_0223FCB0();
undefined4 func_0x02037bec() __asm__("sub_02037BEC");
undefined4 sub_020379A0();
undefined4 ov82_0223F8E4();
undefined4 sub_02037B38();
undefined4 sub_02037AC0();

undefined4 ov82_0223E5D4(int param_1)

{
  undefined1 uVar1;
  undefined4 uVar2;
  int iVar3;
  
  switch(*(undefined1 *)(param_1 + 8)) {
  case 0:
    uVar2 = ov82_0223F6C4(*(undefined1 *)(param_1 + 0x1a));
    iVar3 = ov82_0223F6E8(param_1,5,uVar2);
    if (iVar3 == 1) {
      *(undefined1 *)(param_1 + 0x1b) = 0;
      *(undefined1 *)(param_1 + 0x1a) = 0;
      *(undefined1 *)(param_1 + 0x17) = 0;
      *(undefined1 *)(param_1 + 8) = 1;
    }
    break;
  case 1:
    if (*(char *)(param_1 + 0x1b) == '\0') {
      if (1 < *(byte *)(param_1 + 0x16)) {
        *(undefined1 *)(param_1 + 0x16) = 0;
        if (*(byte *)(param_1 + 0x18) < 0x14) {
          iVar3 = sub_0203769C();
          if (iVar3 == 0) {
            *(undefined1 *)(param_1 + 8) = 2;
          }
          else {
            *(undefined1 *)(param_1 + 8) = 3;
          }
        }
        else {
          iVar3 = sub_0203769C();
          if (iVar3 == 0) {
            *(undefined1 *)(param_1 + 8) = 3;
          }
          else {
            *(undefined1 *)(param_1 + 8) = 2;
          }
        }
      }
    }
    else {
      *(char *)(param_1 + 0x1b) = *(char *)(param_1 + 0x1b) + -1;
    }
    break;
  case 2:
    ov82_0223F5E0(*(undefined4 *)(param_1 + 0x48),*(undefined1 *)(param_1 + 0xd),1);
    ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 0x48),3);
    ov82_0223F84C(param_1);
    *(undefined1 *)(param_1 + 8) = 5;
    break;
  case 3:
    ov82_0223F948(0);
    *(undefined2 *)(param_1 + 0x14) = 0;
    ov82_0223FCB0(*(undefined4 *)(param_1 + 0x208));
    uVar2 = Options_GetFrame(*(undefined4 *)(param_1 + 0x9c));
    ov82_0223FD78(param_1 + 0x4c,uVar2);
    func_0x0222a7cc(*(undefined4 *)(param_1 + 0x24),0);
    uVar1 = ov82_0223EF7C(param_1,0xb,1);
    *(undefined1 *)(param_1 + 10) = uVar1;
    *(undefined1 *)(param_1 + 0x1b) = 10;
    ov82_0223F5E0(*(undefined4 *)(param_1 + 0x48),*(undefined1 *)(param_1 + 0x27c),2);
    ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 0x48),3);
    *(undefined1 *)(param_1 + 8) = 4;
    break;
  case 4:
    if (*(char *)(param_1 + 0x27d) != '\0') {
      if (*(char *)(param_1 + 0x27d) != '\x01') {
        ov82_0223F90C();
        ov82_0223F5E0(*(undefined4 *)(param_1 + 0x48),*(undefined1 *)(param_1 + 0x27c),0);
        ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 0x48),3);
        *(undefined1 *)(param_1 + 0x27c) = 0xff;
        *(undefined1 *)(param_1 + 0x27d) = 0;
        *(undefined1 *)(param_1 + 0x18) = 0xff;
        *(undefined1 *)(param_1 + 0x19) = 1;
        return 1;
      }
      *(undefined1 *)(param_1 + 0xd) = *(undefined1 *)(param_1 + 0x27c);
      return 1;
    }
    break;
  case 5:
    iVar3 = ov82_0223FE18(*(undefined4 *)(param_1 + 0x8c));
    if (iVar3 != 0) {
      if (iVar3 == 1) {
        func_0x02006154(0x5dc,0);
        PlaySE(0x623);
        ov82_0223F834(param_1);
        *(undefined1 *)(param_1 + 8) = 6;
      }
      else if (iVar3 == 2) {
        ov82_0223F834(param_1);
        *(undefined1 *)(param_1 + 8) = 7;
      }
    }
    break;
  case 6:
    iVar3 = ov82_0223F6E8(param_1,6,1);
    if (iVar3 == 1) {
      return 1;
    }
    break;
  case 7:
    if (*(short *)(param_1 + 0x14) < 1) {
      iVar3 = ov82_0223F6E8(param_1,6,2);
      if (iVar3 == 1) {
        ov82_0223F8E4(param_1);
        *(undefined1 *)(param_1 + 0x27c) = 0xff;
        *(undefined1 *)(param_1 + 0x18) = 0xff;
        *(undefined1 *)(param_1 + 0x19) = 1;
        return 1;
      }
    }
    else {
      *(short *)(param_1 + 0x14) = *(short *)(param_1 + 0x14) + -1;
      ov82_0223F948(-(int)*(short *)(param_1 + 0x14));
    }
    break;
  case 8:
    func_0x02037bec();
    sub_02037AC0(0x68);
    *(undefined1 *)(param_1 + 8) = 9;
    break;
  case 9:
    iVar3 = sub_02037B38(0x68);
    if (iVar3 == 1) {
      func_0x02037bec();
      sub_020379A0(0x69);
      *(undefined1 *)(param_1 + 0x18) = 0xff;
      return 1;
    }
  }
  return 0;
}

