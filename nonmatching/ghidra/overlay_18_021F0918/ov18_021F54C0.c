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
undefined4 ov18_021F1294();
undefined4 ov18_021F12C8();
undefined4 ov18_021F11C0();

void ov18_021F54C0(undefined4 *param_1,undefined2 param_2,undefined2 param_3,undefined4 param_4)

{
  short sStack_14;
  short sStack_12;
  short sStack_10;
  short sStack_e;
  undefined4 uStack_c;
  
  *(undefined2 *)(param_1 + 6) = param_2;
  *(undefined2 *)((int)param_1 + 0x1a) = param_3;
  uStack_c = param_4;
  ov18_021F12C8(*param_1,2,&sStack_e,&sStack_10,1);
  ov18_021F12C8(*param_1,4,&sStack_12,&sStack_14,1);
  if (sStack_10 < sStack_14) {
    *(undefined2 *)(param_1 + 7) = 2;
    *(undefined2 *)((int)param_1 + 0x1e) = 8;
    ov18_021F11C0(*param_1,3,1);
    ov18_021F1294(*param_1,3,(int)sStack_e,(sStack_10 + 0xc0) * 0x10000 >> 0x10,2);
    return;
  }
  *(undefined2 *)(param_1 + 7) = 4;
  *(undefined2 *)((int)param_1 + 0x1e) = 9;
  ov18_021F11C0(*param_1,5,1);
  ov18_021F1294(*param_1,5,(int)sStack_12,(sStack_14 + 0xc0) * 0x10000 >> 0x10,2);
  return;
}

