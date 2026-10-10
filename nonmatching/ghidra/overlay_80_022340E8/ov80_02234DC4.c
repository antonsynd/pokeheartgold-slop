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
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 Heap_Alloc();
undefined4 func_0x02003de8() __asm__("sub_02003DE8");
undefined4 func_0x020d0524() __asm__("sub_020D0524");
undefined4 func_0x02007c48() __asm__("sub_02007C48");
undefined4 NARC_New();
undefined4 func_0x020d0634() __asm__("sub_020D0634");
undefined4 func_0x020d05c4() __asm__("sub_020D05C4");
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 NARC_Delete();
undefined4 Heap_Free();

void ov80_02234DC4(undefined4 param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iStack_18;

  if (param_2 == 0) {
    uVar4 = 0xa2;
    uVar3 = 0x1e0;
  }
  else {
    uVar4 = 0xa1;
    uVar3 = 0x120;
  }
  uVar1 = Heap_Alloc(0x65,0x2000);
  func_0x020e5b44(uVar1,0,0x2000);
  uVar2 = NARC_New(0xb7,0x65);
  uVar4 = func_0x02007c48(uVar2,uVar4,&iStack_18,0x65);
  func_0x02003de8(*(undefined4 *)(iStack_18 + 0xc),uVar1,0x1000,param_1,0);
  func_0x020d2894(uVar1,0x2000);
  func_0x020d0524();
  func_0x020d05c4(uVar1,0x6000,uVar3);
  func_0x020d0634();
  NARC_Delete(uVar2);
  Heap_Free(uVar1);
  Heap_Free(uVar4);
  return;
}

