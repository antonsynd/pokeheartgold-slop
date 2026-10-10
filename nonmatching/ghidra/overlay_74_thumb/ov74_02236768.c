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
undefined4 func_0x020d4808() __asm__("sub_020D4808");
undefined4 ov74_022366E8();
undefined4 ov74_02236168();
extern int iRam0223e2fc __asm__("sub_0223E2FC");

undefined4 ov74_02236768(short *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;

  if ((*(short *)(iRam0223e2fc + 0x115a) != *param_1) ||
     (*(int *)(iRam0223e2fc + 0x1160) != *(int *)(param_1 + 2))) {
    uVar1 = *(uint *)(iRam0223e2fc + 0x1164);
    *(uint *)(iRam0223e2fc + 0x1164) = uVar1 + 1;
    if (uVar1 < 0x10) {
      return 0;
    }
    ov74_022366E8(param_1);
    if (*(code **)(iRam0223e2fc + 0x117c) != (code *)0x0) {
      (**(code **)(iRam0223e2fc + 0x117c))(5);
    }
  }
  if ((ushort)param_1[1] == 0xffff) {
    func_0x020d4808(param_1 + 4,iRam0223e2fc + 0xfe0,0x68,0xffff,param_4);
    *(undefined4 *)(iRam0223e2fc + 0x1048) = 1;
  }
  else {
    *(uint *)(iRam0223e2fc + 0x1168) = (uint)(ushort)param_1[1];
    if (*(ushort *)(iRam0223e2fc + 0x115c) <= (ushort)param_1[1]) {
      if (*(code **)(iRam0223e2fc + 0x117c) != (code *)0x0) {
        (**(code **)(iRam0223e2fc + 0x117c))(4);
      }
      ov74_02236168(9);
    }
    if (*(char *)(iRam0223e2fc + 0x1180 + (uint)(ushort)param_1[1]) == '\0') {
      *(undefined1 *)(iRam0223e2fc + 0x1180 + (uint)(ushort)param_1[1]) = 1;
      uVar1 = (uint)(ushort)param_1[1];
      if (uVar1 == *(ushort *)(iRam0223e2fc + 0x115c) - 1) {
        func_0x020d4808(param_1 + 4,*(int *)(iRam0223e2fc + 0x1178) + uVar1 * 0x68,
                        *(int *)(iRam0223e2fc + 0x1160) + uVar1 * -0x68,uVar1 * 0x68,param_4);
      }
      else {
        func_0x020d4808(param_1 + 4,*(int *)(iRam0223e2fc + 0x1178) + uVar1 * 0x68,0x68,uVar1 * 0x68
                        ,param_4);
      }
      *(short *)(iRam0223e2fc + 0x115e) = *(short *)(iRam0223e2fc + 0x115e) + 1;
      if (*(short *)(iRam0223e2fc + 0x115e) == *(short *)(iRam0223e2fc + 0x115c)) {
        if (*(code **)(iRam0223e2fc + 0x117c) != (code *)0x0) {
          (**(code **)(iRam0223e2fc + 0x117c))(2);
        }
        return 1;
      }
    }
  }
  return 0;
}

