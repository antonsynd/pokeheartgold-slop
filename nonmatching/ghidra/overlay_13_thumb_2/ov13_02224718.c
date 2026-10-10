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
typedef void code(void);
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
undefined4 ov13_02225358();
undefined4 func_0x020e5ad8() __asm__("sub_020E5AD8");

byte * ov13_02224718(ushort *param_1,uint param_2,ushort *param_3,uint param_4,int param_5)

{
  uint uVar1;
  ushort *puVar2;
  ushort *puVar3;
  uint uVar4;

  uVar4 = 0;
  *(undefined1 *)param_3 = 0;
  uVar1 = param_4 - 8 & 0xffff;
  *(undefined1 *)((int)param_3 + 1) = 0;
  *(undefined1 *)(param_3 + 1) = 0;
  *(undefined1 *)((int)param_3 + 3) = 0;
  *(undefined1 *)(param_3 + 2) = 0;
  *(undefined1 *)((int)param_3 + 5) = 0;
  *(undefined1 *)(param_3 + 3) = 0;
  *(undefined1 *)((int)param_3 + 7) = 0;
  *param_3 = (ushort)(uVar1 << 8) | (ushort)(uVar1 >> 8);
  if (param_5 == 0) {
    func_0x020e5ad8(param_1 + 3,param_3,param_4);
  }
  else {
    ov13_02225358(param_1 + 3,param_3,param_4,param_5,0x10,param_2,param_4);
    param_4 = param_4 + 8;
  }
  *(byte *)param_1 = 0;
  *(byte *)((int)param_1 + 1) = 0;
  *(byte *)(param_1 + 1) = 0;
  *(byte *)((int)param_1 + 3) = 0;
  *(byte *)(param_1 + 2) = 0;
  *(byte *)((int)param_1 + 5) = 0;
  *param_1 = (ushort)((param_2 & 0xffff) << 8) | (ushort)((param_2 & 0xffff) >> 8);
  param_1[1] = (ushort)((param_4 & 0xffff) << 8) | (ushort)((param_4 & 0xffff) >> 8);
  puVar3 = (ushort *)((int)param_1 + param_4 + 6);
  for (puVar2 = param_1; puVar2 < puVar3; puVar2 = (ushort *)((int)puVar2 + 1)) {
    uVar4 = uVar4 + (byte)*puVar2;
  }
  *puVar3 = (ushort)((uVar4 & 0xffff) << 8) | (ushort)((uVar4 & 0xffff) >> 8);
  return (byte *)((int)puVar3 + (2 - (int)param_1));
}

