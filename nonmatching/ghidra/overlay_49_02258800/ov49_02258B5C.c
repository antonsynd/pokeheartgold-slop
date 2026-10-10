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
undefined4 func_0x02228068() __asm__("sub_02228068");
undefined4 func_0x02228c80() __asm__("sub_02228C80");
undefined4 func_0x02230680() __asm__("sub_02230680");
undefined4 ov49_02258AB0();
undefined4 ov49_022593FC();
undefined4 func_0x02229ac8() __asm__("sub_02229AC8");

void ov49_02258B5C(undefined4 *param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined1 auStack_20 [8];
  undefined1 auStack_18 [4];

  iVar4 = 0;
  if (*(short *)(param_1 + 3) != 0) {
    iVar3 = 0;
    do {
      iVar1 = ov49_022593FC(param_1[2] + iVar3);
      if (iVar1 == 0) {
        (**(code **)(param_1[2] + iVar3 + 0x24))(param_1[2] + iVar3,param_1);
      }
      iVar4 = iVar4 + 1;
      iVar3 = iVar3 + 0x28;
    } while (iVar4 < (int)(uint)*(ushort *)(param_1 + 3));
  }
  uVar2 = ov49_02258AB0(param_1[5]);
  iVar4 = func_0x02229ac8(param_1[4],auStack_18);
  if (iVar4 == 1) {
    do {
      iVar4 = func_0x02228c80(uVar2,*param_1,auStack_18,auStack_20);
      if (iVar4 == 1) {
        func_0x02228068(*param_1,auStack_20);
      }
      iVar4 = func_0x02229ac8(param_1[4],auStack_18);
    } while (iVar4 == 1);
  }
  func_0x02230680(param_1[1]);
  return;
}

