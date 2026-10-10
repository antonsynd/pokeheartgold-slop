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
undefined4 ov102_021EC4CC();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 Sprite_SetMatrix();
undefined4 func_0x020f2ba4() __asm__("sub_020F2BA4");
undefined4 ov102_021E8F7C();

void ov102_021EB9C0(int param_1,int param_2)

{
  int iVar1;
  int extraout_r1;
  undefined4 uVar2;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  undefined4 uStack_10;
  
  iVar1 = ov102_021E8F7C(*(undefined4 *)(param_1 + 4));
  uStack_10 = 0;
  if (param_2 == 0xfe) {
    iStack_18 = 0xe0;
    iStack_14 = 0xb0;
    uVar2 = 0x10;
  }
  else if (iVar1 == 0) {
    func_0x020f2ba4(param_2,3);
    iStack_18 = extraout_r1 * 0x50 + 0x30;
    iVar1 = func_0x020f2ba4(param_2,3);
    iStack_14 = iVar1 * 0x18 + 0x40;
    uVar2 = 4;
  }
  else {
    ov102_021EC4CC(param_2,&iStack_1c,&iStack_20);
    uVar2 = 6;
    iStack_18 = iStack_1c + 0x1a;
    iStack_14 = iStack_20 + 0x48;
  }
  iStack_18 = iStack_18 << 0xc;
  iStack_14 = iStack_14 << 0xc;
  Sprite_SetMatrix(*(undefined4 *)(param_1 + 0x5c),&iStack_18);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x5c),uVar2);
  return;
}

