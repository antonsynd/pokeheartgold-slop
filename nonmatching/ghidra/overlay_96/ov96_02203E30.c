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
undefined4 GetMonPicHeightBySpeciesGenderForm();
undefined4 ov96_021EB588();
undefined4 ov96_021EB52C();
undefined4 ov96_02203F50();
undefined4 ov96_021EB630();
undefined4 ov96_021EB408();
undefined4 ov96_02203DCC();
undefined4 ov96_02203F0C();
undefined4 ov96_021EB564();
undefined4 ov96_021EB4F4();

void ov96_02203E30(undefined4 param_1,int param_2,undefined2 *param_3)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined2 *puVar5;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;
  
  iVar3 = 0;
  do {
    ov96_021EB408(param_1,3,2,0x65,2);
    iVar3 = iVar3 + 1;
  } while (iVar3 < 3);
  iVar4 = 0;
  iStack_24 = 0x10;
  iVar3 = param_2;
  puVar5 = param_3;
  do {
    uVar1 = ov96_021EB4F4(param_1,0x65,2);
    *(undefined4 *)(iVar3 + 0x54) = uVar1;
    uStack_18 = 0;
    iStack_20 = iStack_24 << 0xc;
    iVar2 = GetMonPicHeightBySpeciesGenderForm
                      (*puVar5,*(undefined1 *)((int)puVar5 + 7),0,puVar5[1] & 0xff,
                       *(undefined4 *)(puVar5 + 6));
    iStack_1c = (iVar2 + 0x178) * 0x1000;
    ov96_021EB588(*(undefined4 *)(iVar3 + 0x54),&iStack_20);
    ov96_021EB564(*(undefined4 *)(iVar3 + 0x54),iVar4 + 1);
    ov96_021EB52C(*(undefined4 *)(iVar3 + 0x54),1,1);
    ov96_021EB630(*(undefined4 *)(iVar3 + 0x54),0x13 - iVar4);
    uVar1 = ov96_021EB4F4(param_1,0x65,5);
    *(undefined4 *)(iVar3 + 0x60) = uVar1;
    ov96_021EB564(uVar1,0);
    iStack_1c = iStack_1c + -0x10000;
    ov96_021EB588(*(undefined4 *)(iVar3 + 0x60),&iStack_20);
    ov96_021EB630(*(undefined4 *)(iVar3 + 0x60),4);
    iVar4 = iVar4 + 1;
    iStack_24 = iStack_24 + 0x32;
    puVar5 = puVar5 + 8;
    iVar3 = iVar3 + 4;
  } while (iVar4 < 3);
  ov96_02203DCC(param_2,param_3);
  ov96_02203F50(param_1,param_2);
  ov96_02203F0C(param_2);
  return;
}

