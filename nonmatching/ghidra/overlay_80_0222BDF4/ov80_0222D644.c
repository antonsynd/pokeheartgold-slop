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
undefined4 SysTask_Destroy();
undefined4 func_0x020cf0ac() __asm__("sub_020CF0AC");
undefined4 Heap_Free();
undefined4 GetBgHOffset();
undefined4 ov80_0223B60C();
undefined4 ov80_0223B5E8();
undefined4 MTX22_2DAffine();

void ov80_0222D644(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  short *psVar10;
  int iVar11;
  int iVar12;
  short *psVar13;
  int iStack_44;
  int iStack_28;
  undefined1 auStack_24 [16];
  
  psVar13 = (short *)param_2[9];
  iVar1 = GetBgHOffset(*(undefined4 *)*param_2,2);
  iVar2 = GetBgHOffset(*(undefined4 *)*param_2,2);
  iVar3 = GetBgHOffset(*(undefined4 *)*param_2,3);
  iVar4 = GetBgHOffset(*(undefined4 *)*param_2,3);
  if (param_2[4] == 1) {
    iVar5 = ov80_0223B60C(*(undefined4 *)(psVar13 + 0x300));
    iStack_28 = 0;
    psVar10 = psVar13;
    do {
      psVar10[4] = 0;
      psVar10[5] = 0;
      iVar12 = (int)*psVar10;
      if (iVar12 < psVar10[1]) {
        iVar11 = iVar5 + iVar12 * 0x20;
        do {
          MTX22_2DAffine(auStack_24,0,0x1000,0x1000,0);
          iVar6 = (iVar1 + psVar10[4]) * 0x10000;
          iVar8 = (iVar2 + psVar10[5]) * 0x10000;
          iVar7 = iVar6 >> 0x10;
          iVar9 = iVar8 >> 0x10;
          if (*(int *)(psVar13 + 0x302) == 2) {
            iVar6 = iVar6 >> 0x1f;
            iVar8 = iVar8 >> 0x1f;
            iVar7 = (int)((((uint)(iVar7 * 0x1000000 + iVar6) >> 0x18 | iVar6 << 8) - iVar6) *
                         0x10000) >> 0x10;
            iVar9 = (int)((((uint)(iVar9 * 0x1000000 + iVar8) >> 0x18 | iVar8 << 8) - iVar8) *
                         0x10000) >> 0x10;
          }
          else if (*(int *)(psVar13 + 0x302) == 1) {
            if (iVar7 < 0) {
              iVar7 = (iVar7 + 0x100) * 0x10000 >> 0x10;
            }
            if (iVar9 < 0) {
              iVar9 = (int)(short)-(short)((uint)iVar8 >> 0x10);
            }
            iVar6 = iVar7 >> 0x1f;
            iVar7 = (int)((((uint)(iVar7 * 0x1000000 + iVar6) >> 0x18 | iVar6 << 8) - iVar6) *
                         0x10000) >> 0x10;
          }
          func_0x020cf0ac(iVar11,auStack_24,0,0,iVar7,iVar9);
          iVar6 = (iVar3 + psVar10[4]) * 0x10000;
          iVar8 = (iVar4 + psVar10[5]) * 0x10000;
          iVar7 = iVar6 >> 0x10;
          iVar9 = iVar8 >> 0x10;
          if (*(int *)(psVar13 + 0x302) == 2) {
            iVar6 = iVar6 >> 0x1f;
            iVar8 = iVar8 >> 0x1f;
            iVar7 = (int)((((uint)(iVar7 * 0x1000000 + iVar6) >> 0x18 | iVar6 << 8) - iVar6) *
                         0x10000) >> 0x10;
            iVar9 = (int)((((uint)(iVar9 * 0x1000000 + iVar8) >> 0x18 | iVar8 << 8) - iVar8) *
                         0x10000) >> 0x10;
          }
          else if (*(int *)(psVar13 + 0x302) == 1) {
            if (iVar7 < 0) {
              iVar7 = (iVar7 + 0x100) * 0x10000 >> 0x10;
            }
            if (iVar9 < 0) {
              iVar9 = (int)(short)-(short)((uint)iVar8 >> 0x10);
            }
            iVar6 = iVar7 >> 0x1f;
            iVar7 = (int)((((uint)(iVar7 * 0x1000000 + iVar6) >> 0x18 | iVar6 << 8) - iVar6) *
                         0x10000) >> 0x10;
          }
          func_0x020cf0ac(iVar11 + 0x10,auStack_24,0,0,iVar7,iVar9);
          iVar12 = iVar12 + 1;
          iVar11 = iVar11 + 0x20;
        } while (iVar12 < psVar10[1]);
      }
      psVar10 = psVar10 + 8;
      iStack_28 = iStack_28 + 1;
    } while (iStack_28 < 0x60);
    ov80_0223B5E8(*(undefined4 *)(psVar13 + 0x300));
    Heap_Free(psVar13);
    SysTask_Destroy(param_1);
    return;
  }
  iVar5 = ov80_0223B60C(*(undefined4 *)(psVar13 + 0x300));
  iStack_44 = 0;
  psVar10 = psVar13;
  do {
    psVar10[4] = psVar10[4] + psVar10[2];
    psVar10[5] = psVar10[5] + psVar10[3];
    iVar12 = (int)*psVar10;
    if (iVar12 < psVar10[1]) {
      iVar11 = iVar5 + iVar12 * 0x20;
      do {
        MTX22_2DAffine(auStack_24,0,0x1000,0x1000,0);
        iVar6 = (iVar1 + psVar10[4]) * 0x10000;
        iVar8 = (iVar2 + psVar10[5]) * 0x10000;
        iVar7 = iVar6 >> 0x10;
        iVar9 = iVar8 >> 0x10;
        if (*(int *)(psVar13 + 0x302) == 2) {
          iVar6 = iVar6 >> 0x1f;
          iVar8 = iVar8 >> 0x1f;
          iVar7 = (int)((((uint)(iVar7 * 0x1000000 + iVar6) >> 0x18 | iVar6 << 8) - iVar6) * 0x10000
                       ) >> 0x10;
          iVar9 = (int)((((uint)(iVar9 * 0x1000000 + iVar8) >> 0x18 | iVar8 << 8) - iVar8) * 0x10000
                       ) >> 0x10;
        }
        else if (*(int *)(psVar13 + 0x302) == 1) {
          if (iVar7 < 0) {
            iVar7 = (iVar7 + 0x100) * 0x10000 >> 0x10;
          }
          if (iVar9 < 0) {
            iVar9 = (int)(short)-(short)((uint)iVar8 >> 0x10);
          }
          iVar6 = iVar7 >> 0x1f;
          iVar7 = (int)((((uint)(iVar7 * 0x1000000 + iVar6) >> 0x18 | iVar6 << 8) - iVar6) * 0x10000
                       ) >> 0x10;
        }
        func_0x020cf0ac(iVar11,auStack_24,0,0,iVar7,iVar9);
        iVar6 = (iVar3 + psVar10[4]) * 0x10000;
        iVar8 = (iVar4 + psVar10[5]) * 0x10000;
        iVar7 = iVar6 >> 0x10;
        iVar9 = iVar8 >> 0x10;
        if (*(int *)(psVar13 + 0x302) == 2) {
          iVar6 = iVar6 >> 0x1f;
          iVar8 = iVar8 >> 0x1f;
          iVar7 = (int)((((uint)(iVar7 * 0x1000000 + iVar6) >> 0x18 | iVar6 << 8) - iVar6) * 0x10000
                       ) >> 0x10;
          iVar9 = (int)((((uint)(iVar9 * 0x1000000 + iVar8) >> 0x18 | iVar8 << 8) - iVar8) * 0x10000
                       ) >> 0x10;
        }
        else if (*(int *)(psVar13 + 0x302) == 1) {
          if (iVar7 < 0) {
            iVar7 = (iVar7 + 0x100) * 0x10000 >> 0x10;
          }
          if (iVar9 < 0) {
            iVar9 = (int)(short)-(short)((uint)iVar8 >> 0x10);
          }
          iVar6 = iVar7 >> 0x1f;
          iVar7 = (int)((((uint)(iVar7 * 0x1000000 + iVar6) >> 0x18 | iVar6 << 8) - iVar6) * 0x10000
                       ) >> 0x10;
        }
        func_0x020cf0ac(iVar11 + 0x10,auStack_24,0,0,iVar7,iVar9);
        iVar12 = iVar12 + 1;
        iVar11 = iVar11 + 0x20;
      } while (iVar12 < psVar10[1]);
    }
    psVar10 = psVar10 + 8;
    iStack_44 = iStack_44 + 1;
  } while (iStack_44 < 0x60);
  return;
}

