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
undefined4 func_0x020f2998() __asm__("sub_020F2998");
void * PokeathlonCourse_GetDataCopyArea(void *);
void * ov96_021E8A20(void *);

void ov96_02218330(int param_1,undefined4 param_2)

{
  int iVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  uint uVar4;
  int extraout_r1;
  int iVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  int iStack_34;
  
  iStack_34 = 0;
  iVar1 = PokeathlonCourse_GetDataCopyArea(param_2);
  puVar2 = (undefined1 *)ov96_021E8A20(iVar1 + 0x28);
  iVar9 = 0;
  iVar1 = param_1 + 0x1c;
  puVar3 = puVar2;
  do {
    iVar5 = (*(int *)(iVar1 + 0x2c) << 4) >> 0x10;
    iVar7 = (*(int *)(iVar1 + 0x30) << 4) >> 0x10;
    if (*(int *)(iVar1 + 100) == 0) {
      *(uint *)(iVar1 + 0x60) = *(uint *)(iVar1 + 0x60) & 0xffff0fff;
    }
    else {
      *(int *)(iVar1 + 100) = *(int *)(iVar1 + 100) + -1;
    }
    puVar3[4] = puVar3[4] & 0xcf | (byte)(((*(uint *)(iVar1 + 0x60) & 0x3fff) >> 0xc) << 4);
    puVar3[2] = puVar3[2] & 0x3f | (byte)(((*(uint *)(iVar1 + 0x60) & 0xffff) >> 0xe) << 6);
    puVar3[4] = puVar3[4] & 0x3f | (byte)(((*(uint *)(iVar1 + 0x60) & 0xffffff) >> 0x16) << 6);
    puVar3[5] = puVar3[5] & 0xe7 |
                (byte)((((*(uint *)(iVar1 + 0x60) & 0xfffff) >> 0x10) - 1 & 3) << 3);
    if (iVar5 < 0x100) {
      if (iVar5 < 0) {
        iVar5 = 0;
      }
    }
    else {
      iVar5 = 0xff;
    }
    *puVar3 = (char)iVar5;
    if (iVar7 < 0x100) {
      if (iVar7 < 0) {
        iVar7 = 0;
      }
    }
    else {
      iVar7 = 0xff;
    }
    puVar3[1] = (char)iVar7;
    puVar3[2] = (byte)(*(int *)(iVar1 + 0x50) >> 0xc) & 0x3f | puVar3[2] & 0xc0;
    puVar3[4] = (byte)*(undefined4 *)(iVar1 + 0x14) & 0xf | puVar3[4] & 0xf0;
    puVar3[3] = (char)*(undefined4 *)(iVar1 + 0x60);
    puVar3[5] = puVar3[5] & 0x9f | (byte)(((*(uint *)(iVar1 + 0x60) & 0x3000000) >> 0x18) << 5);
    puVar3[5] = *(byte *)(iVar1 + 0x5f) & 7 | puVar3[5] & 0xf8;
    if ((int)*(uint *)(iVar1 + 0x60) < 0) {
      iStack_34 = 1;
      *(uint *)(iVar1 + 0x60) = *(uint *)(iVar1 + 0x60) & 0x7fffffff;
    }
    iVar9 = iVar9 + 1;
    iVar1 = iVar1 + 0xa8;
    puVar3 = puVar3 + 6;
  } while (iVar9 < 4);
  uVar4 = *(uint *)(puVar2 + 0x1c);
  iVar1 = 0;
  *(uint *)(puVar2 + 0x1c) = uVar4 & 0xffffff7f | iStack_34 << 7;
  uVar8 = 0;
  *(uint *)(puVar2 + 0x1c) = uVar4 & 0x7f | iStack_34 << 7;
  do {
    iVar9 = func_0x020f2998(iVar1,3);
    func_0x020f2998(iVar1,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
    iVar9 = *(int *)(extraout_r1 * 0x10 + param_1 + iVar9 * 0xa8 + 0x8c) >> 0xc;
    if (iVar9 == 0) {
      iVar9 = 2;
    }
    else if (iVar9 < 0x1e) {
      iVar9 = 1;
    }
    else {
      iVar9 = 0;
    }
    uVar6 = *(uint *)(puVar2 + 0x1c);
    uVar4 = uVar8 & 0xff;
    iVar1 = iVar1 + 1;
    uVar8 = uVar8 + 2;
    *(uint *)(puVar2 + 0x1c) = uVar6 & 0xff | ((uVar6 >> 8) + (iVar9 << uVar4)) * 0x100;
  } while (iVar1 < 0xc);
  return;
}

