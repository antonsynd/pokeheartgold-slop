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
void * sub_0202C6F4(void *);
undefined4 _u32_div_f(unsigned int, unsigned int);
undefined4 sub_0202C090(void *, int, int);

undefined4 ov43_0222DCC4(int param_1,int param_2)

{
  undefined *puVar1;
  int iVar2;
  int extraout_r1;
  int iVar3;
  uint uVar4;
  uint uVar5;

  puVar1 = sub_0202C6F4(*(undefined **)(param_1 + 4));
  iVar3 = (int)*(char *)(param_1 + 0xb);
  if (param_2 == 0) {
    iVar2 = *(int *)(param_1 + 0x10);
    uVar4 = 0;
    if (iVar2 != 1) {
      do {
        iVar3 = iVar3 + -1;
        if (iVar3 < 0) {
          iVar3 = iVar3 + iVar2;
        }
        iVar2 = sub_0202C090(puVar1,(uint)*(byte *)(param_1 + iVar3 + 0x18),8);
        if (iVar2 != 2) {
          *(char *)(param_1 + 0xb) = (char)iVar3;
          return 1;
        }
        iVar2 = *(int *)(param_1 + 0x10);
        uVar4 = uVar4 + 1;
      } while (uVar4 < iVar2 - 1U);
    }
  }
  else {
    uVar4 = *(uint *)(param_1 + 0x10);
    uVar5 = 0;
    if (uVar4 != 1) {
      do {
        { uint nug_a = (uint)(iVar3 + 1), nug_b = (uint)(uVar4); extraout_r1 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
        iVar3 = sub_0202C090(puVar1,(uint)*(byte *)(param_1 + extraout_r1 + 0x18),8);
        if (iVar3 != 2) {
          *(char *)(param_1 + 0xb) = (char)extraout_r1;
          return 1;
        }
        uVar4 = *(uint *)(param_1 + 0x10);
        uVar5 = uVar5 + 1;
        iVar3 = extraout_r1;
      } while (uVar5 < uVar4 - 1);
    }
  }
  return 0;
}

