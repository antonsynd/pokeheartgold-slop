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
undefined4 ov96_021EB564();
undefined4 sub_02006190(unsigned int);
undefined4 ov96_021EAD08();
undefined4 ov96_021EB588();
undefined4 sub_0200606C(unsigned short, int);
undefined4 ov96_021E60C0();
undefined4 ov96_021EAC0C();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 ov96_021EAF94();
undefined4 ov96_021EB52C();
undefined4 ov96_021E5F24(void *);
extern undefined ov96_0221DC18;

void ov96_021F5D3C(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  undefined4 *puVar5;
  byte *pbVar6;
  undefined *puVar7;
  undefined *puVar8;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  puVar1 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  pbVar6 = &ov96_0221DC18;
  iStack_28 = 0;
  puVar5 = (undefined4 *)(puVar1 + 0x90);
  puVar7 = puVar1;
  puVar8 = puVar1;
  do {
    puVar5[3] = *(int *)(puVar7 + 0xfb4) * -0x40 + 0x120000;
    iVar4 = puVar5[7];
    puVar5[2] = iVar4;
    if (iVar4 < 0x20000) {
      puVar5[2] = 0x20000;
    }
    else if (0xdf000 < iVar4) {
      puVar5[2] = 0xdf000;
    }
    iVar4 = puVar5[2] + ((uint)((int)puVar5[2] >> 0xb) >> 0x14);
    *(uint *)(puVar8 + 4000) = ((iVar4 >> 0xc) - (iVar4 >> 0x1f) & 0x1ffU) >> 1;
    iVar4 = (int)(puVar5[2] + ((uint)((int)puVar5[2] >> 0xb) >> 0x14)) >> 0xc;
    iVar2 = (int)(puVar5[3] + ((uint)((int)puVar5[3] >> 0xb) >> 0x14)) >> 0xc;
    ov96_021EAF94(*puVar5,iVar4,iVar2);
    uStack_1c = 0;
    iStack_24 = iVar4 << 0xc;
    iStack_20 = iVar2 << 0xc;
    iVar4 = ov96_021E5F24(param_1);
    iVar4 = ov96_021E60C0(param_1,iVar4,iStack_28);
    if (*(char *)(iVar4 + 5) == '\0') {
      iStack_20 = iStack_20 + -0x10000;
    }
    else {
      iStack_20 = iStack_20 + -0x18000;
    }
    ov96_021EB588(puVar5[1],&iStack_24);
    if (*(char *)((int)puVar5 + 0x26) == '\0') {
      ov96_021EB52C(puVar5[1],1,0);
      ov96_021EAD08(*puVar5,0);
      if (*(int *)(puVar7 + 0xfc0) == 0) {
        ov96_021EAC0C(*puVar5,2);
      }
      else {
        ov96_021EAC0C(*puVar5,1);
      }
    }
    else {
      ov96_021EB52C(puVar5[1],1,1);
      ov96_021EAD08(*puVar5,0x14);
      uVar3 = sub_02006190((uint)*pbVar6);
      if (uVar3 == 0) {
        sub_0200606C(0x890,(uint)*pbVar6);
      }
    }
    puVar5 = puVar5 + 0xe;
    iStack_28 = iStack_28 + 1;
    puVar7 = puVar7 + 0x1c;
    puVar8 = puVar8 + 4;
    pbVar6 = pbVar6 + 1;
  } while (iStack_28 < 3);
  iVar4 = 0;
  puVar8 = puVar1 + 0x144;
  puVar7 = puVar1;
  do {
    if (puVar1[iVar4 + 0x168] != '\0') {
      puVar1[iVar4 + 0x168] = 0;
      ov96_021EB52C(*(undefined4 *)(puVar7 + 0x78),1,1);
      ov96_021EB588(*(undefined4 *)(puVar7 + 0x78),puVar8);
      ov96_021EB564(*(undefined4 *)(puVar7 + 0x78),9);
    }
    iVar4 = iVar4 + 1;
    puVar7 = puVar7 + 4;
    puVar8 = puVar8 + 0xc;
  } while (iVar4 < 3);
  return;
}

