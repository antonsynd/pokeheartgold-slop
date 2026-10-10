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
undefined4 func_0x020b7418() __asm__("sub_020B7418");
undefined4 func_0x020cfc30() __asm__("sub_020CFC30");
extern undefined4 uRam040004c4 __asm__("sub_040004C4");
extern int iRam04000470 __asm__("sub_04000470");
extern undefined4 uRam04000444 __asm__("sub_04000444");
extern uint uRam040004c0 __asm__("sub_040004C0");
extern undefined FX_SinCosTable_;
extern undefined4 uRam04000448 __asm__("sub_04000448");
extern undefined4 uRam0400046c __asm__("sub_0400046C");
extern uint uRam040004a4 __asm__("sub_040004A4");
extern uint uRam040004a8 __asm__("sub_040004A8");
extern uint uRam040004ac __asm__("sub_040004AC");

void sub_020161CC(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  int iVar6;

  uRam04000444 = 0;
  uRam040004c0 = *(ushort *)(param_1 + 0x3c) | 0x7fff8000;
  uRam040004c4 = 0x4210;
  piVar3 = *(int **)(param_1 + 0x24);
  uRam040004a8 = piVar3[2] << 0x1a | *(uint *)(param_1 + 0x28) >> 3 | 0x40000000 | *piVar3 << 0x14 |
                 piVar3[1] << 0x17 | piVar3[4] << 0x1d;
  uRam040004ac = (uint)(*(int *)(param_1 + 0x2c) + *(int *)(param_1 + 0x30) * 0x20) >>
                 (4 - (*(int *)(*(int *)(param_1 + 0x24) + 8) == 2) & 0xff);
  uRam040004a4 = (uint)*(byte *)(param_1 + 0x3e) << 0x10 | 0xc0;
  if (*(int *)(param_1 + 0x34) == 0) {
    iVar6 = (int)*(short *)(param_1 + 8);
    iVar1 = 0;
  }
  else {
    iVar1 = (int)*(short *)(param_1 + 8);
    iVar6 = 0;
  }
  if (*(int *)(param_1 + 0x38) == 0) {
    iVar4 = (int)*(short *)(param_1 + 10);
    iVar5 = 0;
  }
  else {
    iVar5 = (int)*(short *)(param_1 + 10);
    iVar4 = 0;
  }
  iRam04000470 = *(int *)(param_1 + 0x14) << 0xc;
  iVar2 = *(int *)(param_1 + 0x18) >> 4;
  func_0x020cfc30((int)*(short *)(&FX_SinCosTable_ + iVar2 * 4),
                  (int)*(short *)(&FX_SinCosTable_ + (iVar2 * 2 + 1) * 2));
  uRam0400046c = 0x1000;
  iRam04000470 = 0;
  func_0x020b7418(0,0,0,(int)*(short *)(param_1 + 8),(int)*(short *)(param_1 + 10),iVar1,iVar5,iVar6
                  ,iVar4,iVar1,param_4);
  uRam04000448 = 1;
  return;
}

