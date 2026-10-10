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
undefined4 ov14_021F6B10();
void * GridInputHandler_Create(void *, void *, void *, void *, int, unsigned char, int);
undefined4 ov14_021F6B28();
extern undefined ov14_021F8B10;
extern undefined UNK_021f8b14 __asm__("sub_021F8B14");
extern undefined UNK_021f8b18 __asm__("sub_021F8B18");

void ov14_021F6A44(int *param_1)

{
  undefined *puVar1;
  int iVar2;
  int unaff_r5;
  __asm__ volatile("movs %0, r5" : "=l"(unaff_r5) : : "cc");


  switch(*(undefined4 *)(*param_1 + 8)) {
  case 0:
    unaff_r5 = 0;
    break;
  case 1:
    unaff_r5 = 2;
    break;
  case 2:
    unaff_r5 = 3;
    break;
  case 3:
    unaff_r5 = 6;
  }
  ov14_021F6B10(param_1);
  iVar2 = unaff_r5 * 0xc;
  puVar1 = GridInputHandler_Create
                     (*(undefined **)(&ov14_021F8B10 + iVar2),*(undefined **)(&UNK_021f8b14 + iVar2)
                      ,*(undefined **)(&UNK_021f8b18 + iVar2),(undefined *)param_1,1,
                      (byte)param_1[0xb],10);
  *(undefined **)(param_1[0xd] + 0x2c) = puVar1;
  ov14_021F6B28(param_1,param_1[0xb]);
  return;
}

