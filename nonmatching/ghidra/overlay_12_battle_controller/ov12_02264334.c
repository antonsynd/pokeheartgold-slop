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
unsigned char ov12_0223B688(void *);
undefined4 ov12_0224ED00(void *, int, int, int);



int ov12_02264334(undefined *param_1,undefined *param_2)

{
  char cVar1;
  byte bVar2;
  byte bVar3;
  int iVar4;
  byte bVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  int iVar9;
  int iStack_18;

  iStack_18 = 1;
  cVar1 = *param_2;
  uVar6 = (uint)*(ushort *)(param_2 + 2);
  uVar8 = (uint)(byte)param_2[1];
  if (cVar1 == '\0') {
    iVar7 = 0;
    if (uVar6 != 0) {
      do {
        iVar4 = iVar7 + 4;
        iVar9 = iVar7 + uVar8 * 0x100 + *(int *)(param_1 + 0x30);
        iVar7 = iVar7 + 1;
        *(undefined *)(iVar9 + 0x2300) = param_2[iVar4];
      } while (iVar7 < (int)uVar6);
    }
  }
  else if (cVar1 == '\x01') {
    if (*(char *)(*(int *)(param_1 + uVar8 * 4 + 0x34) + 0x1a8) == '\0') {
      *(undefined1 *)(*(int *)(param_1 + uVar8 * 4 + 0x34) + 0x1a8) = 1;
      iVar7 = 0;
      if (uVar6 != 0) {
        do {
          iVar4 = iVar7 + 4;
          iVar9 = *(int *)(param_1 + uVar8 * 4 + 0x34) + iVar7;
          iVar7 = iVar7 + 1;
          *(undefined *)(iVar9 + 0x94) = param_2[iVar4];
        } while (iVar7 < (int)uVar6);
      }
    }
    else {
      iStack_18 = 0;
    }
  }
  else if (cVar1 == '\x02') {
    bVar2 = param_2[4];
    bVar3 = param_2[5];
    bVar5 = ov12_0223B688(param_1);
    if (bVar5 != 0) {
      ov12_0224ED00(*(undefined **)(param_1 + 0x30),(uint)bVar3,uVar8,(uint)bVar2);
    }
  }
  return iStack_18;
}

