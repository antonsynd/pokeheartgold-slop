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
undefined4 ov74_02236F30();
undefined4 ov74_02236F44();
undefined4 ov74_02236F80();
extern undefined UNK_0223b760 __asm__("sub_0223B760");

undefined4
ConvertRSStringToDPStringInternational(int param_1,short *param_2,int param_3,int param_4)

{
  short sVar1;
  uint uVar2;
  int iVar3;
  short *psVar4;
  uint uVar5;

  uVar5 = 0;
  if (param_3 != 1) {
    psVar4 = param_2;
    do {
      uVar2 = (uint)*(byte *)(param_1 + uVar5);
      if (uVar2 == 0xff) break;
      if (0xf6 < uVar2) {
        uVar5 = param_3 - 1;
        if (9 < uVar5) {
          uVar5 = 10;
        }
        iVar3 = 0;
        psVar4 = param_2;
        if (0 < (int)uVar5) {
          do {
            iVar3 = iVar3 + 1;
            *psVar4 = 0x1ac;
            psVar4 = psVar4 + 1;
          } while (iVar3 < (int)uVar5);
        }
        param_2[iVar3] = -1;
        return 0;
      }
      sVar1 = *(short *)(&UNK_0223b760 + uVar2 * 4 + (uint)(param_4 != 1) * 2);
      if (sVar1 == 1) {
        sVar1 = ov74_02236F30(param_4);
        *psVar4 = sVar1;
      }
      else if (sVar1 == 0xea) {
        sVar1 = ov74_02236F44(param_4);
        *psVar4 = sVar1;
      }
      else if (sVar1 == 0xeb) {
        sVar1 = ov74_02236F80(param_4);
        *psVar4 = sVar1;
      }
      else {
        *psVar4 = sVar1;
      }
      uVar5 = uVar5 + 1;
      psVar4 = psVar4 + 1;
    } while (uVar5 < param_3 - 1U);
  }
  param_2[uVar5] = -1;
  return 1;
}

