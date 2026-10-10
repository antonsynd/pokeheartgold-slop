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
undefined4 ov07_02222A44(undefined4, undefined4, undefined4);
undefined4 ov07_0223197C(undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_0221C4A8(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 Heap_Alloc(undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_0221C470(undefined4);
undefined4 GF_AssertFail(void);
undefined4 ov07_0221BFD0(void);

void ov07_02223BC0(undefined4 param_1)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  int iVar5;
  
  uVar2 = ov07_0221BFD0();
  puVar3 = (undefined4 *)Heap_Alloc(uVar2,0x30);
  *puVar3 = param_1;
  uVar2 = ov07_0221C4A8(param_1,0);
  uVar4 = ov07_0221C4A8(param_1,1);
  ov07_02222A44(puVar3 + 1,uVar2,uVar4);
  iVar5 = ov07_0221C4A8(param_1,2);
  if (iVar5 < 9) {
    if (1 < iVar5) {
      if (iVar5 == 2) {
        uVar2 = ov07_0221C468(param_1);
        uVar2 = ov07_0221FA48(*puVar3,uVar2);
        puVar3[10] = uVar2;
        puVar3[4] = -puVar3[4];
        goto LAB_02223c80;
      }
      if (iVar5 == 4) {
        uVar2 = ov07_0221C468(*puVar3);
        uVar2 = ov07_0223197C(*puVar3,uVar2);
        uVar2 = ov07_0221FA48(*puVar3,uVar2);
        puVar3[10] = uVar2;
        puVar3[4] = -puVar3[4];
        goto LAB_02223c80;
      }
      if (iVar5 == 8) {
        uVar2 = ov07_0221C470(param_1);
        uVar2 = ov07_0221FA48(*puVar3,uVar2);
        puVar3[10] = uVar2;
        goto LAB_02223c80;
      }
    }
  }
  else if (iVar5 == 0x10) {
    uVar2 = ov07_0221C470(*puVar3);
    uVar2 = ov07_0223197C(*puVar3,uVar2);
    uVar2 = ov07_0221FA48(*puVar3,uVar2);
    puVar3[10] = uVar2;
    goto LAB_02223c80;
  }
  GF_AssertFail();
LAB_02223c80:
  uVar1 = Pokepic_GetAttr(puVar3[10],0);
  *(undefined2 *)(puVar3 + 0xb) = uVar1;
  uVar1 = Pokepic_GetAttr(puVar3[10],1);
  *(undefined2 *)((int)puVar3 + 0x2e) = uVar1;
  *(short *)((int)puVar3 + 0x2e) = *(short *)((int)puVar3 + 0x2e) + 8;
  ov07_0221C410(*puVar3,0x2223b71,puVar3);
  return;
}

