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
undefined4 ov07_0223192C(undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 ov07_0221C4A8(undefined4);
undefined4 ov07_02232020(undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_02231A50(undefined4, undefined4, undefined4);
undefined4 ov07_0221C470(undefined4);
undefined4 ov07_02231FE4(undefined4, undefined4);

void ov07_0222B988(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined2 uVar6;
  undefined1 auStack_18 [4];
  undefined4 uStack_14;
  
  uStack_14 = param_4;
  iVar1 = ov07_022324D8(param_1,0x90);
  ov07_02231FE4(param_1,iVar1);
  uVar2 = ov07_0221C468(*(undefined4 *)(iVar1 + 4));
  uVar3 = ov07_0221C468(*(undefined4 *)(iVar1 + 4));
  ov07_02231A50(*(undefined4 *)(iVar1 + 4),uVar3,iVar1 + 0x5c);
  uVar3 = ov07_0221C470(*(undefined4 *)(iVar1 + 4));
  ov07_02231A50(*(undefined4 *)(iVar1 + 4),uVar3,iVar1 + 0x60);
  iVar4 = ov07_0223192C(*(undefined4 *)(iVar1 + 4),uVar2);
  if (iVar4 == 3) {
    uVar6 = 1;
  }
  else {
    uVar6 = 0xffff;
  }
  *(undefined2 *)(iVar1 + 0x54) = uVar6;
  uVar2 = ov07_0221C468(*(undefined4 *)(iVar1 + 4));
  iVar4 = ov07_0223192C(*(undefined4 *)(iVar1 + 4),uVar2);
  uVar2 = ov07_0221C470(*(undefined4 *)(iVar1 + 4));
  iVar5 = ov07_0223192C(*(undefined4 *)(iVar1 + 4),uVar2);
  *(uint *)(iVar1 + 0x58) = (uint)(iVar4 == iVar5);
  *(undefined4 *)(iVar1 + 0x68) = 0;
  uVar2 = ov07_0221C4A8(param_1);
  ov07_02232020(param_1,uVar2,iVar1 + 0x1c,auStack_18);
  iVar4 = Pokepic_GetAttr(*(undefined4 *)(iVar1 + 0x24),1);
  iVar4 = iVar4 - *(short *)(iVar1 + 0x5e);
  if (*(short *)(iVar1 + 0x54) < 1) {
    *(undefined4 *)(iVar1 + 0x6c) = 0xffffffb0;
    *(undefined4 *)(iVar1 + 0x70) = 0x14f;
    *(int *)(iVar1 + 0x74) = (int)*(short *)(iVar1 + 0x5c);
    *(int *)(iVar1 + 0x78) = *(short *)(iVar1 + 0x5e) + iVar4;
    *(int *)(iVar1 + 0x7c) = *(short *)(iVar1 + 0x62) + iVar4;
    *(int *)(iVar1 + 0x80) = *(short *)(iVar1 + 0x5e) + iVar4;
    *(undefined4 *)(iVar1 + 0x84) = 0xfffffd76;
    *(undefined4 *)(iVar1 + 0x88) = 10;
    uVar2 = Pokepic_GetAttr(*(undefined4 *)(iVar1 + 0x24),2);
  }
  else {
    *(undefined4 *)(iVar1 + 0x6c) = 0x14f;
    *(undefined4 *)(iVar1 + 0x70) = 0xffffffb0;
    *(int *)(iVar1 + 0x74) = (int)*(short *)(iVar1 + 0x5c);
    *(int *)(iVar1 + 0x78) = *(short *)(iVar1 + 0x5e) + iVar4;
    *(int *)(iVar1 + 0x7c) = *(short *)(iVar1 + 0x62) + iVar4;
    *(int *)(iVar1 + 0x80) = *(short *)(iVar1 + 0x5e) + iVar4;
    *(undefined4 *)(iVar1 + 0x84) = 10;
    *(undefined4 *)(iVar1 + 0x88) = 0xfffffd76;
    uVar2 = Pokepic_GetAttr(*(undefined4 *)(iVar1 + 0x24),2);
  }
  *(undefined4 *)(iVar1 + 0x8c) = uVar2;
  ov07_0221C410(*(undefined4 *)(iVar1 + 4),0x222b899,iVar1);
  return;
}

