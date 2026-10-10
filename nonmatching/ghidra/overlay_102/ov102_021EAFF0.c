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
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 ov102_021EB088();
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 ov102_021EAD5C();
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 Sprite_SetMatrix();

void ov102_021EAFF0(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  short sStack_18;
  short sStack_16;
  int iStack_14;
  int iStack_10;
  undefined4 uStack_c;

  if (*(int *)(param_1 + 0x8c) == 0) {
    iStack_14 = 0x80000;
    iStack_10 = 0x18000;
  }
  else {
    ov102_021EAD5C(param_1 + 0x84 + param_2 * 4,&sStack_18);
    iStack_14 = (int)sStack_18 << 0xc;
    iStack_10 = (int)sStack_16 << 0xc;
  }
  uStack_c = 0;
  Sprite_SetMatrix(*(undefined4 *)(param_1 + 0x60),&iStack_14);
  iVar1 = 0xc0 - *(short *)(param_1 + 0x1e2);
  if (iVar1 < 1) {
    uVar2 = func_0x020f2178(iVar1 * 0x1000);
    func_0x020f24c8(uVar2,0x3f000000);
  }
  else {
    uVar2 = func_0x020f2178(iVar1 * 0x1000);
    func_0x020f1520(0x3f000000,uVar2);
  }
  iVar1 = func_0x020f2104();
  iStack_10 = iStack_10 + iVar1;
  Sprite_SetMatrix(*(undefined4 *)(param_1 + 100),&iStack_14);
  ov102_021EB088(param_1,1);
  return;
}

