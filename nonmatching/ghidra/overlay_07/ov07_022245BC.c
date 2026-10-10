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
undefined4 ov07_0221FA04(undefined4, undefined4);
undefined4 ov07_0221FAA0(undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_0222446C(undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 ov07_0221C4A8(undefined4, undefined4);
undefined4 ov07_02232020(undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_0221C470(undefined4);
undefined4 Heap_Free(undefined4);

void ov07_022245BC(undefined4 param_1)

{
  undefined2 uVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [8];
  undefined4 uStack_5c;
  
  puVar2 = (undefined4 *)ov07_022324D8(param_1,0x54);
  *puVar2 = param_1;
  iVar3 = ov07_0221C4A8(param_1,0);
  if (iVar3 < 0x803) {
    if (iVar3 < 0x802) {
      if (iVar3 < 0x109) {
        if (iVar3 < 0x102) goto LAB_02224722;
        if ((iVar3 == 0x102) || (iVar3 == 0x104)) {
          uVar5 = ov07_0221C468(*puVar2);
          uVar1 = ov07_0221FAA0(*puVar2,uVar5);
          *(undefined2 *)((int)puVar2 + 10) = uVar1;
          uVar5 = ov07_0221C4A8(param_1,0);
          ov07_02232020(*puVar2,uVar5,auStack_64,auStack_68);
          puVar2[3] = uStack_5c;
          goto LAB_02224722;
        }
        if (iVar3 != 0x108) goto LAB_02224722;
      }
      else if (iVar3 != 0x110) goto LAB_02224722;
      uVar5 = ov07_0221C470(*puVar2);
      uVar1 = ov07_0221FAA0(*puVar2,uVar5);
      *(undefined2 *)((int)puVar2 + 10) = uVar1;
      uVar5 = ov07_0221C4A8(param_1,0);
      ov07_02232020(*puVar2,uVar5,auStack_64,auStack_68);
      puVar2[3] = uStack_5c;
    }
    else {
      iVar3 = 0;
      do {
        iVar4 = ov07_0221FA04(param_1,iVar3);
        iVar7 = iVar3;
        if ((iVar4 == 0) || (iVar4 == 2)) break;
        iVar3 = iVar3 + 1;
        iVar7 = 0xff;
      } while (iVar3 < 4);
      if (iVar7 == 0xff) {
        iVar7 = 0;
      }
      uVar5 = ov07_0221FA48(*puVar2,iVar7);
      puVar2[3] = uVar5;
    }
  }
  else if (iVar3 < 0x809) {
    if (iVar3 < 0x808) {
      if (iVar3 == 0x804) {
        iVar3 = 0;
        do {
          iVar4 = ov07_0221FA04(param_1,iVar3);
          iVar7 = iVar3;
          if (iVar4 == 4) break;
          iVar3 = iVar3 + 1;
          iVar7 = 0xff;
        } while (iVar3 < 4);
        if (iVar7 == 0xff) {
          iVar7 = 0;
        }
        uVar5 = ov07_0221FA48(*puVar2,iVar7);
        puVar2[3] = uVar5;
      }
    }
    else {
      iVar3 = 0;
      do {
        iVar4 = ov07_0221FA04(param_1,iVar3);
        iVar7 = iVar3;
        if ((iVar4 == 1) || (iVar4 == 3)) break;
        iVar3 = iVar3 + 1;
        iVar7 = 0xff;
      } while (iVar3 < 4);
      if (iVar7 == 0xff) {
        iVar7 = 0;
      }
      uVar5 = ov07_0221FA48(*puVar2,iVar7);
      puVar2[3] = uVar5;
    }
  }
  else if (iVar3 == 0x810) {
    iVar3 = 0;
    do {
      iVar4 = ov07_0221FA04(param_1,iVar3);
      iVar7 = iVar3;
      if (iVar4 == 5) break;
      iVar3 = iVar3 + 1;
      iVar7 = 0xff;
    } while (iVar3 < 4);
    if (iVar7 == 0xff) {
      iVar7 = 0;
    }
    uVar5 = ov07_0221FA48(*puVar2,iVar7);
    puVar2[3] = uVar5;
  }
LAB_02224722:
  if (puVar2[3] != 0) {
    uVar1 = Pokepic_GetAttr(puVar2[3],1);
    *(undefined2 *)(puVar2 + 2) = uVar1;
    uVar1 = Pokepic_GetAttr(puVar2[3],0x29);
    *(undefined2 *)((int)puVar2 + 10) = uVar1;
    *(short *)((int)puVar2 + 10) = *(short *)((int)puVar2 + 10) + 0x10;
    uVar5 = ov07_0221C4A8(param_1,1);
    puVar2[0xd] = uVar5;
    uVar5 = ov07_0221C4A8(param_1,2);
    puVar2[0xe] = uVar5;
    uVar5 = ov07_0221C4A8(param_1,3);
    puVar2[0xf] = uVar5;
    uVar5 = ov07_0221C4A8(param_1,4);
    puVar2[0x10] = uVar5;
    uVar5 = ov07_0221C4A8(param_1,5);
    puVar2[0x11] = uVar5;
    uVar5 = ov07_0221C4A8(param_1,6);
    puVar2[0x12] = uVar5;
    uVar5 = ov07_0221C4A8(param_1,7);
    puVar2[0x13] = uVar5;
    uVar6 = ov07_0221C4A8(param_1,6);
    puVar2[0x12] = uVar6 & 0xffff;
    iVar3 = ov07_0221C4A8(param_1,6);
    puVar2[0x14] = iVar3 >> 0x10;
    uVar5 = ov07_0221C410(*puVar2,0x222446d,puVar2);
    ov07_0222446C(uVar5,puVar2);
    return;
  }
  Heap_Free(puVar2);
  return;
}

