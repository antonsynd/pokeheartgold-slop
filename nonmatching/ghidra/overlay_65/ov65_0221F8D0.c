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
undefined4 LoadUserFrameGfx2(void *, int, unsigned short, unsigned char, unsigned char, int);
undefined4 FillWindowPixelBuffer(void *, unsigned char);
undefined4 AddWindowParameterized(void *, void *, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, unsigned short);
undefined4 Options_GetFrame(void *);
undefined4 LoadUserFrameGfx1(void *, int, unsigned short, unsigned char, unsigned char, int);
extern undefined ov65_0222010C;
extern undefined ov65_02220144;

void ov65_0221F8D0(undefined *param_1,undefined *param_2,undefined *param_3)

{
  uint uVar1;
  int iVar2;
  undefined2 *puVar3;
  ushort uVar4;
  int iVar5;
  
  AddWindowParameterized(param_1,param_2,1,2,1,10,2,8,1);
  FillWindowPixelBuffer(param_2,0);
  AddWindowParameterized(param_1,param_2 + 0x10,1,0x14,1,10,2,8,0x15);
  FillWindowPixelBuffer(param_2 + 0x10,0);
  AddWindowParameterized(param_1,param_2 + 0x60,1,0x1a,0x15,5,2,8,0x29);
  FillWindowPixelBuffer(param_2 + 0x60,0);
  uVar1 = Options_GetFrame(param_3);
  LoadUserFrameGfx2(param_1,0,0x3d9,10,(byte)uVar1,0x1a);
  LoadUserFrameGfx1(param_1,0,0x3f7,0xb,0,0x1a);
  AddWindowParameterized(param_1,param_2 + 0x150,0,2,0x15,0x14,2,0xd,1);
  FillWindowPixelBuffer(param_2 + 0x150,0);
  AddWindowParameterized(param_1,param_2 + 0x160,0,2,0x15,0x1b,2,0xd,0x28);
  FillWindowPixelBuffer(param_2 + 0x160,0);
  AddWindowParameterized(param_1,param_2 + 0x170,0,2,0x13,0x1b,4,0xd,0x36);
  FillWindowPixelBuffer(param_2 + 0x170,0);
  AddWindowParameterized(param_1,param_2 + 400,0,0x14,0x13,0xb,4,0xd,0xa2);
  FillWindowPixelBuffer(param_2 + 400,0);
  puVar3 = (undefined2 *)&ov65_0222010C;
  iVar5 = 0;
  uVar4 = 0x33;
  do {
    iVar2 = (iVar5 + 7) * 0x10;
    AddWindowParameterized(param_1,param_2 + iVar2,1,(byte)*puVar3,(byte)puVar3[1],8,2,8,uVar4);
    FillWindowPixelBuffer(param_2 + iVar2,0);
    iVar5 = iVar5 + 1;
    uVar4 = uVar4 + 0x10;
    puVar3 = puVar3 + 2;
  } while (iVar5 < 0xe);
  puVar3 = (undefined2 *)&ov65_02220144;
  iVar5 = 0;
  do {
    iVar2 = (iVar5 + 0x1a) * 0x10;
    AddWindowParameterized
              (param_1,param_2 + iVar2,4,(byte)*puVar3,(byte)puVar3[1],(byte)puVar3[2],
               (byte)puVar3[3],8,puVar3[4]);
    FillWindowPixelBuffer(param_2 + iVar2,0);
    iVar5 = iVar5 + 1;
    puVar3 = puVar3 + 5;
  } while (iVar5 < 8);
  return;
}

