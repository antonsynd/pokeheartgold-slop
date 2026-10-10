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
undefined4 ov49_0225E47C();
undefined4 ov49_022693F8();
undefined4 ov49_0225E4A4();
undefined4 func_0x0222ad2c() __asm__("sub_0222AD2C");
undefined4 func_0x0222ade8() __asm__("sub_0222ADE8");
undefined4 func_0x0222adf8() __asm__("sub_0222ADF8");
undefined4 func_0x0222ad3c() __asm__("sub_0222AD3C");
undefined4 ov49_022693A4();
undefined4 _u32_div_f(unsigned int, unsigned int);
undefined4 ov49_022693D4();

void ov49_02269240(int param_1,uint param_2,undefined4 param_3,int param_4,int param_5)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int extraout_r1;
  int iVar4;
  undefined4 uVar5;

  iVar2 = func_0x0222ad3c(*(undefined4 *)(param_1 + 4));
  func_0x0222ad2c(*(undefined4 *)(param_1 + 4));
  iVar4 = 0;
  iVar1 = param_2 * 3;
  { uint nug_a = (uint)(param_2), nug_b = (uint)(3); extraout_r1 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
  iVar2 = iVar2 * 0xc;
  do {
    iVar3 = func_0x0222ade8(*(undefined4 *)(param_1 + 4),iVar4 + iVar1);
    uVar5 = 0;
    if ((param_4 == 1) && (iVar4 == param_5)) {
      uVar5 = 1;
    }
    if (iVar3 == 1) {
      if (iVar4 == 0) {
        iVar3 = ov49_0225E47C(*(undefined4 *)(param_1 + 8),param_2);
        if (iVar3 == 1) {
          if (extraout_r1 == 2) {
            ov49_022693D4(param_3,param_4,uVar5,*(undefined2 *)(iVar2 + 0x226a8de));
            if (*(short *)(iVar2 + 0x226a8e4) != -2) {
              ov49_022693A4(param_3,param_4,uVar5);
            }
          }
          else {
            ov49_022693D4(param_3,param_4,uVar5,*(undefined2 *)(iVar2 + 0x226a8dc));
            if (*(short *)(iVar2 + 0x226a8e0) != -2) {
              ov49_022693A4(param_3,param_4,uVar5);
            }
          }
          func_0x0222adf8(*(undefined4 *)(param_1 + 4),iVar1);
        }
      }
      else if (iVar4 == 1) {
        iVar3 = ov49_022693F8(param_1 + 0x2c + param_2 * 0xe,extraout_r1 == 2,
                              *(undefined4 *)(param_1 + 8),param_2);
        if (iVar3 == 1) {
          func_0x0222adf8(*(undefined4 *)(param_1 + 4),iVar1 + 1);
          ov49_022693A4(param_3,param_4,uVar5,0x5c6);
        }
      }
      else if ((iVar4 == 2) &&
              (iVar3 = ov49_0225E4A4(*(undefined4 *)(param_1 + 8),param_2), iVar3 == 1)) {
        func_0x0222adf8(*(undefined4 *)(param_1 + 4),iVar1 + 2);
        if (extraout_r1 == 2) {
          ov49_022693A4(param_3,param_4,uVar5,*(undefined2 *)(iVar2 + 0x226a8e6));
        }
        else {
          ov49_022693A4(param_3,param_4,uVar5,*(undefined2 *)(iVar2 + 0x226a8e2));
        }
      }
    }
    iVar4 = iVar4 + 1;
  } while (iVar4 < 3);
  return;
}

