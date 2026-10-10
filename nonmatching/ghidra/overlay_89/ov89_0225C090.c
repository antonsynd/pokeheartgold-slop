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

undefined4 ov89_0225C090(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 uStack_20;
  undefined2 uStack_1e;
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  undefined2 uStack_18;
  short sStack_16;
  undefined2 uStack_14;
  undefined2 uStack_12;
  undefined4 uStack_10;
  
  uStack_18 = 0;
  sStack_16 = 0;
  uStack_14 = 0;
  uStack_12 = 0;
  uStack_10 = param_4;
  switch(*(undefined1 *)(param_2 + 0x26)) {
  case 0:
    func_0x02023618(&uStack_20,param_3);
    *(undefined2 *)(param_2 + 0x18) = uStack_20;
    *(undefined2 *)(param_2 + 0x1a) = uStack_1e;
    *(undefined2 *)(param_2 + 0x1c) = uStack_1c;
    *(undefined2 *)(param_2 + 0x1e) = uStack_1a;
    *(uint *)(param_2 + 0x20) = (uint)*(ushort *)(param_2 + 0x1a);
    *(char *)(param_2 + 0x26) = *(char *)(param_2 + 0x26) + '\x01';
    PlaySE(0x5d5);
  case 1:
    sStack_16 = sStack_16 + -0x1000;
    *(int *)(param_2 + 0x20) = *(int *)(param_2 + 0x20) + -0x1000;
    Camera_AdjustAnglePos(&uStack_18,param_3);
    if (*(int *)(param_2 + 0x20) <= (int)(*(ushort *)(param_2 + 0x1a) - 0x2000)) {
      *(char *)(param_2 + 0x26) = *(char *)(param_2 + 0x26) + '\x01';
    }
    break;
  case 2:
    *(short *)(param_2 + 0x24) = *(short *)(param_2 + 0x24) + 1;
    if (0xf < *(short *)(param_2 + 0x24)) {
      *(char *)(param_2 + 0x26) = *(char *)(param_2 + 0x26) + '\x01';
    }
    break;
  case 3:
    sStack_16 = 0x200;
    *(int *)(param_2 + 0x20) = *(int *)(param_2 + 0x20) + 0x200;
    Camera_AdjustAnglePos(&uStack_18,param_3);
    if ((int)(uint)*(ushort *)(param_2 + 0x1a) <= *(int *)(param_2 + 0x20)) {
      func_0x02023558((undefined2 *)(param_2 + 0x18),param_3);
      return 1;
    }
  }
  return 0;
}

