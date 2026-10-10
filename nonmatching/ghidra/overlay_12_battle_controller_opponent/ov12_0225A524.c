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
undefined4 func_0x020d4858(undefined4, undefined4, undefined4) __asm__("sub_020D4858");
undefined4 Heap_Alloc(undefined4, undefined4);
undefined4 SysTask_CreateOnMainQueue(undefined4, undefined4, undefined4);

void ov12_0225A524(undefined4 param_1,undefined4 *param_2,undefined1 *param_3)

{
  undefined2 *puVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined1 *puVar6;
  undefined4 *puVar7;
  
  puVar2 = (undefined4 *)Heap_Alloc(5,0x3c);
  func_0x020d4858(0,puVar2,0x3c);
  iVar3 = 0;
  *(undefined1 *)((int)puVar2 + 10) = 0;
  *(undefined1 *)((int)puVar2 + 0xb) = 0;
  *puVar2 = param_1;
  *(undefined1 *)(puVar2 + 2) = *param_3;
  *(undefined1 *)((int)puVar2 + 9) = *(undefined1 *)(param_2 + 0x65);
  *(undefined1 *)(puVar2 + 0xd) = *(undefined1 *)((int)param_2 + 0x195);
  puVar2[1] = param_2 + 10;
  *(undefined1 *)((int)puVar2 + 0x23) = param_3[1];
  *(undefined2 *)((int)puVar2 + 0x36) = *(undefined2 *)(param_3 + 0x24);
  *(undefined2 *)(puVar2 + 0xe) = *(undefined2 *)(param_3 + 0x26);
  *(undefined1 *)((int)puVar2 + 0x3a) = param_3[0x28];
  *(undefined1 *)((int)puVar2 + 0x3b) = param_3[0x29];
  puVar6 = param_3;
  puVar7 = puVar2;
  do {
    iVar4 = 0;
    do {
      iVar5 = iVar4 + 1;
      *(undefined1 *)((int)puVar7 + iVar4 + 0x10) = puVar6[iVar4 + 8];
      iVar4 = iVar5;
    } while (iVar5 < 6);
    iVar3 = iVar3 + 1;
    puVar6 = puVar6 + 6;
    puVar7 = (undefined4 *)((int)puVar7 + 6);
  } while (iVar3 < 2);
  iVar3 = 0;
  do {
    if (param_3[iVar3 + 8] == '\x02') {
      *(undefined1 *)((int)puVar2 + iVar3 + 0x1c) = 0;
    }
    else {
      *(undefined1 *)((int)puVar2 + iVar3 + 0x1c) = param_3[iVar3 + 2];
    }
    iVar3 = iVar3 + 1;
  } while (iVar3 < 6);
  iVar3 = 0;
  puVar6 = param_3;
  puVar7 = puVar2;
  do {
    puVar1 = (undefined2 *)(puVar6 + 0x14);
    puVar6 = puVar6 + 2;
    *(undefined2 *)(puVar7 + 9) = *puVar1;
    *(undefined1 *)((int)puVar2 + iVar3 + 0x2c) = param_3[iVar3 + 0x1c];
    iVar4 = iVar3 + 0x20;
    iVar5 = iVar3 + 0x30;
    iVar3 = iVar3 + 1;
    puVar7 = (undefined4 *)((int)puVar7 + 2);
    *(undefined1 *)((int)puVar2 + iVar5) = param_3[iVar4];
  } while (iVar3 < 4);
  SysTask_CreateOnMainQueue(*param_2,puVar2,0);
  return;
}

