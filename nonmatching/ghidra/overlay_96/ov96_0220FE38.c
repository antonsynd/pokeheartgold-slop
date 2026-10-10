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
undefined4 ov96_0220FBDC();
undefined4 ov96_0220FD28();
undefined4 ov96_0220FBEC();
undefined4 ov96_0220E6DC();
undefined4 GF_AssertFail();

void ov96_0220FE38(undefined2 *param_1,ushort *param_2,undefined4 param_3)

{
  uint uVar1;
  undefined2 uVar2;
  int iVar3;
  uint uVar4;
  undefined1 auStack_18 [8];

  uVar4 = *(uint *)(param_1 + 2);
  if ((int)(uVar4 << 0x1a) < 0) {
    switch((uVar4 & 0x1f) >> 2) {
    default:
      GF_AssertFail();
      break;
    case 1:
      iVar3 = ov96_0220FBEC(param_1,param_3,auStack_18);
      if (iVar3 == 0) {
        if ((short)param_1[1] < 0x1e0) {
          param_1[1] = param_1[1] + (ushort)*(byte *)(param_1 + 5);
          uVar2 = ov96_0220E6DC((int)(short)param_1[1],*(undefined1 *)((int)param_1 + 9));
          *param_1 = uVar2;
        }
        else {
          param_1[1] = 0;
          *(uint *)(param_1 + 2) = *(uint *)(param_1 + 2) & 0xffffffe3 | 8;
        }
      }
      else {
        ov96_0220FD28(param_1,param_3,auStack_18);
      }
      break;
    case 2:
      param_1[1] = param_1[1] + (ushort)*(byte *)(param_1 + 5);
      if (0x2f < (short)param_1[1]) {
        ov96_0220FBDC();
      }
      break;
    case 3:
    case 4:
    case 5:
    case 6:
      uVar1 = ((uVar4 & 0x3fff) >> 6) + 1 & 0xff;
      *(uint *)(param_1 + 2) = uVar4 & 0xffffc03f | uVar1 << 6;
      if (0x13 < uVar1) {
        ov96_0220FBDC();
      }
    }
    *param_2 = *param_2 & 0xff80 |
               (ushort)(((short)param_1[1] * 2 + ((uint)((short)param_1[1] * 2 >> 2) >> 0x1d) &
                        0x7ffff) >> 3) & 0x7f;
    *param_2 = (*(byte *)((int)param_1 + 9) & 0xf) << 7 | *param_2 & 0xf87f;
    *param_2 = *param_2 & 0xc7ff | (ushort)(((*(uint *)(param_1 + 2) & 0x1f) >> 2) << 0xb);
    *param_2 = *param_2 & 0x3fff | (ushort)((*(uint *)(param_1 + 2) & 3) << 0xe);
  }
  return;
}

