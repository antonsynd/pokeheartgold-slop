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
undefined4 ov74_0222FE4C();
undefined4 ov74_02231458();
undefined4 ov74_0223110C();
undefined4 ov74_02231448();
undefined4 ov74_022311CC();
undefined4 ov74_022311AC();
undefined4 ov74_02231070();
undefined4 ov74_0222FE68();
undefined4 ov74_0223115C();
undefined4 ov74_0222FEA0();
undefined4 ov74_02231670();
undefined4 ov74_0222FE78();
undefined4 ov74_0223144C();
undefined4 ov74_0222FE5C();
undefined4 ov74_022311BC();

void ov74_02230138(int param_1)

{
  ushort uVar1;
  undefined2 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int *piVar6;
  int *piVar7;
  
  ov74_0223144C(*(undefined2 *)(param_1 + 8));
  if (*(short *)(param_1 + 2) == 0) {
    iVar3 = ov74_0223115C();
    ov74_02231070(8);
    iVar4 = ov74_0222FE78();
    if (iVar4 == 0) {
      if (*(char *)(iVar3 + 0x60) == '\x01') {
        *(undefined1 *)(iVar3 + 0x60) = 2;
      }
      uVar1 = *(ushort *)(param_1 + 8);
      if (7 < uVar1) {
        if (uVar1 != 9) {
          return;
        }
        ov74_0222FEA0(*(undefined2 *)(param_1 + 0x10));
        return;
      }
      if (uVar1 < 7) {
        if (uVar1 < 3) {
          if (uVar1 != 0) {
            return;
          }
          iVar3 = ov74_02231670();
          if (iVar3 == 0) {
            ov74_0222FE4C();
            return;
          }
          ov74_0223110C(0);
          return;
        }
      }
      else {
        ov74_0223115C();
        ov74_02231458();
        if (*(char *)(iVar3 + 0x60) == '\x02') {
          uVar5 = ov74_022311AC();
          if ((((*(uint *)(param_1 + 0x14) & 0xff) == uVar5) &&
              (uVar5 = ov74_022311BC(), (*(uint *)(param_1 + 0x14) & 0xfff) >> 8 <= uVar5)) &&
             (uVar5 = ov74_022311CC(), *(uint *)(param_1 + 0x18) >> 0x10 == uVar5)) {
            piVar6 = (int *)ov74_0223115C();
            iVar3 = ov74_0222FE5C(param_1 + 10);
            uVar2 = ov74_0222FE68(param_1 + 10);
            iVar4 = 0;
            piVar7 = piVar6;
            while( true ) {
              if (*piVar7 == iVar3) {
                *(undefined2 *)((int)piVar6 + iVar4 * 0xc + 6) = *(undefined2 *)(param_1 + 0x10);
                *(undefined1 *)((int)piVar6 + iVar4 * 0xc + 10) = 1;
                return;
              }
              if (*piVar7 == 0) break;
              iVar4 = iVar4 + 1;
              piVar7 = piVar7 + 3;
              if (7 < iVar4) {
                return;
              }
            }
            piVar6[iVar4 * 3] = iVar3;
            *(undefined2 *)(piVar6 + iVar4 * 3 + 1) = uVar2;
            *(undefined2 *)((int)piVar6 + iVar4 * 0xc + 6) = *(undefined2 *)(param_1 + 0x10);
            *(undefined1 *)((int)piVar6 + iVar4 * 0xc + 10) = 1;
            return;
          }
        }
      }
    }
  }
  else {
    ov74_02231448();
    ov74_0222FE4C();
  }
  return;
}

