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
void * sub_02010EE0(void *, int);
void * sub_02010E64(void *, int, int, int);
undefined4 sub_020124B0();
undefined4 sub_02011068(int, int, int, int);
undefined4 sub_0200FF88(int, void *, void *, int, int);
void * SysTask_CreateOnVWaitQueue(void *, void *, unsigned int);
undefined4 sub_02010F84(int, int, int, int, int, int, int, int, int, int);
undefined4 sub_020125D4();

void sub_02012358(undefined *param_1,ushort *param_2,undefined4 param_3,undefined4 param_4,
                 int param_5,int param_6,undefined4 param_7,int param_8)

{
  undefined *puVar1;
  undefined *puVar2;

  *(undefined4 *)(param_1 + 0xc) = 0;
  *(uint *)(param_1 + 0x10) = (uint)*param_2;
  *(uint *)(param_1 + 0x14) = (uint)param_2[1] - (uint)*param_2;
  sub_02010E64(param_1,2,param_5,param_8);
  *(undefined4 *)(param_1 + 0x18) = param_3;
  *(undefined4 *)(param_1 + 0x1c) = 0;
  *(undefined4 *)(param_1 + 0x20) = param_4;
  *(undefined4 *)(param_1 + 0x24) = 0;
  *(int *)(param_1 + 0x30) = param_6;
  *(undefined4 *)(param_1 + 0x34) = param_7;
  *(int *)(param_1 + 0x2c) = param_8;
  *(uint *)(param_1 + 0x28) = (uint)param_2[3];
  sub_020125D4(param_1 + 0xc,*(undefined4 *)(param_1 + 0x1c),*(undefined4 *)(param_1 + 0x18));
  sub_020124B0(param_1);
  SysTask_CreateOnVWaitQueue((undefined *)0x2010f01,param_1,0x3ff);
  puVar1 = sub_02010EE0(param_1,0);
  puVar2 = sub_02010EE0(param_1,1);
  sub_02010F84(param_6,(uint)(byte)param_2[2],(uint)*(byte *)((int)param_2 + 5),0,param_5,
               (int)*(short *)(puVar1 + 0x300),0,(int)*(short *)(puVar1 + 0x480),0xc0,
               *(int *)(param_1 + 0x28));
  sub_02010F84(param_6,(uint)(byte)param_2[2],(uint)*(byte *)((int)param_2 + 5),1,param_5,
               (int)*(short *)(puVar2 + 0x300),0,(int)*(short *)(puVar2 + 0x480),0xc0,
               *(int *)(param_1 + 0x28));
  sub_02011068(param_6,3,param_5,*(int *)(param_1 + 0x28));
  sub_0200FF88(*(int *)(param_1 + 0x34),param_1,(undefined *)0x2010c39,param_5,param_8);
  return;
}

