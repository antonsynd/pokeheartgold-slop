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
undefined4 func_0x020c3b50() __asm__("sub_020C3B50");
undefined4 func_0x020c3b40() __asm__("sub_020C3B40");
undefined4 SysTask_CreateOnVWaitQueue();
undefined4 func_0x02007a44() __asm__("sub_02007A44");

void Field3dModel_LoadFromFilesystem
               (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  
  uVar1 = func_0x02007a44(param_2,param_3,0,param_4,0);
  *param_1 = uVar1;
  iVar2 = func_0x020c3b40();
  param_1[1] = iVar2;
  if (iVar2 != 0) {
    if ((iVar2 + 8 == 0) || (*(char *)(iVar2 + 9) == '\0')) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = (int *)(iVar2 + 8 + (uint)*(ushort *)(iVar2 + 0xe) + 4);
    }
    if (piVar3 != (int *)0x0) {
      iVar2 = iVar2 + *piVar3;
      goto LAB_021fbd18;
    }
  }
  iVar2 = 0;
LAB_021fbd18:
  param_1[2] = iVar2;
  iVar2 = func_0x020c3b50(*param_1);
  param_1[3] = iVar2;
  if (iVar2 != 0) {
    SysTask_CreateOnVWaitQueue(0x21fbd8d,param_1,0x400);
  }
  return;
}

