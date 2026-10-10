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
undefined4 ov96_021E8228();
undefined4 ov96_0220FCB0();
undefined4 ov96_0220F3BC();

void ov96_0220FD28(int param_1,int param_2,short *param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined *puVar4;
  short local_1c;
  short local_1a;
  undefined4 uStack_18;

  local_1c = (short)((int)((int)*param_3 + ((uint)((int)*param_3 >> 2) >> 0x1d)) >> 3);
  local_1a = (short)((int)((int)param_3[1] + ((uint)((int)param_3[1] >> 2) >> 0x1d)) >> 3);
  uStack_18 = param_4;
  if (local_1a < 9) {
    *(uint *)(param_1 + 4) = *(uint *)(param_1 + 4) & 0xffffffe3 | 0xc;
    iVar1 = ov96_0220FCB0(&local_1c,9);
    if (iVar1 != 0) {
      *(uint *)(param_1 + 4) = *(uint *)(param_1 + 4) & 0xffffffe3 | 0x10;
    }
  }
  else if (local_1a < 0xf) {
    *(uint *)(param_1 + 4) = *(uint *)(param_1 + 4) & 0xffffffe3 | 0x10;
    iVar1 = ov96_0220FCB0(&local_1c,0xf);
    if (iVar1 != 0) {
      *(uint *)(param_1 + 4) = *(uint *)(param_1 + 4) & 0xffffffe3 | 0x14;
    }
  }
  else if (local_1a < 0x14) {
    *(uint *)(param_1 + 4) = *(uint *)(param_1 + 4) & 0xffffffe3 | 0x14;
    iVar1 = ov96_0220FCB0(&local_1c,0x14);
    if (iVar1 != 0) {
      *(uint *)(param_1 + 4) = *(uint *)(param_1 + 4) & 0xffffffe3 | 0x18;
    }
  }
  else {
    *(uint *)(param_1 + 4) = *(uint *)(param_1 + 4) & 0xffffffe3 | 0x18;
  }
  iVar3 = param_2 + (uint)*(byte *)(param_3 + 2) * 0xe4;
  puVar4 = *(undefined **)(iVar3 + 8);
  iVar1 = ov96_0220F3BC(param_1);
  uVar2 = ((*(uint *)(iVar3 + 0xe0) & 0x3ffff) >> 2) + iVar1;
  if (200 < (int)uVar2) {
    uVar2 = 200;
  }
  *(uint *)(iVar3 + 0xe0) = *(uint *)(iVar3 + 0xe0) & 0xfffc0003 | (uVar2 & 0xffff) << 2;
  *(uint *)(param_1 + 4) = *(uint *)(param_1 + 4) & 0xfffffffc | *(byte *)(param_3 + 2) & 3;
  ov96_021E8228(puVar4,(uint)*(byte *)(param_3 + 2),(uint)*(byte *)((int)param_3 + 5),3,1);
  return;
}

