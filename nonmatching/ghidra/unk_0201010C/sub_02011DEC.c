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
undefined4 sub_02011F10();
undefined4 sub_0200FF88(int, void *, void *, int, int);
undefined4 sub_02010F84(int, int, unsigned char, unsigned char, int, int, int, int, int, int, ...);
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 sub_02011068(int, int, int, int);
void * sub_02010E64(void *, unsigned char, int, int, ...);
void * SysTask_CreateOnVWaitQueue(void *, void *, unsigned int);
void * sub_02010EE0(void *, int);

void sub_02011DEC(int param_1,ushort *param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = func_0x020f2998((uint)param_2[1] - (uint)*param_2,param_3);
  sub_02010E64(param_1,(char)param_2[2],param_5,param_8);
  *(undefined4 *)(param_1 + 0xc) = 0x80000;
  *(uint *)(param_1 + 0x10) = (uint)*param_2;
  *(undefined4 *)(param_1 + 0x14) = uVar1;
  *(undefined4 *)(param_1 + 0x18) = param_3;
  *(undefined4 *)(param_1 + 0x1c) = param_4;
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined4 *)(param_1 + 0x28) = param_6;
  *(undefined4 *)(param_1 + 0x2c) = param_7;
  *(undefined4 *)(param_1 + 0x30) = param_8;
  *(uint *)(param_1 + 0x24) = (uint)*(byte *)((int)param_2 + 7);
  sub_02011F10(param_1);
  SysTask_CreateOnVWaitQueue(0x2010f01,param_1,0x3ff);
  iVar2 = sub_02010EE0(param_1,0);
  sub_02010F84(param_6,*(undefined1 *)((int)param_2 + 5),(char)param_2[3],(char)param_2[2],param_5,
               (int)*(short *)(iVar2 + 0x3c0),0,(int)*(short *)(iVar2 + 0x540),0xc0,
               *(undefined4 *)(param_1 + 0x24));
  if ((char)param_2[2] == '\0') {
    sub_02011068(param_6,1,param_5,*(undefined4 *)(param_1 + 0x24));
  }
  else {
    sub_02011068(param_6,2,param_5,*(undefined4 *)(param_1 + 0x24));
  }
  sub_0200FF88(*(undefined4 *)(param_1 + 0x2c),param_1,0x2010c39,param_5,param_8);
  return;
}

