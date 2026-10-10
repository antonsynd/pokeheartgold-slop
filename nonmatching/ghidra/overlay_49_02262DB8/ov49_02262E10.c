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
undefined4 func_0x0222f294() __asm__("sub_0222F294");
undefined4 ov49_0225A23C();
undefined4 FontID_String_GetWidth();
undefined4 GF_AssertFail();
undefined4 ov49_0225A24C();
undefined4 ov49_0225A37C();
undefined4 ov49_0225A30C();
undefined4 func_0x0222f2d4() __asm__("sub_0222F2D4");
undefined4 ov49_0225A31C();
undefined4 func_0x0222f274() __asm__("sub_0222F274");

void ov49_02262E10(byte *param_1,undefined4 param_2,int param_3,int param_4)

{
  byte bVar1;
  char cVar2;
  uint uVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;

  if (param_3 != 0) {
    param_1[7] = 0xff;
  }
  bVar1 = param_1[3];
  iVar6 = param_4;
  if (bVar1 == 0) {
    uVar5 = 0;
  }
  else if (bVar1 == 1) {
    uVar5 = 1;
  }
  else if (bVar1 == 2) {
    uVar5 = 2;
  }
  else {
    GF_AssertFail();
    uVar5 = 2;
  }
  uVar3 = func_0x0222f274(uVar5);
  if (*param_1 != uVar3) {
    param_1[7] = param_1[7] | 4;
  }
  *param_1 = (byte)uVar3;
  uVar4 = func_0x0222f294(uVar5);
  if (param_1[2] != uVar4) {
    param_1[7] = param_1[7] | 4;
  }
  param_1[2] = (byte)uVar4;
  if (uVar3 == 1) {
    uVar3 = func_0x0222f2d4(uVar5);
  }
  else {
    uVar3 = 4;
  }
  if (param_1[1] != uVar3) {
    param_1[7] = param_1[7] | 2;
  }
  param_1[1] = (byte)uVar3;
  if ((param_1[7] & 1) != 0) {
    ov49_0225A24C(param_2,0,0,0x68,0x10,param_4,iVar6);
    ov49_0225A37C(param_2,param_1[3],0);
    uVar5 = ov49_0225A30C(param_2,1,0x36);
    ov49_0225A23C(param_2,uVar5,0,0);
  }
  if ((param_1[7] & 4) != 0) {
    ov49_0225A24C(param_2,0,0x10,0x68,0x10);
    if (((param_4 == 1) && (param_1[2] == 0)) && (*param_1 == 1)) {
      uVar5 = ov49_0225A30C(param_2,1,0x45);
      cVar2 = FontID_String_GetWidth(0,uVar5,0);
      ov49_0225A23C(param_2,uVar5,'h' - cVar2,0x10);
    }
  }
  if ((param_1[7] & 2) != 0) {
    ov49_0225A24C(param_2,0,0x20,0x68,0x20);
    ov49_0225A31C(param_2,param_1[1],1,1,2);
    ov49_0225A31C(param_2,4 - (uint)param_1[1],1,0,2);
    uVar5 = ov49_0225A30C(param_2,1,0x44);
    ov49_0225A23C(param_2,uVar5,0,0x20);
  }
  if ((param_1[6] == 1) && ((param_1[7] & 8) != 0)) {
    ov49_0225A24C(param_2,0,0x40,0x68,0x10);
    ov49_0225A31C(param_2,(int)*(short *)(param_1 + 4),2,0,2);
    uVar5 = ov49_0225A30C(param_2,0,0xf);
    ov49_0225A23C(param_2,uVar5,0,0x40);
  }
  param_1[7] = 0;
  return;
}

