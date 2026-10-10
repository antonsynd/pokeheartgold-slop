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
undefined4 func_0x02037bec() __asm__("sub_02037BEC");
undefined4 sub_02037AC0();
undefined4 YesNoPrompt_HandleInput();
undefined4 ov81_02242D88();
undefined4 ov81_02241BD0();
undefined4 ov81_02240FA4();
undefined4 ov81_022408A0();
undefined4 YesNoPrompt_Reset();
undefined4 func_0x02237254() __asm__("sub_02237254");
undefined4 sub_02037B38();
undefined4 ov81_0224086C();
undefined4 func_0x02236dd4() __asm__("sub_02236DD4");
extern undefined UNK_0223f1c2 __asm__("sub_0223F1C2");

undefined4 ov81_0223F1A4(int param_1)

{
  byte bVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  int iVar4;

  uVar3 = func_0x02236dd4(*(undefined1 *)(param_1 + 9));
  bVar1 = *(byte *)(param_1 + 8);
  if (bVar1 < 8) {
    switch(bVar1) {
    case 0:
      ov81_02242D88(*(undefined4 *)(param_1 + 0x388),0);
      ov81_02242D88(*(undefined4 *)(param_1 + 0x390),0);
      *(undefined1 *)(param_1 + 0x19) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
      break;
    case 1:
      *(undefined1 *)(param_1 + 0x19) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
      break;
    case 2:
      *(byte *)(param_1 + 8) = bVar1 + 1;
      break;
    case 3:
      *(undefined1 *)(param_1 + 0x19) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
      break;
    case 4:
      ov81_022408A0(param_1,0);
      uVar2 = ov81_0224086C(param_1,1);
      *(undefined1 *)(param_1 + 0x10) = uVar2;
      ov81_02241BD0(*(undefined4 *)(param_1 + 0x46c),*(undefined4 *)(param_1 + 0x4c));
      ov81_02242694(param_1,1);
      *(undefined1 *)(param_1 + 0x19) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
      break;
    case 5:
      iVar4 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x46c));
      if (iVar4 == 1) {
        YesNoPrompt_Reset(*(undefined4 *)(param_1 + 0x46c));
        ov81_02242694(param_1,0);
        *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
      }
      else if (iVar4 == 2) {
        YesNoPrompt_Reset(*(undefined4 *)(param_1 + 0x46c));
        ov81_02242694(param_1,0);
        ov81_02242D88(*(undefined4 *)(param_1 + 0x388),1);
        ov81_02242D88(*(undefined4 *)(param_1 + 0x390),1);
        *(char *)(param_1 + 0x11) = *(char *)(param_1 + 0x11) + -1;
        *(undefined2 *)(param_1 + (uint)*(byte *)(param_1 + 0x11) * 2 + 0x3c8) = 0;
        iVar4 = func_0x02237254(*(undefined1 *)(param_1 + 9));
        if (iVar4 == 1) {
          ov81_02240FA4(param_1,8,0);
        }
        return 1;
      }
      break;
    case 6:
      iVar4 = func_0x02237254(*(undefined1 *)(param_1 + 9));
      if (iVar4 == 0) {
        return 1;
      }
      iVar4 = ov81_02240FA4(param_1,8,0);
      if (iVar4 == 1) {
        uVar2 = ov81_0224086C(param_1,2);
        *(undefined1 *)(param_1 + 0x10) = uVar2;
        func_0x02037bec();
        sub_02037AC0(0xa4);
        *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
      }
      break;
    case 7:
      iVar4 = sub_02037B38(0xa4,(int)*(short *)(&UNK_0223f1c2 + (uint)bVar1 * 2),uVar3);
      if (iVar4 == 1) {
        func_0x02037bec();
        return 1;
      }
    }
  }
  return 0;
}

