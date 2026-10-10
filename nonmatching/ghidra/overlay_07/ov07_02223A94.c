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
undefined4 ov07_022223F0(undefined4, undefined4, undefined4, undefined4);
undefined4 Pokepic_SetAttr(undefined4, undefined4, undefined4);
undefined4 ov07_02222004(undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_0221C4A8(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 Heap_Alloc(undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_0221C470(undefined4);
undefined4 ov07_0221BFD0(void);

void ov07_02223A94(undefined4 param_1)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  int iVar4;
  int iVar5;
  undefined4 uStack_18;

  uVar2 = ov07_0221BFD0();
  puVar3 = (undefined1 *)Heap_Alloc(uVar2,0x2c);
  *puVar3 = 0;
  *(undefined4 *)(puVar3 + 4) = param_1;
  uVar2 = ov07_0221C4A8(param_1,2);
  *(undefined4 *)(puVar3 + 0x24) = uVar2;
  uVar2 = ov07_0221C4A8(param_1,0);
  *(undefined4 *)(puVar3 + 0x20) = uVar2;
  iVar4 = ov07_0221C4A8(param_1,3);
  if ((iVar4 == 0) || (iVar4 == 2)) {
    uStack_18 = ov07_0221C470(*(undefined4 *)(puVar3 + 4));
  }
  else {
    uStack_18 = ov07_0221C468(*(undefined4 *)(puVar3 + 4));
  }
  uVar2 = ov07_0221C4A8(param_1,1);
  ov07_022223F0(puVar3 + 0xc,*(undefined4 *)(puVar3 + 0x20),uVar2,*(undefined4 *)(puVar3 + 0x24));
  iVar5 = ov07_02222004(param_1,uStack_18);
  *(int *)(puVar3 + 0x14) = iVar5 * *(int *)(puVar3 + 0x14);
  if (iVar4 == 2) {
    iVar5 = -iVar5;
  }
  uVar2 = ov07_0221FA48(*(undefined4 *)(puVar3 + 4),uStack_18);
  *(undefined4 *)(puVar3 + 8) = uVar2;
  iVar4 = ov07_0221C4A8(param_1,3);
  if (iVar4 == 1) {
    uVar1 = ov07_0221C4A8(param_1,4);
    *(undefined2 *)(puVar3 + 0x28) = uVar1;
    uVar1 = ov07_0221C4A8(param_1,5);
  }
  else {
    uVar1 = 0x28;
    *(short *)(puVar3 + 0x28) = (short)iVar5 * 0x28;
  }
  *(undefined2 *)(puVar3 + 0x2a) = uVar1;
  Pokepic_SetAttr(*(undefined4 *)(puVar3 + 8),10,(int)*(short *)(puVar3 + 0x28));
  Pokepic_SetAttr(*(undefined4 *)(puVar3 + 8),0xb,(int)*(short *)(puVar3 + 0x2a));
  ov07_0221C410(*(undefined4 *)(puVar3 + 4),0x2223a1d,puVar3);
  return;
}

