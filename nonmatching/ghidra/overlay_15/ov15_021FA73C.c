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
undefined4 ov15_02200030();
undefined4 ov15_021FA170();
undefined4 ov15_021FA074();
undefined4 ov15_021FA0E4();
undefined4 ov15_021FDF88();
undefined4 ov15_021FD7D0();
undefined4 ov15_021FF6BC();
undefined4 ov15_021FD404();
undefined4 ov15_021FA68C();
undefined4 PlaySE();
undefined4 ov15_021FDAF4();
undefined4 ov15_021FD774();
undefined4 ov15_021FD574();
undefined4 ov15_02200140();
undefined4 ov15_021FF364();
undefined4 ov15_021F9F08();

undefined4
ov15_021FA73C(int param_1,int param_2,undefined1 *param_3,undefined4 param_4,undefined4 param_5,
             int param_6)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  undefined4 uVar6;

  uVar6 = 1;
  switch(param_2) {
  case 0:
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
  case 6:
  case 7:
    uVar1 = ov15_021FA68C();
    if (uVar1 == 0xffffffff) {
      return 1;
    }
    if ((uVar1 == *(byte *)(*(int *)(param_1 + 0x234) + 100)) && (param_6 == 0)) {
      return 1;
    }
    *(char *)(*(int *)(param_1 + 0x234) + 100) = (char)uVar1;
    ov15_021F9F08(param_1);
    iVar3 = *(int *)(param_1 + 0x234) + 4 + (uint)*(byte *)(*(int *)(param_1 + 0x234) + 100) * 0xc;
    uVar2 = ov15_021FA074(param_1);
    ov15_021FD574(param_1,0,uVar2,0);
    ov15_021FF364(param_1,(int)*(short *)(iVar3 + 6),0xffffffff,0);
    ov15_02200030(param_1,*(undefined1 *)(*(int *)(param_1 + 0x234) + 100));
    ov15_021FF6BC(param_1,*(undefined1 *)(iVar3 + 9),(int)*(short *)(iVar3 + 6),0);
    uVar2 = ov15_021FA074(param_1);
    ov15_02200140(param_1,iVar3,uVar2,1);
    ov15_021FD404(param_1,1,*(undefined1 *)(*(int *)(param_1 + 0x234) + 100));
    PlaySE(0x5dc);
    ov15_021FA170(param_1);
    if (7 < *(int *)(param_1 + 0x644)) {
      ov15_021FA0E4(param_1);
    }
    ov15_021FDF88(param_1);
    ov15_021FDAF4(param_1 + 0x808,*(byte *)(*(int *)(param_1 + 0x234) + 100) + 1,7);
    break;
  case 8:
  case 9:
  case 10:
  case 0xb:
  case 0xc:
  case 0xd:
    iVar4 = *(int *)(param_1 + 0x234);
    piVar5 = (int *)(iVar4 + 4 + (uint)*(byte *)(iVar4 + 100) * 0xc);
    iVar3 = (int)*(short *)((int)piVar5 + 6) + param_2 + -8;
    if (iVar3 < (int)(uint)*(byte *)((int)piVar5 + 9)) {
      *(undefined2 *)(iVar4 + 0x66) = *(undefined2 *)(*piVar5 + iVar3 * 4);
      *param_3 = 1;
      PlaySE(0x5dc);
    }
    ov15_021FA170(param_1);
    break;
  case 0xe:
    if (6 < *(byte *)(*(int *)(param_1 + 0x234) +
                      (uint)*(byte *)(*(int *)(param_1 + 0x234) + 100) * 0xc + 0xd)) {
      PlaySE(0x5dc);
      uVar6 = ov15_021FD7D0(param_1,0x11,9,8,0x1f);
    }
    break;
  case 0xf:
    if (6 < *(byte *)(*(int *)(param_1 + 0x234) +
                      (uint)*(byte *)(*(int *)(param_1 + 0x234) + 100) * 0xc + 0xd)) {
      PlaySE(0x5dc);
      uVar6 = ov15_021FD7D0(param_1,0x12,9,8,0x1e);
    }
    break;
  case 0x10:
    *(undefined2 *)(*(int *)(param_1 + 0x234) + 0x66) = 0;
    *(undefined2 *)(*(int *)(param_1 + 0x234) + 0x68) = 5;
    ov15_021FD774(param_1,param_6,5,0,param_4);
    PlaySE(0x940);
    uVar6 = ov15_021FD7D0(param_1,0x13,9,8,0x24);
  }
  return uVar6;
}

