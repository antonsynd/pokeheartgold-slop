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
undefined4 ov96_0220D6B0();
undefined4 ov96_0220D9A4();
undefined4 ov96_0220D8C4();
undefined4 ov96_0220D630();
undefined4 ov96_021E8A20();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_0220DAA0();
undefined4 ov96_0220F710();

void ov96_0220F8C8(short *param_1,undefined4 param_2)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  short *psVar4;
  int iStack_18;

  iVar1 = PokeathlonCourse_GetDataCopyArea(param_2);
  ov96_021E8A20(iVar1 + 0x28);
  iStack_18 = 0;
  do {
    *(uint *)(param_1 + (*(uint *)(param_1 + 2) >> 0x1e) * 0x24 + 0x24) =
         *(uint *)(param_1 + (*(uint *)(param_1 + 2) >> 0x1e) * 0x24 + 0x24) & 0xf7ffffff;
    uVar3 = *(uint *)(param_1 + 2);
    if ((int)(uVar3 << 0x11) < 0) {
      uVar3 = ov96_0220DAA0(param_1 + 4,(int)*param_1,(int)param_1[1]);
      if ((uVar3 & 0xff) != 0xc) {
        *(uint *)(param_1 + 2) = uVar3 << 0x1e | *(uint *)(param_1 + 2) & 0x3fffffff | 0x20000000;
      }
    }
    else if ((int)(uVar3 << 0x10) < 0) {
      if ((uVar3 & 0x3fffffff) >> 0x1d == 1) {
        psVar4 = param_1 + (uVar3 >> 0x1e) * 0x24 + 4;
        if (*(int *)(psVar4 + 6) == 3) {
          *(uint *)(param_1 + 2) = uVar3 & 0xdfffffff;
        }
        else {
          iVar1 = (int)*param_1 - ((*(int *)(psVar4 + 0xe) << 4) >> 0x10);
          if (iVar1 < 0) {
            iVar1 = -iVar1;
          }
          if (iVar1 < 9) {
            iVar1 = (int)param_1[1] - ((*(int *)(psVar4 + 0x10) << 4) >> 0x10);
            if (iVar1 < 0) {
              iVar1 = -iVar1;
            }
            if (iVar1 < 9) goto LAB_0220f9de;
          }
          ov96_0220D6B0(psVar4,param_1);
          uVar3 = ov96_0220D8C4(psVar4,*(undefined4 *)(psVar4 + 8),*(undefined4 *)(psVar4 + 10));
          *(uint *)(psVar4 + 0x20) = (uVar3 & 1) << 0x1d | *(uint *)(psVar4 + 0x20) & 0xdfffffff;
        }
      }
    }
    else {
      if ((uVar3 & 0x3fffffff) >> 0x1d == 1) {
        psVar4 = param_1 + 4;
        uVar2 = ov96_0220DAA0(psVar4,(int)*param_1,(int)param_1[1]);
        if (((*(int *)(psVar4 + (uVar3 >> 0x1e) * 0x24 + 6) == 2) &&
            ((uVar2 & 0xff) == *(uint *)(param_1 + 2) >> 0x1e)) &&
           ((*(uint *)(param_1 + 2) & 0x1fffffff) >> 0x10 < 6)) {
          ov96_0220D630(psVar4 + (uVar3 >> 0x1e) * 0x24);
        }
      }
      *(uint *)(param_1 + 2) = *(uint *)(param_1 + 2) & 0xdfffffff;
    }
LAB_0220f9de:
    iVar1 = 0;
    psVar4 = param_1 + 4;
    do {
      ov96_0220D9A4(psVar4,param_2);
      iVar1 = iVar1 + 1;
      psVar4 = psVar4 + 0x24;
    } while (iVar1 < 3);
    param_1 = param_1 + 0x72;
    iStack_18 = iStack_18 + 1;
    if (3 < iStack_18) {
      ov96_0220F710(param_2);
      return;
    }
  } while( true );
}

