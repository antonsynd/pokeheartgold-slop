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
undefined4 sub_0206121C();
undefined4 sub_02068DA8();
undefined4 sub_02068D90();
undefined4 sub_02068D98();
undefined4 ov01_021F1740();

undefined4 ov01_021FF394(undefined4 param_1,int param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iStack_18;
  int iStack_14;
  int iStack_10;
  
  puVar1 = (undefined4 *)sub_02068D98();
  uVar2 = puVar1[1];
  *(undefined4 *)(param_2 + 0x10) = *puVar1;
  *(undefined4 *)(param_2 + 0x14) = uVar2;
  uVar2 = puVar1[3];
  *(undefined4 *)(param_2 + 0x18) = puVar1[2];
  *(undefined4 *)(param_2 + 0x1c) = uVar2;
  *(undefined4 *)(param_2 + 0x20) = puVar1[4];
  uVar2 = sub_02068D90(param_1);
  *(undefined4 *)(param_2 + 0xc) = uVar2;
  iStack_18 = *(int *)(param_2 + 0x10) * 0x10000 + 0x8000;
  iStack_10 = *(int *)(param_2 + 0x14) * 0x10000 + 0x9000;
  iStack_14 = 0;
  sub_0206121C(*(undefined4 *)(param_2 + 0x18),&iStack_18);
  iStack_14 = iStack_14 + 0x1000;
  sub_02068DA8(param_1,&iStack_18);
  if (*(int *)(param_2 + 0xc) == 0) {
    uVar2 = 5;
  }
  else if (*(int *)(param_2 + 0xc) == 1) {
    uVar2 = 6;
  }
  else {
    uVar2 = 7;
  }
  uVar2 = ov01_021F1740(*(undefined4 *)(param_2 + 0x1c),uVar2,&iStack_18);
  *(undefined4 *)(param_2 + 0x24) = uVar2;
  return 1;
}

