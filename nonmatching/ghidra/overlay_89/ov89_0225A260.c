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
undefined4 sub_020138E0();
undefined4 RemoveWindow();
undefined4 func_0x02013688() __asm__("sub_02013688");
undefined4 func_0x02021ac8() __asm__("sub_02021AC8");
undefined4 func_0x0200d934() __asm__("sub_0200D934");
undefined4 GF_AssertFail();
undefined4 func_0x0200e2b0() __asm__("sub_0200E2B0");
undefined4 func_0x020136b4() __asm__("sub_020136B4");
undefined4 func_0x020135d8() __asm__("sub_020135D8");
undefined4 ov89_0225A368();
undefined4 func_0x02020150() __asm__("sub_02020150");
undefined4 func_0x0201d494() __asm__("sub_0201D494");
undefined4 InitWindow();

void ov89_0225A260(int param_1,int *param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5
                  ,undefined4 param_6,undefined4 param_7,int param_8,int param_9,int param_10)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  uint uStack_6c;
  int iStack_68;
  int iStack_64;
  int iStack_60;
  int iStack_5c;
  undefined1 auStack_58 [16];
  undefined4 uStack_48;
  undefined1 *puStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  if (*param_2 != 0) {
    GF_AssertFail();
  }
  uVar1 = *(undefined4 *)(param_1 + 8);
  uVar3 = *(undefined4 *)(param_1 + 0x20);
  ov89_0225A368(param_3,param_4,&iStack_68,&uStack_6c);
  InitWindow(auStack_58);
  func_0x0201d494(uVar1,auStack_58,uStack_6c & 0xff,2,0,0);
  func_0x02020150(auStack_58,param_4,param_3,0,0,0xff,param_5,0,0,0);
  uVar1 = func_0x02013688(auStack_58,1,0x7d);
  func_0x02021ac8(uVar1,1,1,&iStack_64);
  if (param_10 == 1) {
    param_8 = param_8 - iStack_68 / 2;
  }
  uStack_48 = *(undefined4 *)(param_1 + 0x10);
  puStack_44 = auStack_58;
  uStack_40 = func_0x0200e2b0(uVar3);
  uStack_3c = func_0x0200d934(uVar3,param_7);
  uStack_38 = 0;
  iStack_34 = iStack_60;
  iStack_2c = param_9 + -8;
  uStack_24 = 0x33;
  uStack_20 = 1;
  uStack_1c = 0x7d;
  uStack_28 = 0;
  iStack_30 = param_8;
  iVar2 = func_0x020135d8(&uStack_48);
  sub_020138E0(iVar2,param_6);
  func_0x020136b4(iVar2,param_8,param_9 + -8);
  RemoveWindow(auStack_58);
  *param_2 = iVar2;
  param_2[1] = iStack_64;
  param_2[2] = iStack_60;
  param_2[3] = iStack_5c;
  *(undefined2 *)(param_2 + 4) = (undefined2)iStack_68;
  return;
}

