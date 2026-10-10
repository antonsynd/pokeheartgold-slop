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
undefined4 ov14_021F6698();
undefined4 BufferBoxMonNickname(void *, unsigned int, void *);
undefined4 ov14_021E60C0();

void ov14_021F67B0(undefined *param_1,undefined4 param_2,int param_3)

{
  undefined *puVar1;
  int unaff_r5;
  __asm__ volatile("movs %0, r5" : "=l"(unaff_r5) : : "cc");


  switch(param_2) {
  case 0:
    unaff_r5 = 2;
    break;
  case 1:
    unaff_r5 = 3;
    puVar1 = ov14_021E60C0((int)param_1,(uint)(byte)param_1[0x1f],(uint)(byte)param_1[0x21]);
    BufferBoxMonNickname(*(undefined **)(*(int *)(param_1 + 0x34) + 0x24),0,puVar1);
    break;
  case 2:
    unaff_r5 = 4;
    puVar1 = ov14_021E60C0((int)param_1,(uint)(byte)param_1[0x1f],(uint)(byte)param_1[0x21]);
    BufferBoxMonNickname(*(undefined **)(*(int *)(param_1 + 0x34) + 0x24),0,puVar1);
    break;
  case 3:
    unaff_r5 = 0x1f;
    break;
  case 4:
    unaff_r5 = 0x20;
    puVar1 = ov14_021E60C0((int)param_1,(uint)(byte)param_1[0x1f],(uint)(byte)param_1[0x21]);
    BufferBoxMonNickname(*(undefined **)(*(int *)(param_1 + 0x34) + 0x24),0,puVar1);
    break;
  case 5:
    unaff_r5 = 0x21;
    break;
  case 6:
    unaff_r5 = 6;
  }
  ov14_021F6698(param_1,unaff_r5,param_3);
  return;
}

