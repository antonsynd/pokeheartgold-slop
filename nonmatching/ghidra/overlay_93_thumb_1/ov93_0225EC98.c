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
undefined4 DC_FlushRange(void *, unsigned int);
void * AllocAndReadWholeNarcMemberByIdPair(int, int, int);
undefined4 GF3dRender_AllocAndLoadTexResources(void *);
void * NNS_G3dGetTex(void *);
undefined4 GF_AssertFail(void);
undefined4 Heap_Realloc(void *, unsigned int);
undefined4 MI_CpuCopy8(void *, void *, unsigned int);
void * Heap_Alloc(int, unsigned int);

void ov93_0225EC98(undefined4 *param_1)

{
  undefined *puVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  
  puVar1 = AllocAndReadWholeNarcMemberByIdPair(0xc9,0x1d,0x75);
  *param_1 = puVar1;
  puVar1 = NNS_G3dGetTex(puVar1);
  param_1[1] = puVar1;
  GF3dRender_AllocAndLoadTexResources(puVar1);
  iVar4 = param_1[1];
  iVar5 = *(int *)(iVar4 + 0x38);
  uVar3 = (uint)*(ushort *)(iVar4 + 0x30) * 8;
  uVar2 = *(uint *)(iVar4 + 0x2c);
  if (param_1[0x93] != 0) {
    GF_AssertFail();
  }
  puVar1 = Heap_Alloc(0x75,uVar3);
  param_1[0x93] = puVar1;
  puVar1 = Heap_Alloc(0x75,uVar3);
  param_1[0x94] = puVar1;
  MI_CpuCopy8((undefined *)(iVar4 + iVar5),(undefined *)param_1[0x93],uVar3);
  MI_CpuCopy8((undefined *)(iVar4 + iVar5),(undefined *)param_1[0x94],uVar3);
  DC_FlushRange((undefined *)param_1[0x94],uVar3);
  param_1[0x96] = (uVar2 & 0xffff) << 3;
  param_1[0x95] = uVar3;
  if (*(int *)(param_1[1] + 0x14) == 0) {
    GF_AssertFail();
  }
  Heap_Realloc((undefined *)*param_1,(param_1[1] + *(int *)(param_1[1] + 0x14)) - (int)*param_1);
  return;
}

