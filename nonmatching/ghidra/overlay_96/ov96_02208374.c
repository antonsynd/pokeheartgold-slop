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
undefined4 CopyRectToBgTilemapRect();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 func_0x020f2998() __asm__("sub_020F2998");

void ov96_02208374(int param_1,int param_2)

{
  undefined1 uVar1;
  char cVar2;
  uint uVar3;
  int extraout_r1;
  int extraout_r1_00;
  uint extraout_r1_01;
  int extraout_r1_02;
  char acStack_1c [8];

  uVar3 = func_0x020f2998(param_2,100);
  uVar3 = uVar3 & 0xff;
  func_0x020f2998(uVar3,5);
  acStack_1c[3] = (char)(extraout_r1 << 2);
  acStack_1c[0] = func_0x020f2998(uVar3,5);
  acStack_1c[0] = acStack_1c[0] << 3;
  uVar1 = func_0x020f2998(param_2 + uVar3 * -100,10);
  func_0x020f2998(uVar1,5);
  acStack_1c[4] = (char)(extraout_r1_00 << 2);
  acStack_1c[1] = func_0x020f2998(uVar1,5);
  acStack_1c[1] = acStack_1c[1] << 3;
  func_0x020f2998(param_2,10);
  func_0x020f2998(extraout_r1_01 & 0xff,5);
  acStack_1c[5] = (char)(extraout_r1_02 << 2);
  cVar2 = func_0x020f2998(extraout_r1_01 & 0xff,5);
  acStack_1c[2] = cVar2 << 3;
  uVar3 = 0;
  do {
    CopyRectToBgTilemapRect
              (*(undefined4 *)(param_1 + 8),5,uVar3 * 4 + 0xe & 0xff,3,4,8,
               *(int *)(param_1 + 0x28) + 0xc,acStack_1c[uVar3 + 3],acStack_1c[uVar3],0x14,0x10);
    uVar3 = uVar3 + 1 & 0xff;
  } while (uVar3 < 3);
  ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 8),5);
  return;
}

