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
undefined4 ov49_022655F4();
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 func_0x020182b0() __asm__("sub_020182B0");
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 ov49_02259154();
undefined4 ov49_0226786C();
undefined4 ov49_0226540C();
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
extern undefined UNK_0226a44f __asm__("sub_0226A44F");

void ov49_02266F14(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iStack_34;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  ov49_02259154(*(undefined4 *)(param_2 + 8),&iStack_24);
  if ((byte)(&UNK_0226a44f)[*(char *)(param_2 + 0x955)] == 0) {
    uVar2 = func_0x020f2178(0);
    func_0x020f24c8(uVar2,0x3f000000);
  }
  else {
    uVar2 = func_0x020f2178((uint)(byte)(&UNK_0226a44f)[*(char *)(param_2 + 0x955)] << 0xc);
    func_0x020f1520(0x3f000000,uVar2);
  }
  iVar6 = iStack_1c;
  iVar5 = iStack_20;
  iVar4 = iStack_24;
  iVar3 = func_0x020f2104();
  ov49_0226540C(param_2 + 0xa04,iVar4,iVar4,iVar5,iVar5 - iVar3,iVar6,iVar6,10);
  iVar4 = 0;
  *(undefined2 *)(param_2 + 0x956) = 0;
  *(undefined1 *)(param_2 + 0x954) = 0;
  if ('\0' < *(char *)(param_2 + 0x955)) {
    iStack_34 = param_2 + 0xc;
    iVar6 = param_2 + 0x98c;
    iVar5 = param_2 + 0x968;
    do {
      func_0x020182b0(iStack_34,&iStack_24,&iStack_20,&iStack_1c);
      cVar1 = *(char *)(param_2 + iVar4 + 0x960);
      if (cVar1 == '\0') {
        iStack_28 = iStack_24;
        iStack_2c = iStack_20 + 0x40000;
        iStack_30 = iStack_1c + -0x40000;
      }
      else if (cVar1 == '\x01') {
        iStack_28 = iStack_24 + 0x40000;
        iStack_2c = iStack_20 + 0x40000;
        iStack_30 = iStack_1c;
      }
      else if (cVar1 == '\x02') {
        iStack_28 = iStack_24 + -0x40000;
        iStack_2c = iStack_20 + 0x40000;
        iStack_30 = iStack_1c;
      }
      ov49_0226540C(iVar6,iStack_24,iStack_28,iStack_20,iStack_2c,iStack_1c,iStack_30,0x1a);
      ov49_022655F4(iVar5,0,0xaaa,0x6000);
      ov49_0226786C(param_1,param_2,iVar4,3);
      iVar4 = iVar4 + 1;
      iStack_34 = iStack_34 + 0x78;
      iVar6 = iVar6 + 0x28;
      iVar5 = iVar5 + 0xc;
    } while (iVar4 < *(char *)(param_2 + 0x955));
  }
  *(undefined1 *)(param_2 + 0x964) = 0;
  return;
}

