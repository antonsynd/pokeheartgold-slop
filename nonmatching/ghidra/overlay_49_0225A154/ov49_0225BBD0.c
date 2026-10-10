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
undefined4 ov49_0225BB14();
undefined4 func_0x0222a9cc() __asm__("sub_0222A9CC");
undefined4 func_0x0222a844() __asm__("sub_0222A844");
undefined4 ov49_0225C414();
undefined4 ov49_0225C3DC();
undefined4 func_0x0222aa84() __asm__("sub_0222AA84");
undefined4 ov49_0225C480();
undefined4 ov49_0225BA40();
undefined4 ov49_0225B438();
undefined4 func_0x02028f88() __asm__("sub_02028F88");
undefined4 ov49_0225C470();
undefined4 ov49_0225C460();
undefined4 func_0x0201cb28() __asm__("sub_0201CB28");
undefined4 func_0x02028ed0() __asm__("sub_02028ED0");
undefined4 ov49_0225C3C0();
undefined4 ov49_0225B3A8();
undefined4 Heap_Free();
undefined4 func_0x0222aac8() __asm__("sub_0222AAC8");
undefined4 ov49_0225C4CC();
undefined4 ov49_0225C180();
undefined4 ov49_0225BFF0();
undefined4 ov49_0225C4B0();
undefined4 ov49_0225BEA0();
undefined4 func_0x0222aa5c() __asm__("sub_0222AA5C");

void ov49_0225BBD0(undefined4 param_1,undefined4 param_2,undefined4 *param_3,undefined4 *param_4,
                  undefined4 param_5,int param_6,undefined4 param_7,undefined4 param_8,
                  undefined4 param_9,undefined4 param_10,int param_11,int param_12,
                  undefined4 param_13,undefined4 param_14)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;

  ov49_0225B438(param_5);
  iVar1 = func_0x0222a9cc(param_9);
  if (iVar1 == 0) {
    uVar4 = 0x70800;
    if (param_11 == 0) {
      ov49_0225BA40(param_1,param_4,0x56,param_8);
    }
    else {
      ov49_0225BA40(param_1,param_4,0x58,param_8);
    }
  }
  else {
    uVar4 = 0x30400;
    if (param_11 == 0) {
      ov49_0225BA40(param_1,param_4,0x57,param_8);
    }
    else {
      ov49_0225BA40(param_1,param_4,0x58,param_8);
    }
  }
  func_0x0201cb28(*param_4,4,0);
  func_0x0201cb28(*param_4,5,0);
  func_0x0201cb28(*param_4,6,0);
  ov49_0225C3C0(param_3);
  ov49_0225BB14(param_4,param_7,0x5c,4,0,param_8);
  uVar2 = func_0x02028ed0(param_8);
  func_0x0222a844(param_9,uVar2,param_8);
  ov49_0225C3DC(param_3,param_5,0,0x2c,0,0,uVar4);
  uVar3 = func_0x02028f88(uVar2);
  ov49_0225B3A8(param_5,uVar3,5,0,2);
  ov49_0225C414(param_3,param_5,0,0x31,0x7a,0,0x10200);
  ov49_0225C3DC(param_3,param_5,0,0x2d,0,0x10,uVar4);
  ov49_0225C470(param_3,param_5,uVar2);
  ov49_0225C414(param_3,param_5,0,0x32,0x7a,0x10,0x10200);
  ov49_0225C460(param_3,0);
  ov49_0225C3DC(param_3,param_5,1,0x2e,0,0,uVar4);
  iVar1 = func_0x0222aa84(param_9);
  if (iVar1 == 0) {
    ov49_0225C3DC(param_3,param_5,1,0x37,0x20,0x10,0x10200);
  }
  else {
    ov49_0225C480(param_3,param_5,param_9);
    ov49_0225C3DC(param_3,param_5,1,0x33,0x20,0x10,0x10200);
  }
  ov49_0225C460(param_3,1);
  if (param_12 == 0) {
    *param_3 = 0;
    ov49_0225C3DC(param_3,param_5,4,0x30,8,0,uVar4);
    ov49_0225C460(param_3,4);
    ov49_0225C4CC(param_3,param_4,param_7,param_8,param_9,param_10);
  }
  else {
    *param_3 = 1;
    ov49_0225C470(param_3,param_5,uVar2);
    ov49_0225C3DC(param_3,param_5,4,0x38,8,0,uVar4);
    ov49_0225C4B0(param_3,param_5,param_13);
    ov49_0225C3DC(param_3,param_5,4,0x3b,6,0x18,0x10200);
    ov49_0225C3DC(param_3,param_5,4,0x3c,0x5a,0x18,0x10200);
    ov49_0225C3DC(param_3,param_5,4,0x3d,6,0x2c,0x10200);
    ov49_0225C3DC(param_3,param_5,4,0x3e,0x5a,0x2c,0x10200);
    ov49_0225C460(param_3,4);
  }
  uVar4 = func_0x0222aac8(param_9);
  ov49_0225BFF0(param_3,param_4,param_7,param_8,uVar4,param_14);
  if (param_6 == 1) {
    iVar1 = func_0x0222a9cc(param_9);
    if (iVar1 == 1) {
      uVar4 = 0x61;
    }
    else {
      uVar4 = 0;
    }
  }
  else {
    uVar4 = func_0x0222aa5c(param_9);
  }
  ov49_0225C180(param_3,param_4,param_7,param_8,uVar4);
  ov49_0225BEA0(param_1,param_3,param_4,param_8,param_9);
  Heap_Free(uVar2);
  return;
}

