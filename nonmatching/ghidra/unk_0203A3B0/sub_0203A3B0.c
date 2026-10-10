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
undefined4 sub_0203A59C();
undefined4 sub_0203A4D4();
undefined4 Heap_AllocAtEnd();
undefined4 SysTask_CreateOnVWaitQueue();

undefined4 *
sub_0203A3B0(undefined4 param_1,undefined4 param_2,undefined2 param_3,undefined2 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,int param_8)

{
  undefined4 *puVar1;
  undefined4 uVar2;

  sub_0203A4D4(param_7,param_5,param_8,param_2);
  sub_0203A59C(param_7,param_5,param_2);
  puVar1 = (undefined4 *)Heap_AllocAtEnd(param_2,0x24);
  uVar2 = SysTask_CreateOnVWaitQueue(0x203a42d,puVar1,5);
  puVar1[6] = uVar2;
  *(undefined2 *)(puVar1 + 3) = param_3;
  *(undefined2 *)((int)puVar1 + 0xe) = param_4;
  *puVar1 = 0;
  *(char *)(puVar1 + 8) = (char)((int)(param_8 + ((uint)(param_8 >> 4) >> 0x1b)) >> 5);
  *(char *)((int)puVar1 + 0x21) = (char)param_7;
  *(undefined1 *)((int)puVar1 + 0x22) = 0;
  puVar1[1] = 3;
  puVar1[5] = param_6;
  puVar1[2] = 0;
  *(char *)(puVar1 + 4) = (char)param_5;
  *(undefined1 *)((int)puVar1 + 0x12) = 0;
  *(undefined1 *)((int)puVar1 + 0x11) = 0;
  puVar1[7] = 0x7000000;
  return puVar1;
}

