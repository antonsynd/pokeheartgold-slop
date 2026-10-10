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
undefined4 ov83_02247944();
undefined4 ov83_0224152C();
undefined4 GF_AssertFail();
undefined4 Options_GetFrame();
undefined4 ov83_02240C60();
undefined4 Party_GetMonByIndex();
undefined4 ov83_0223FD14();
undefined4 ov83_02247768();
undefined4 PlaySE();
undefined4 ov83_0224777C();
undefined4 Mon_GetBoxMon();
extern undefined UNK_02247d0c __asm__("sub_02247D0C");

void ov83_022415F4(int param_1,undefined4 param_2,int param_3)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar2 = ov83_02247768(*(undefined1 *)(param_1 + 0x14));
  uVar2 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x7a4),uVar2);
  ov83_0224777C(*(undefined4 *)(param_1 + 0x50c),*(undefined1 *)(param_1 + 9),0);
  uVar3 = Mon_GetBoxMon(uVar2);
  ov83_02240C60(param_1,0,uVar3);
  uVar3 = Options_GetFrame(*(undefined4 *)(param_1 + 0x508));
  ov83_02247944(param_1 + 0xb0,uVar3);
  uVar1 = ov83_0223FD14(param_1,*(undefined2 *)(&UNK_02247d0c + (param_3 + -1) * 2),1);
  *(undefined1 *)(param_1 + 10) = uVar1;
  if (param_3 == 1) {
    ov83_0224152C(uVar2,0x18);
  }
  else if (param_3 == 2) {
    ov83_0224152C(uVar2,0x29);
  }
  else if (param_3 == 3) {
    ov83_0224152C(uVar2,0x18);
    ov83_0224152C(uVar2,0x29);
  }
  else {
    GF_AssertFail();
  }
  PlaySE(0x5ec);
  return;
}

