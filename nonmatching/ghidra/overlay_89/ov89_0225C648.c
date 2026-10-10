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
undefined4 PlaySE();
undefined4 func_0x02023618() __asm__("sub_02023618");
undefined4 func_0x02023558() __asm__("sub_02023558");
undefined4 Camera_AdjustAnglePos();

undefined4 ov89_0225C648(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  ushort *puVar1;
  ushort uStack_20;
  undefined2 uStack_1e;
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  short asStack_18 [4];
  undefined4 uStack_10;

  asStack_18[0] = 0;
  asStack_18[1] = 0;
  asStack_18[2] = 0;
  puVar1 = (ushort *)(param_2 + 0xa0);
  asStack_18[3] = 0;
  uStack_10 = param_4;
  switch(*(undefined1 *)(param_2 + 0xae)) {
  case 0:
    func_0x02023618(&uStack_20,param_3);
    *puVar1 = uStack_20;
    *(undefined2 *)(param_2 + 0xa2) = uStack_1e;
    *(undefined2 *)(param_2 + 0xa4) = uStack_1c;
    *(undefined2 *)(param_2 + 0xa6) = uStack_1a;
    *(uint *)(param_2 + 0xa8) = (uint)*puVar1;
    *(char *)(param_2 + 0xae) = *(char *)(param_2 + 0xae) + '\x01';
    PlaySE(0x5d5);
  case 1:
    asStack_18[0] = asStack_18[0] + -0xaaa;
    *(int *)(param_2 + 0xa8) = *(int *)(param_2 + 0xa8) + -0xaaa;
    Camera_AdjustAnglePos(asStack_18,param_3);
    if (*(int *)(param_2 + 0xa8) <= (int)(*puVar1 - 0x2000)) {
      *(char *)(param_2 + 0xae) = *(char *)(param_2 + 0xae) + '\x01';
    }
    break;
  case 2:
    *(short *)(param_2 + 0xac) = *(short *)(param_2 + 0xac) + 1;
    if (0xf < *(short *)(param_2 + 0xac)) {
      *(char *)(param_2 + 0xae) = *(char *)(param_2 + 0xae) + '\x01';
    }
    break;
  case 3:
    asStack_18[0] = 0x200;
    *(int *)(param_2 + 0xa8) = *(int *)(param_2 + 0xa8) + 0x200;
    Camera_AdjustAnglePos(asStack_18,param_3);
    if ((int)(uint)*puVar1 <= *(int *)(param_2 + 0xa8)) {
      func_0x02023558(puVar1,param_3);
      return 1;
    }
  }
  return 0;
}

