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
undefined4 func_0x020d4858() __asm__("sub_020D4858");
undefined4 ov112_021E935C();

int ov112_021E93BC(undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4,int param_5,
                  int param_6,int param_7,int param_8)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  byte *pbVar5;
  int iVar6;
  int iVar7;
  int iStack_20;
  int iStack_1c;

  iStack_20 = 0;
  func_0x020d4858(0,param_4,
                  ((int)(param_7 * param_8 + ((uint)(param_7 * param_8 >> 2) >> 0x1d)) >> 3) << 1);
  iStack_1c = 0;
  iVar2 = (int)(param_8 + ((uint)(param_8 >> 2) >> 0x1d)) >> 3;
  if (0 < iVar2) {
    iVar7 = 0;
    do {
      iVar6 = 0;
      if (0 < param_7) {
        do {
          uVar4 = 0;
          pbVar5 = (byte *)(param_4 + iStack_20);
          do {
            uVar3 = ov112_021E935C(param_1,param_2,iVar6 + param_5,param_6 + uVar4 + iVar7);
            *pbVar5 = *pbVar5 | (byte)(((int)uVar3 >> 1) << (uVar4 & 0xff));
            uVar1 = uVar4 & 0xff;
            uVar4 = uVar4 + 1;
            pbVar5[1] = (byte)((uVar3 & 1) << uVar1) | pbVar5[1];
          } while ((int)uVar4 < 8);
          iVar6 = iVar6 + 1;
          iStack_20 = iStack_20 + 2;
        } while (iVar6 < param_7);
      }
      iVar7 = iVar7 + 8;
      iStack_1c = iStack_1c + 1;
    } while (iStack_1c < iVar2);
  }
  return iStack_20;
}

