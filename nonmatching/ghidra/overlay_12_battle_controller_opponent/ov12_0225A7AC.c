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
typedef void code(void);
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
undefined4 Heap_Alloc(undefined4, undefined4);
undefined4 SysTask_CreateOnMainQueue(undefined4, undefined4, undefined4);

void ov12_0225A7AC(undefined4 param_1,int param_2,undefined1 *param_3)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined1 *puVar5;
  undefined4 *puVar6;

  puVar1 = (undefined4 *)Heap_Alloc(5,0x34);
  iVar2 = 0;
  *(undefined1 *)((int)puVar1 + 10) = 0;
  *puVar1 = param_1;
  *(undefined1 *)(puVar1 + 2) = *param_3;
  *(undefined1 *)((int)puVar1 + 9) = param_3[1];
  *(undefined1 *)((int)puVar1 + 0xb) = param_3[2];
  puVar1[4] = *(undefined4 *)(param_3 + 0x20);
  *(undefined1 *)((int)puVar1 + 0x16) = param_3[3];
  *(undefined2 *)(puVar1 + 5) = 0;
  *(undefined1 *)(puVar1 + 6) = param_3[0x24];
  puVar5 = param_3;
  puVar6 = puVar1;
  do {
    *(undefined1 *)((int)puVar1 + iVar2 + 0xc) = param_3[iVar2 + 4];
    iVar3 = 0;
    do {
      iVar4 = iVar3 + 1;
      *(undefined1 *)((int)puVar6 + iVar3 + 0x1c) = puVar5[iVar3 + 8];
      iVar3 = iVar4;
    } while (iVar4 < 6);
    iVar2 = iVar2 + 1;
    puVar5 = puVar5 + 6;
    puVar6 = (undefined4 *)((int)puVar6 + 6);
  } while (iVar2 < 4);
  SysTask_CreateOnMainQueue(*(undefined4 *)(param_2 + 0x10),puVar1,0);
  return;
}

