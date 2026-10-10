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
undefined4 BeginNormalPaletteFade();
undefined4 func_0x020266fc() __asm__("sub_020266FC");
undefined4 BufferPlayersName();
undefined4 func_0x02026aa4() __asm__("sub_02026AA4");
undefined4 ov43_0222B440();
undefined4 ov43_0222B458();
undefined4 ov43_0222ADB8();
undefined4 ov43_0222B4BC();
undefined4 ov43_0222B534();
undefined4 IsPaletteFadeFinished();
undefined4 ov43_0222B1FC();
undefined4 func_0x02028ed0() __asm__("sub_02028ED0");
undefined4 Heap_Free();
undefined4 ov43_0222AAA4();
undefined4 ov43_0222B574();
undefined4 ov43_0222B374();
undefined4 func_0x02028f24() __asm__("sub_02028F24");
undefined4 System_GetTouchNew();
undefined4 ov43_0222A358();
undefined4 ov43_0222B55C();
undefined4 ov43_0222AE2C();
undefined4 ov43_0222B408();
extern uint uRam021d1154 __asm__("sub_021D1154");
extern undefined ov43_0222F0C8;

undefined4 ov43_0222AE64(int *param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined8 uVar4;
  int iStack_18;

  switch(*(undefined1 *)(param_2 + 8)) {
  case 0:
    ov43_0222B1FC();
    BeginNormalPaletteFade(0,0x11,0x11,0,6,1,param_4);
    *(undefined1 *)(param_2 + 8) = 1;
    break;
  case 1:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 != 0) {
      *(undefined1 *)(param_2 + 8) = 3;
    }
    break;
  case 2:
    ov43_0222B1FC();
    *(undefined1 *)(param_2 + 8) = 3;
    break;
  case 3:
    iVar3 = ov43_0222B374();
    if (iVar3 != 0) {
      param_1[1] = 2;
      *(undefined1 *)(param_2 + 8) = 4;
    }
    break;
  case 4:
    iVar3 = param_1[1];
    param_1[1] = iVar3 + -1;
    if (iVar3 == 0) {
      param_1[1] = 0;
      iVar3 = ov43_0222B574();
      if (iVar3 == 1) {
        ov43_0222B440(param_1,param_2);
        if ((*param_1 != 3) && (*param_1 != 1)) {
          ov43_0222B458(param_1,param_3);
          return 1;
        }
        *(undefined1 *)(param_2 + 8) = 5;
      }
      else if (*param_1 == 1) {
        ov43_0222B4BC(param_1,param_3,0x3a,param_4);
        *(undefined1 *)(param_2 + 8) = 0xb;
      }
    }
    break;
  case 5:
    BeginNormalPaletteFade(0,0x10,0x10,0,6,1,param_4);
    *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
    break;
  case 6:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 == 1) {
      return 1;
    }
    break;
  case 7:
    ov43_0222B1FC();
    BeginNormalPaletteFade(0,0x11,0x11,0,6,1,param_4);
    *(undefined1 *)(param_2 + 8) = 8;
    break;
  case 8:
    iVar3 = IsPaletteFadeFinished();
    if (iVar3 != 0) {
      uVar1 = func_0x02028ed0(param_4);
      uVar2 = func_0x02026aa4(*(undefined4 *)(param_2 + 0x58));
      func_0x02028f24(uVar1,uVar2);
      BufferPlayersName(*(undefined4 *)(param_3 + 0x50),0,uVar1);
      Heap_Free(uVar1);
      uVar4 = func_0x020266fc(*(undefined4 *)(param_2 + 0x5c),&iStack_18);
      if (iStack_18 == 0) {
        ov43_0222B4BC(param_1,param_3,0x38,param_4);
        *(undefined1 *)(param_2 + 8) = 0xb;
      }
      else {
        ov43_0222AAA4(param_3,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20));
        ov43_0222B4BC(param_1,param_3,0x37,param_4);
        *(undefined1 *)(param_2 + 8) = 9;
      }
    }
    break;
  case 9:
    iVar3 = ov43_0222B534();
    if (iVar3 != 0) {
      ov43_0222ADB8(param_2,param_3,0);
      *(undefined1 *)(param_2 + 8) = 10;
    }
    break;
  case 10:
    iVar3 = ov43_0222AE2C(param_2,param_3);
    if (iVar3 == 1) {
      iVar3 = ov43_0222A358(param_2,*(undefined4 *)(param_2 + 0x5c),*(undefined4 *)(param_2 + 0x58))
      ;
      if (iVar3 == 0) {
        ov43_0222B55C(param_1);
        *(undefined1 *)(param_2 + 8) = 3;
      }
      else {
        ov43_0222B4BC(param_1,param_3,(&ov43_0222F0C8)[iVar3],param_4);
        *(undefined1 *)(param_2 + 8) = 0xb;
      }
    }
    else if (iVar3 == 2) {
      ov43_0222B55C(param_1);
      *(undefined1 *)(param_2 + 8) = 3;
    }
    break;
  case 0xb:
    iVar3 = ov43_0222B534();
    if ((iVar3 != 0) &&
       ((((uRam021d1154 & 1) != 0 || ((uRam021d1154 & 2) != 0)) ||
        (iVar3 = System_GetTouchNew(), iVar3 != 0)))) {
      ov43_0222B55C(param_1);
      ov43_0222B408(param_1,param_3);
      *(undefined1 *)(param_2 + 8) = 3;
    }
  }
  return 0;
}

