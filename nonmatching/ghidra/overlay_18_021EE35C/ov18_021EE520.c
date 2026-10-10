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
undefined4 MessagePrinter_Delete();
undefined4 func_0x02007c10() __asm__("sub_02007C10");
undefined4 MessagePrinter_New();
undefined4 func_0x0200cdf0() __asm__("sub_0200CDF0");
undefined4 Heap_Free();
undefined4 func_0x0201da04() __asm__("sub_0201DA04");

void ov18_021EE520(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  short sVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  uVar1 = func_0x02007c10(*(undefined4 *)(param_1 + 0x854),1,1,&iStack_1c,0x25);
  uVar4 = 0;
  iVar5 = *(int *)(iStack_1c + 0x14);
  iVar3 = param_1 + 0xc + param_2 * 0x10;
  sVar2 = 0;
  do {
    func_0x0201da04(iVar3,iVar5 + 0x300,0,0,8,8,sVar2,0,8,8,0xff);
    func_0x0201da04(iVar3,iVar5 + 0x20,0,0,8,8,sVar2,8,8,8,0xff);
    uVar4 = uVar4 + 1;
    sVar2 = sVar2 + 8;
  } while (uVar4 < 3);
  Heap_Free(uVar1);
  uVar1 = MessagePrinter_New(0xf,8,7,0x25);
  func_0x0200cdf0(uVar1,param_3,3,2,iVar3,0,4);
  MessagePrinter_Delete(uVar1);
  return;
}

