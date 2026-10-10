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
undefined4 ov49_0225A10C();
undefined4 ov49_0225A144();
undefined4 ov49_0225A154();
undefined4 ov49_0225A30C();
extern undefined ov49_02269E44;

void ov49_02264F9C(undefined4 *param_1,undefined4 param_2,uint param_3,int param_4,int param_5)

{
  undefined4 uVar1;
  uint uVar2;
  
  ov49_0225A10C(param_2,param_3);
  uVar2 = 0;
  param_1[8] = param_3;
  if (param_3 != 0) {
    do {
      if ((param_5 == 0) || (uVar2 != param_3 - 1)) {
        uVar1 = ov49_0225A30C(param_2,3,param_4 + uVar2);
      }
      else if (param_5 == 1) {
        uVar1 = ov49_0225A30C(param_2,3,0x205);
      }
      else {
        uVar1 = ov49_0225A30C(param_2,3,0xeb);
      }
      ov49_0225A144(param_2,uVar1,uVar2);
      uVar2 = uVar2 + 1;
    } while (uVar2 < param_3);
  }
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0x60000;
  param_1[5] = 0x10000800;
  param_1[6] = 0x2f;
  param_1[7] = 0;
  *(short *)(param_1 + 4) = (short)param_1[8];
  uVar2 = param_1[8];
  if (uVar2 < *(ushort *)((int)param_1 + 0x12)) {
    *(short *)((int)param_1 + 0x12) = (short)uVar2;
  }
  uVar1 = ov49_0225A154(param_2,uVar2,param_1 + 8,&ov49_02269E44);
  *param_1 = uVar1;
  return;
}

