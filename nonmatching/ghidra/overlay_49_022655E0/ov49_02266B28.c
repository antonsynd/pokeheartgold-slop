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
undefined4 ov49_022589C4();
undefined4 ov49_02259130();
undefined4 ov49_02266C6C();
undefined4 ov49_0225CC44();
undefined4 ov49_02265980();
undefined4 ov49_0226786C();
undefined4 ov49_02258E34();
undefined4 ov49_02266D04();
undefined4 ov49_02258DAC();
extern undefined ov49_0226A754;
extern undefined ov49_0226A750;
extern undefined ov49_0226A74C;

void ov49_02266B28(int param_1,int param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = ov49_02258DAC(*(undefined4 *)(param_1 + 4));
  if (*(int *)(param_2 + 8) == iVar1) {
    ov49_0225CC44(*(undefined4 *)(param_1 + 8));
  }
  uVar2 = ov49_02258E34(*(undefined4 *)(param_2 + 8));
  iVar1 = (int)(short)((uint)uVar2 >> 0x10);
  iVar1 = ov49_022589C4(*(undefined4 *)(param_1 + 0xc),
                        ((int)(short)uVar2 + ((uint)((int)(short)uVar2 >> 3) >> 0x1c) & 0xfffff) >>
                        4,(iVar1 + ((uint)(iVar1 >> 3) >> 0x1c) & 0xfffff) >> 4);
  *(bool *)(param_2 + 0x965) = iVar1 == 0x2a;
  if (param_3 == 1) {
    ov49_02265980(param_1,param_2,0,&ov49_0226A74C);
    ov49_0226786C(param_1,param_2,0,0);
  }
  else if (param_3 == 2) {
    ov49_02265980(param_1,param_2,0,&ov49_0226A74C);
    ov49_02265980(param_1,param_2,1,&ov49_0226A750);
    ov49_0226786C(param_1,param_2,0,2);
    ov49_0226786C(param_1,param_2,1,1);
  }
  else {
    ov49_02265980(param_1,param_2,0,&ov49_0226A74C);
    ov49_02265980(param_1,param_2,1,&ov49_0226A750);
    ov49_02265980(param_1,param_2,2,&ov49_0226A754);
    ov49_0226786C(param_1,param_2,0,0);
    ov49_0226786C(param_1,param_2,1,2);
    ov49_0226786C(param_1,param_2,2,1);
  }
  *(char *)(param_2 + 0x955) = (char)param_3;
  ov49_02259130(*(undefined4 *)(param_2 + 8),0);
  if (*(char *)(param_2 + 0x965) == '\0') {
    ov49_02266C6C(param_1,param_2);
    return;
  }
  ov49_02266D04(param_1,param_2);
  return;
}

