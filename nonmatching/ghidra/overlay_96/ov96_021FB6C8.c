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
undefined4 LCRandom();
undefined4 ov96_021FC698();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 GF_AssertFail();

void ov96_021FB6C8(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  undefined4 uVar2;
  int extraout_r1;
  int aiStack_28 [7];
  
  aiStack_28[3] = 0x30;
  aiStack_28[4] = 0x80;
  aiStack_28[5] = 0xd0;
  if ((*(int *)(param_2 + 0x28) != 1) && (*(char *)(param_2 + 8) == '\0')) {
    aiStack_28[6] = param_4;
    if (*(int *)(param_2 + 0x28) == 2) {
      uVar1 = 0x18;
    }
    else {
      switch(*(undefined1 *)(param_2 + 9)) {
      case 0:
        uVar1 = 8;
        break;
      case 1:
        uVar1 = 6;
        break;
      case 2:
        uVar1 = 6;
        break;
      case 3:
        uVar1 = 6;
        break;
      case 4:
        uVar1 = 4;
        break;
      default:
        GF_AssertFail();
        uVar1 = 8;
      }
    }
    *(short *)(param_2 + 0x6a) = *(short *)(param_2 + 0x6a) + 1;
    if (uVar1 <= *(ushort *)(param_2 + 0x6a)) {
      aiStack_28[0] = 0;
      aiStack_28[1] = 0;
      aiStack_28[2] = 0;
      *(undefined2 *)(param_2 + 0x6a) = 0;
      uVar2 = LCRandom();
      func_0x020f2998(uVar2,7);
      aiStack_28[0] = (aiStack_28[*(byte *)(param_2 + 0x18) + 3] + extraout_r1 + -3) * 0x1000;
      aiStack_28[1] = 0x188000;
      ov96_021FC698(*(undefined4 *)(param_1 + 0xdc),*(undefined1 *)(param_2 + 0x18),aiStack_28);
    }
  }
  return;
}

