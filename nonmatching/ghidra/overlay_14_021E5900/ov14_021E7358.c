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
undefined4 GetBoxMonData();
undefined4 GetBoxMonNature();
undefined4 FUN_0206ff90() __asm__("sub_0206FF90");
undefined4 Heap_Alloc();

undefined4 *
ov14_021E7358(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  byte bVar2;
  char cVar3;
  undefined2 uVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  uint uVar8;
  undefined4 *puVar9;
  
  iVar5 = GetBoxMonData(param_1,0xac,0,param_4,param_4);
  if (iVar5 == 0) {
    puVar6 = (undefined4 *)0x0;
  }
  else {
    puVar6 = (undefined4 *)Heap_Alloc(10,0x1c);
    *puVar6 = param_1;
    uVar4 = GetBoxMonData(param_1,5,0);
    *(undefined2 *)(puVar6 + 1) = uVar4;
    uVar4 = GetBoxMonData(param_1,6,0);
    *(undefined2 *)((int)puVar6 + 6) = uVar4;
    uVar7 = GetBoxMonData(param_1,0,0);
    puVar6[2] = uVar7;
    uVar1 = GetBoxMonData(param_1,0xb1,0);
    *(undefined1 *)(puVar6 + 3) = uVar1;
    uVar1 = GetBoxMonData(param_1,0xb2,0);
    *(undefined1 *)((int)puVar6 + 0xd) = uVar1;
    uVar1 = GetBoxMonData(param_1,10,0);
    *(undefined1 *)((int)puVar6 + 0xe) = uVar1;
    uVar1 = GetBoxMonNature(param_1);
    *(undefined1 *)((int)puVar6 + 0xf) = uVar1;
    uVar4 = GetBoxMonData(param_1,0xb,0);
    *(undefined2 *)(puVar6 + 4) = uVar4;
    bVar2 = GetBoxMonData(param_1,0xa1,0);
    *(byte *)((int)puVar6 + 0x12) = bVar2 & 0x7f | *(byte *)((int)puVar6 + 0x12) & 0x80;
    cVar3 = GetBoxMonData(param_1,0x4c,0);
    *(byte *)((int)puVar6 + 0x12) = cVar3 << 7 | *(byte *)((int)puVar6 + 0x12) & 0x7f;
    bVar2 = FUN_0206ff90(param_1);
    *(byte *)((int)puVar6 + 0x13) = bVar2 & 0x7f | *(byte *)((int)puVar6 + 0x13) & 0x80;
    if (((*(short *)(puVar6 + 1) == 0x1d) || (*(short *)(puVar6 + 1) == 0x20)) ||
       ((int)((uint)*(byte *)((int)puVar6 + 0x12) << 0x18) < 0)) {
      *(byte *)((int)puVar6 + 0x13) = *(byte *)((int)puVar6 + 0x13) & 0x7f;
    }
    else {
      *(byte *)((int)puVar6 + 0x13) = *(byte *)((int)puVar6 + 0x13) | 0x80;
    }
    uVar8 = 0;
    puVar9 = puVar6;
    do {
      uVar4 = GetBoxMonData(param_1,uVar8 + 0x36,0);
      *(undefined2 *)(puVar9 + 5) = uVar4;
      uVar8 = uVar8 + 1;
      puVar9 = (undefined4 *)((int)puVar9 + 2);
    } while (uVar8 < 4);
  }
  return puVar6;
}

