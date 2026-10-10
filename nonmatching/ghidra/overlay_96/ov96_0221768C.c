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
undefined4 ov96_0221966C();
undefined4 GF_AssertFail(void);
void * ov96_021E8A20(void *);
undefined4 ManagedSprite_SetAnimNoRestart(void *, int);
undefined4 ov96_021E5F24(void *);
undefined4 PlaySE(unsigned short);
undefined4 ov96_021E6454();
undefined4 ov96_022196E4();
undefined4 func_0x020e3a84() __asm__("sub_020E3A84");
void * PokeathlonCourse_GetDataCopyArea(void *);
undefined4 ov96_02216C38();
undefined4 _u32_div_f(unsigned int, unsigned int);
void * PokeathlonCourse_GetHeapAllocPtr4(void *);

void ov96_0221768C(undefined4 *param_1,undefined *param_2)

{
  undefined1 *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  byte bVar7;
  undefined4 *puVar8;
  int unaff_r5;
  uint uVar9;
  __asm__ volatile("movs %0, r5" : "=l"(unaff_r5) : : "cc");

  undefined1 auStack_1c [8];

  puVar2 = PokeathlonCourse_GetDataCopyArea(param_2);
  puVar2 = ov96_021E8A20(puVar2 + 0xf0);
  puVar3 = PokeathlonCourse_GetHeapAllocPtr4(param_2);
  ov96_02216C38(param_1,puVar2,param_2);
  ov96_021E6454(param_2,(*(uint *)(puVar2 + 0x20) & 0x7ffff) >> 3);
  if ((*(uint *)(puVar2 + 0x20) & 0x7ffff) >> 3 == 0x1c2) {
    PlaySE(0x6d7);
  }
  iVar4 = ov96_021E5F24(param_2);
  bVar7 = puVar2[iVar4 * 6 + 5] & 7;
  switch(bVar7) {
  case 0:
    unaff_r5 = 2;
    break;
  case 1:
    unaff_r5 = 6;
    break;
  case 2:
    unaff_r5 = 4;
    break;
  case 3:
    unaff_r5 = 3;
    break;
  case 4:
    unaff_r5 = 5;
    break;
  default:
    GF_AssertFail();
  }
  ManagedSprite_SetAnimNoRestart((undefined *)param_1[3],unaff_r5);
  if (bVar7 != *(byte *)(param_1 + 0xee)) {
    if (bVar7 == 2) {
      PlaySE(0x89b);
    }
    else if (bVar7 == 4) {
      PlaySE(0x89c);
    }
  }
  *(byte *)(param_1 + 0xee) = bVar7;
  iVar4 = 0;
  puVar5 = auStack_1c;
  puVar6 = puVar2;
  do {
    puVar5[1] = (char)iVar4;
    puVar1 = puVar6 + 3;
    iVar4 = iVar4 + 1;
    puVar6 = puVar6 + 6;
    *puVar5 = *puVar1;
    puVar5 = puVar5 + 2;
  } while (iVar4 < 4);
  func_0x020e3a84(auStack_1c,4,2,0x2216c1d,0);
  uVar9 = 0;
  puVar8 = param_1;
  puVar6 = puVar2;
  do {
    if ((ushort)(byte)puVar6[3] != *(ushort *)(puVar8 + 0xec)) {
      ov96_0221966C(*param_1,uVar9 & 0xff,(ushort)(byte)puVar6[3],auStack_1c);
    }
    *(ushort *)(puVar8 + 0xec) = (ushort)(byte)puVar6[3];
    uVar9 = uVar9 + 1;
    puVar8 = (undefined4 *)((int)puVar8 + 2);
    puVar6 = puVar6 + 6;
  } while ((int)uVar9 < 4);
  uVar9 = _u32_div_f((*(uint *)(puVar2 + 0x20) & 0x7ffff) >> 3,0x1e);
  ov96_022196E4(*(undefined4 *)(puVar3 + 0x180),uVar9);
  return;
}

