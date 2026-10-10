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
undefined4 ov45_0222D8BC();
undefined4 ov45_0222ECDC();
undefined4 func_0x022320c4() __asm__("sub_022320C4");
undefined4 ov45_0222D500();
undefined4 ov45_0222CA7C();
undefined4 ov45_0222C370();

uint ov45_0222B5A0(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  bool bVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 unaff_r7;
  uint uVar5;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_18;
  
  bVar2 = false;
  uStack_18 = param_4;
  func_0x022320c4(&uStack_30);
  ov45_0222D500(param_2 + 0xd4,&uStack_30);
  *(undefined4 *)(param_2 + 0xd8) = uStack_30;
  *(undefined4 *)(param_2 + 0xdc) = uStack_2c;
  uVar5 = param_2 + 0xe0;
  uVar1 = (undefined1)param_1;
  switch(param_1) {
  case 0:
    ov45_0222D8BC(*(undefined4 *)(param_2 + 4),param_2 + 0xd4);
    *(undefined4 *)(param_2 + 0xe0) = *(undefined4 *)(param_2 + 0xd8);
    *(undefined4 *)(param_2 + 0xe4) = *(undefined4 *)(param_2 + 0xdc);
    *(byte *)(param_2 + 0x1fc) = *(byte *)(param_2 + 0x1fc) & 0xfe | 1;
    uVar5 = *(uint *)(param_2 + 0x100) | 1;
    *(uint *)(param_2 + 0x100) = uVar5;
    break;
  case 2:
  case 3:
  case 4:
  case 5:
  case 6:
    if (*(int *)(param_2 + 8) == 0) {
      bVar2 = true;
      *(undefined4 *)(param_2 + 8) = 1;
      unaff_r7 = 0;
      *(undefined2 *)(param_2 + 0x202) = 300;
    }
  case 1:
    *(undefined1 *)(param_2 + 0x1fd) = uVar1;
    uVar5 = 0x100;
    *(uint *)(param_2 + 0x100) = *(uint *)(param_2 + 0x100) | 2;
    break;
  case 8:
  case 9:
  case 10:
    if (*(int *)(param_2 + 8) == 0) {
      bVar2 = true;
      *(undefined4 *)(param_2 + 8) = 1;
      unaff_r7 = 0;
      *(undefined2 *)(param_2 + 0x202) = 300;
    }
  case 7:
    *(undefined1 *)(param_2 + 0x1fe) = uVar1;
    uVar5 = 0x100;
    *(uint *)(param_2 + 0x100) = *(uint *)(param_2 + 0x100) | 4;
    break;
  case 0xc:
  case 0xd:
  case 0xe:
    if (*(int *)(param_2 + 8) == 0) {
      bVar2 = true;
      *(undefined4 *)(param_2 + 8) = 1;
      unaff_r7 = 0;
      *(undefined2 *)(param_2 + 0x202) = 300;
    }
  case 0xb:
    *(undefined1 *)(param_2 + 0x1ff) = uVar1;
    uVar5 = 0x100;
    *(uint *)(param_2 + 0x100) = *(uint *)(param_2 + 0x100) | 8;
    break;
  case 0xf:
    *(byte *)(param_2 + 0x1fc) = *(byte *)(param_2 + 0x1fc) & 0x9f | 0x20;
    uVar5 = 0x100;
    *(uint *)(param_2 + 0x100) = *(uint *)(param_2 + 0x100) | 0x10;
    break;
  case 0x10:
    bVar2 = true;
    unaff_r7 = 1;
    uVar3 = ov45_0222ECDC(6);
    uVar4 = ov45_0222ECDC(7);
    ov45_0222CA7C(param_2 + 0x49c,uVar3,uVar4);
    uVar5 = 0x204;
    *(undefined2 *)(param_2 + 0x204) = 300;
    break;
  case 0x11:
    *(byte *)(param_2 + 0x1fc) = *(byte *)(param_2 + 0x1fc) & 0xf3 | 8;
    uVar5 = 0x100;
    *(uint *)(param_2 + 0x100) = *(uint *)(param_2 + 0x100) | 0x20;
    break;
  case 0x12:
    uVar5 = 0x206;
    bVar2 = true;
    unaff_r7 = 2;
    *(undefined2 *)(param_2 + 0x206) = 300;
    break;
  case 0x13:
    bVar2 = true;
    *(byte *)(param_2 + 0x1fc) = *(byte *)(param_2 + 0x1fc) | 0x80;
    uVar5 = 0x200;
    unaff_r7 = 4;
    *(undefined2 *)(param_2 + 0x200) = 900;
  }
  if (bVar2) {
    uVar5 = ov45_0222C370(param_2,unaff_r7);
  }
  return uVar5;
}

