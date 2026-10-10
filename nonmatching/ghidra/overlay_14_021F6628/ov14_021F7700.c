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
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov14_021F49E0();
undefined4 ov14_021F29E4();
undefined4 ov14_021E5A50();
undefined4 ov14_021F7AC4();
undefined4 ov14_021F57B8();
undefined4 ov14_021F48B4();
undefined4 ov14_021F4848();
undefined4 func_0x02019f88() __asm__("sub_02019F88");

void ov14_021F7700(int param_1,uint param_2,int param_3)

{
  char cVar1;

  if (((int)param_2 < 0) || (5 < (int)param_2)) {
    ov14_021F29E4(*(undefined4 *)(param_1 + 0x34),9,8);
  }
  else {
    ov14_021F29E4(*(undefined4 *)(param_1 + 0x34),9,0xe);
  }
  if ((param_3 == 8) && (param_2 == 0)) {
    param_2 = *(uint *)(*(int *)(param_1 + 0x34) + 0x43c);
    func_0x02019f88(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),param_2 & 0xff,8,8);
  }
  if ((-1 < (int)param_2) && ((int)param_2 < 6)) {
    *(uint *)(*(int *)(param_1 + 0x34) + 0x43c) = param_2;
  }
  if ((param_2 == 0) && (param_3 == 5)) {
    if (*(byte *)(param_1 + 0x25) + 1 < 0x12) {
      cVar1 = *(char *)(param_1 + 0x25) + '\x01';
    }
    else {
      cVar1 = '\0';
    }
    *(char *)(param_1 + 0x25) = cVar1;
    ov14_021F49E0(param_1);
    ov14_021F48B4(param_1);
    ov14_021F4848(param_1);
    ov14_021F57B8(param_1);
    ov14_021F29E4(*(undefined4 *)(param_1 + 0x34),5,4);
    ov14_021F7AC4(*(undefined4 *)(param_1 + 0x34),0,5);
    ov14_021E5A50(*(undefined4 *)(param_1 + 0x34),0x21e9f21);
    return;
  }
  if ((param_2 == 5) && (param_3 == 0)) {
    if ((int)(*(byte *)(param_1 + 0x25) - 1) < 0) {
      cVar1 = '\x11';
    }
    else {
      cVar1 = *(char *)(param_1 + 0x25) + -1;
    }
    *(char *)(param_1 + 0x25) = cVar1;
    ov14_021F49E0(param_1);
    ov14_021F48B4(param_1);
    ov14_021F4848(param_1);
    ov14_021F57B8(param_1);
    ov14_021F29E4(*(undefined4 *)(param_1 + 0x34),4,2);
    ov14_021F7AC4(*(undefined4 *)(param_1 + 0x34),5,0);
    ov14_021E5A50(*(undefined4 *)(param_1 + 0x34),0x21e9f21);
    return;
  }
  if (((-1 < (int)param_2) && ((int)param_2 < 6)) && (param_3 != 8)) {
    cVar1 = func_0x020f2998(*(undefined1 *)(param_1 + 0x25),6);
    *(char *)(param_1 + 0x25) = (char)param_2 + cVar1 * '\x06';
    ov14_021F48B4(param_1);
    ov14_021F57B8(param_1);
  }
  ov14_021F7AC4(*(undefined4 *)(param_1 + 0x34),param_2,param_3);
  ov14_021E5A50(*(undefined4 *)(param_1 + 0x34),0x21e9f21);
  return;
}

