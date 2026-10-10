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
undefined4 sub_02060AB8();
undefined4 sub_020607D8();
undefined4 sub_020601BC();
undefined4 func_0x021f9318() __asm__("sub_021F9318");
undefined4 sub_020601A4();
undefined4 sub_02061108();
undefined4 sub_0205F504();
undefined4 sub_0205F73C();
undefined4 sub_020603DC();
undefined4 sub_02060700();
undefined4 sub_0205F514();
undefined4 sub_0206039C();
undefined4 sub_02060698();

void sub_0205FEDC(undefined4 param_1)

{
  undefined1 uVar1;
  undefined1 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  sub_02061108();
  iVar3 = sub_0205F73C(param_1);
  if (iVar3 == 1) {
    uVar1 = sub_0205F504(param_1);
    uVar2 = sub_0205F514(param_1);
    uVar4 = func_0x021f9318(param_1);
    sub_02060AB8(param_1,uVar1,uVar2,uVar4);
    sub_020601BC(param_1,uVar1,uVar2,uVar4);
    sub_0206039C(param_1,uVar1,uVar2,uVar4);
    sub_020603DC(param_1,uVar1,uVar2,uVar4);
    sub_020601A4(param_1,uVar1,uVar2,uVar4);
    sub_02060698(param_1,uVar1,uVar2,uVar4);
    sub_02060700(param_1,uVar1,uVar2,uVar4);
    sub_020607D8(param_1,uVar1,uVar2,uVar4);
  }
  return;
}

