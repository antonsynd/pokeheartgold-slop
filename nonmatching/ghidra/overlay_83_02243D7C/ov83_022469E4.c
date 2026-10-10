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
undefined4 ov83_02247CCC();
undefined4 ov83_0224773C();
undefined4 func_0x02237b24() __asm__("sub_02237B24");
undefined4 ov83_02247988();



void ov83_022469E4(int param_1,undefined1 param_2,undefined4 param_3,undefined4 param_4,
                  undefined1 param_5)

{
  undefined4 uVar1;
  short sStack_3c;
  short asStack_3a [5];
  short sStack_30;
  short sStack_2e;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined1 uStack_24;
  undefined2 uStack_20;
  undefined2 uStack_1e;
  undefined2 uStack_1c;
  short sStack_1a;
  short sStack_18;
  short sStack_16;

  ov83_02247988(asStack_3a,&sStack_3c);
  uStack_20 = 3;
  uStack_1e = 0xb00;
  uStack_1c = 0;
  sStack_1a = asStack_3a[0];
  sStack_30 = asStack_3a[0] + sStack_3c + -0x1b;
  sStack_16 = sStack_3c;
  asStack_3a[1] = 3;
  asStack_3a[2] = 0xb00;
  asStack_3a[3] = 0;
  asStack_3a[4] = asStack_3a[0];
  sStack_2e = sStack_3c;
  uStack_2c = *(undefined4 *)(param_1 + 0x5fc);
  uStack_28 = *(undefined4 *)(param_1 + 0x4c);
  uStack_24 = param_2;
  sStack_18 = sStack_30;
  uVar1 = ov83_02247CCC(*(undefined4 *)(param_1 + 0x5f4),asStack_3a + 1,param_3,param_4,param_5);
  *(undefined4 *)(param_1 + 0x5f8) = uVar1;
  *(byte *)(param_1 + 0xf) = *(byte *)(param_1 + 0xf) | 4;
  uVar1 = func_0x02237b24(*(undefined1 *)(param_1 + 9),1);
  ov83_0224773C(param_1 + 0x4e4,uVar1,1);
  ov83_0224773C(param_1 + 0x4f4,uVar1,1);
  return;
}

