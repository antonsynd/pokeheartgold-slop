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
undefined4 ov96_021EB588();
undefined4 ov96_021EB52C();
undefined4 Sprite_SetMatrix();
undefined4 ov96_021E5F24();
undefined4 ov96_021EB564();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 Sprite_SetDrawFlag();
undefined4 ov96_021EA2C4();
undefined4 ov96_021EB5E8();
undefined4 ov96_021EB3E4();

void ov96_02214718(undefined4 param_1,undefined4 *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  int aiStack_38 [9];
  
  aiStack_38[6] = 0x36000;
  aiStack_38[7] = 0x298000;
  aiStack_38[8] = 0;
  aiStack_38[3] = 0xb0000;
  aiStack_38[4] = 0x280000;
  aiStack_38[5] = 0;
  uVar1 = ov96_021EB3E4(param_1,0,2,0x66,9);
  ov96_021EB52C(uVar1,1,1);
  ov96_021EB588(uVar1,aiStack_38 + 6);
  iVar2 = ov96_021E5F24(param_2[1]);
  ov96_021EB564(uVar1,iVar2 + 1);
  uVar1 = ov96_021EB3E4(param_1,0,2,0x66,10);
  ov96_021EB52C(uVar1,1,1);
  ov96_021EB588(uVar1,aiStack_38 + 3);
  ov96_021EB564(uVar1,5);
  param_2[0x13] = uVar1;
  uVar3 = 0;
  do {
    uVar1 = ov96_021EB5E8(param_1);
    uVar1 = ov96_021EA2C4(param_3,uVar1,0,*param_2);
    param_2[uVar3 + 2] = uVar1;
    Sprite_SetDrawFlag(uVar1,1);
    aiStack_38[0] = (uint)*(byte *)(uVar3 + 0x221d648) << 0xc;
    aiStack_38[1] = 0x280000;
    aiStack_38[2] = 0;
    Sprite_SetMatrix(param_2[uVar3 + 2],aiStack_38);
    Sprite_SetAnimCtrlSeq(param_2[uVar3 + 2],*(undefined1 *)(uVar3 + 0x221d64c));
    uVar3 = uVar3 + 1 & 0xff;
  } while (uVar3 < 2);
  return;
}

