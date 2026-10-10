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
undefined4 sub_0203769C();
undefined4 ov37_021E6848();
undefined4 ClearFrameAndWindow2();
undefined4 ov37_021E7844();
undefined4 sub_02037108();
undefined4 sub_02038C1C();
undefined4 ov37_021E68AC();
undefined4 sub_02037454();
undefined4 sub_02034818();
undefined4 YesNoPrompt_HandleInput();
undefined4 ov37_021E78A4();
undefined4 BufferPlayersName();
undefined4 ov37_021E75C4();

undefined4 ov37_021E6D14(int param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  
  iVar1 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x93f0));
  iVar2 = ov37_021E75C4();
  if ((*(int *)(param_1 + 0x318) == iVar2) && (*(int *)(param_1 + 0x93b4) == 0)) {
    if (iVar1 == 1) {
      ov37_021E7844(param_1,0xf);
      sub_02037108(0x7f,0,0);
      uVar3 = sub_02034818(0);
      BufferPlayersName(*(undefined4 *)(param_1 + 0xc),0,uVar3);
      param_2 = 2;
      ov37_021E78A4(param_1);
    }
    else if (iVar1 == 2) {
      ov37_021E7844(param_1,4);
      ov37_021E6848(param_1 + 0x248,0);
      ClearFrameAndWindow2(param_1 + 0x2d8,1);
      ov37_021E78A4(param_1);
      iVar1 = sub_0203769C();
      if (iVar1 == 0) {
        iVar1 = sub_02037454();
        sub_02038C1C(iVar1 + 1);
        *(undefined4 *)(param_1 + 0x93f4) = 1;
      }
    }
    ov37_021E68AC(param_1);
    return param_2;
  }
  ov37_021E68AC(param_1);
  return param_2;
}

