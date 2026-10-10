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
undefined4 ov81_02242694();
undefined4 YesNoPrompt_HandleInput();
undefined4 ov81_02241BD0();
undefined4 ov81_0223FC60();
undefined4 func_0x02237254() __asm__("sub_02237254");
undefined4 ov81_0224086C();
undefined4 ov81_02242E08();
undefined4 YesNoPrompt_Reset();

undefined4 ov81_0223FBAC(int param_1)

{
  char cVar1;
  undefined1 uVar2;
  int iVar3;

  cVar1 = *(char *)(param_1 + 8);
  if (cVar1 == '\0') {
    uVar2 = ov81_0224086C(param_1,10);
    *(undefined1 *)(param_1 + 0x10) = uVar2;
    ov81_02241BD0(*(undefined4 *)(param_1 + 0x46c),*(undefined4 *)(param_1 + 0x4c));
    ov81_02242694(param_1,1);
    *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
  }
  else if (cVar1 == '\x01') {
    iVar3 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x46c));
    if (iVar3 == 1) {
      YesNoPrompt_Reset(*(undefined4 *)(param_1 + 0x46c));
      ov81_02242694(param_1,0);
      *(byte *)(param_1 + 0x13) = *(byte *)(param_1 + 0x13) & 0xf7;
      iVar3 = func_0x02237254(*(undefined1 *)(param_1 + 9));
      if (iVar3 == 1) {
        uVar2 = ov81_0224086C(param_1,2);
        *(undefined1 *)(param_1 + 0x10) = uVar2;
      }
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    else if (iVar3 == 2) {
      YesNoPrompt_Reset(*(undefined4 *)(param_1 + 0x46c));
      ov81_02242694(param_1,0);
      ov81_0223FC60(param_1);
      ov81_02242E08(*(undefined4 *)(param_1 + 0x388),0);
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
  }
  else if (cVar1 == '\x02') {
    return 1;
  }
  return 0;
}

