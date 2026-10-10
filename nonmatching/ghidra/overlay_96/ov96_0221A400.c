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
undefined4 ov96_0221A314();
undefined4 ov96_02215EB0();
undefined4 ov96_02215DBC();
undefined4 ov96_02215DD4();
undefined4 ov96_02215ECC();
undefined4 ov96_0221A3AC();
undefined4 ov96_02215E94();
undefined4 ov96_02215F80();
undefined4 ov96_0221A08C();

void ov96_0221A400(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  undefined4 uStack_10;
  
  uStack_10 = param_4;
  iVar1 = ov96_02215E94(*param_1,param_1[2] & 3);
  if (iVar1 == 0) {
    uVar3 = param_1[2];
    if (((int)(uVar3 << 0x1a) < 0) && (-1 < (int)(uVar3 << 0x1b))) {
      ov96_02215DBC(*param_1,uVar3 & 3);
      iVar1 = ov96_02215DBC(*param_1,*(undefined1 *)((int)param_1 + 7));
      if ((iVar1 == 3) ||
         ((iVar1 = ov96_02215E94(*param_1,*(undefined1 *)((int)param_1 + 7)), iVar1 != 0 ||
          (iVar1 = ov96_02215EB0(*param_1,param_1[2] & 3), iVar1 != 0)))) {
        piVar2 = (int *)ov96_02215DD4(*param_1,param_1[2] & 3);
        uStack_10 = CONCAT22((short)(piVar2[1] >> 0xc),(short)(*piVar2 >> 0xc));
        ov96_02215F80(*param_1,param_1[2] & 3,&uStack_10);
        param_1[2] = param_1[2] & 0xffffffdf;
      }
      else {
        piVar2 = (int *)ov96_02215DD4(*param_1,*(undefined1 *)((int)param_1 + 7));
        uStack_10 = CONCAT22((short)(piVar2[1] >> 0xc),(short)(*piVar2 >> 0xc));
        ov96_02215F80(*param_1,param_1[2] & 3,&uStack_10);
      }
    }
    if ((int)(param_1[2] << 0x1b) < 0) {
      iVar1 = ov96_02215ECC(*param_1,param_1[2] & 3);
      if (iVar1 != 0) {
        iVar1 = ov96_02215DBC(*param_1,param_1[2] & 3);
        ov96_0221A314(param_1);
        if (iVar1 == 3) {
          param_1[2] = param_1[2] & 0xffffffef;
          return;
        }
      }
    }
    else {
      *(char *)(param_1 + 1) = *(char *)(param_1 + 1) + -1;
      if (*(char *)(param_1 + 1) < '\x01') {
        if (*(char *)(param_1 + 1) < '\0') {
          *(undefined1 *)(param_1 + 1) = 0;
        }
        *(char *)((int)param_1 + 6) = *(char *)((int)param_1 + 6) + -1;
        if (*(char *)((int)param_1 + 6) < '\x01') {
          *(undefined1 *)((int)param_1 + 6) = 3;
          iVar1 = ov96_02215ECC(*param_1,param_1[2] & 3);
          if (iVar1 != 0) {
            ov96_0221A08C(param_1);
            *(char *)((int)param_1 + 5) = *(char *)((int)param_1 + 5) + -1;
            if (*(char *)((int)param_1 + 5) < '\x01') {
              iVar1 = ov96_0221A3AC(param_1);
              if (iVar1 != 0) {
                param_1[2] = param_1[2] | 0x10;
              }
              *(undefined1 *)((int)param_1 + 5) = 0;
            }
          }
        }
      }
    }
  }
  return;
}

