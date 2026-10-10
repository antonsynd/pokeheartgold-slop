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
undefined4 Heap_Alloc(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221C4A8(undefined4, undefined4);
undefined4 func_0x020e5b44(undefined4, undefined4, undefined4) __asm__("sub_020E5B44");
undefined4 GF_AssertFail(void);

undefined4 *
ov07_0221DF1C(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;

  puVar1 = (undefined4 *)Heap_Alloc(*param_1,0x4c,param_3,param_4,param_4);
  if (puVar1 == (undefined4 *)0x0) {
    GF_AssertFail();
    return (undefined4 *)0x0;
  }
  func_0x020e5b44(puVar1,0,0x4c);
  *puVar1 = 0;
  *(undefined1 *)((int)puVar1 + 5) = 0;
  *(undefined1 *)((int)puVar1 + 0xf) = 0;
  *(undefined1 *)((int)puVar1 + 0xe) = 0;
  puVar1[0x12] = param_1;
  *(undefined1 *)((int)puVar1 + 9) = 0;
  *(undefined1 *)((int)puVar1 + 10) = 0x1f;
  *(undefined1 *)((int)puVar1 + 0xb) = 0x1d;
  *(undefined1 *)(puVar1 + 3) = 2;
  iVar2 = ov07_0221C4A8(param_1,5);
  if (iVar2 == 1) {
    *(undefined1 *)((int)puVar1 + 9) = 0;
    *(undefined1 *)((int)puVar1 + 10) = 0x1f;
    *(undefined1 *)((int)puVar1 + 0xb) = 0xf;
    *(undefined1 *)(puVar1 + 3) = 7;
  }
  iVar2 = ov07_0221C4A8(param_1,5);
  if (iVar2 == 2) {
    *(undefined1 *)((int)puVar1 + 9) = 7;
    *(undefined1 *)((int)puVar1 + 10) = 0xf;
    *(undefined1 *)((int)puVar1 + 0xb) = 0x1d;
    *(undefined1 *)(puVar1 + 3) = 2;
  }
  iVar2 = 0;
  puVar3 = param_1;
  puVar4 = puVar1;
  do {
    iVar2 = iVar2 + 1;
    puVar4[7] = puVar3[0x25];
    puVar3 = puVar3 + 1;
    puVar4 = puVar4 + 1;
  } while (iVar2 < 10);
  *(undefined1 *)(param_1 + 0x5f) = 1;
  return puVar1;
}

