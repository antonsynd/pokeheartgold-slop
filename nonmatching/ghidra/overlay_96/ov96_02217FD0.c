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
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 ov96_021E8228();
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 func_0x020f2178() __asm__("sub_020F2178");

void ov96_02217FD0(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  uint *puVar4;
  int iVar5;
  uint uVar6;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_20;

  uStack_20 = 0;
  uStack_2c = param_1;
  do {
    uVar6 = 0;
    iVar5 = uStack_2c + 0x74;
    puVar4 = (uint *)(uStack_2c + 0x6c);
    do {
      uStack_28 = 0;
      iVar1 = *(int *)(*(int *)(iVar5 + 4) + 8);
      if ((*(uint *)(uStack_2c + 0x6c) & 0xffffff) >> 0x16 == uVar6) {
        if ((int)(*(uint *)(uStack_2c + 0x6c) << 3) < 0) {
          *(char *)(uStack_2c + 0x68) = *(char *)(uStack_2c + 0x68) + -1;
          if (*(char *)(uStack_2c + 0x68) < '\x01') {
            *(undefined4 *)(iVar5 + 8) = 0x14000;
            *(undefined4 *)(uStack_2c + 0x2c) = *(undefined4 *)(uStack_2c + 0x38);
            *(undefined4 *)(uStack_2c + 0x30) = *(undefined4 *)(uStack_2c + 0x3c);
            *(undefined4 *)(uStack_2c + 0x34) = *(undefined4 *)(uStack_2c + 0x40);
            *puVar4 = *puVar4 & 0xefffffff;
          }
        }
        else if (*(int *)(iVar5 + 8) < 1) {
          *(undefined1 *)(uStack_2c + 0x68) = 0x3c;
          *puVar4 = *puVar4 & 0x9fffffff | 0x10000000;
          ov96_021E8228(*(undefined4 *)(uStack_2c + 0xc),
                        (*(uint *)(uStack_2c + 0x6c) & 0x3fffff) >> 0x14,
                        (*(uint *)(uStack_2c + 0x6c) & 0xffffff) >> 0x16,1,1);
        }
      }
      else {
        uStack_28 = 0x444cc000;
      }
      uVar2 = func_0x020f2178(*(undefined4 *)(iVar5 + 8));
      func_0x020f1520(uVar2,uStack_28);
      iVar3 = func_0x020f2104();
      *(int *)(iVar5 + 8) = iVar3;
      if (iVar1 < iVar3) {
        *(int *)(iVar5 + 8) = iVar1;
      }
      uVar6 = uVar6 + 1;
      iVar5 = iVar5 + 0x10;
    } while ((int)uVar6 < 3);
    uStack_2c = uStack_2c + 0xa8;
    uStack_20 = uStack_20 + 1;
  } while (uStack_20 < 4);
  return;
}

