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
undefined4 ov07_0223192C(undefined4, undefined4);
undefined4 SysTask_CreateOnMainQueue(undefined4, undefined4, undefined4);
undefined4 ov07_0221BFC0(undefined4);
undefined4 ov07_0221DF1C(void);

void ov07_0221F024(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  
  iVar1 = ov07_0221DF1C();
  iVar2 = *(int *)(param_1 + 0x18);
  *(undefined4 **)(param_1 + 0x18) = (undefined4 *)(iVar2 + 4);
  uVar3 = *(undefined4 *)(iVar2 + 4);
  *(undefined4 **)(param_1 + 0x18) = (undefined4 *)(iVar2 + 8);
  uVar5 = *(undefined4 *)(iVar2 + 8);
  *(undefined4 **)(param_1 + 0x18) = (undefined4 *)(iVar2 + 0xc);
  uVar4 = *(undefined4 *)(iVar2 + 0xc);
  *(int *)(param_1 + 0x18) = iVar2 + 0x10;
  iVar2 = ov07_0221BFC0(param_1);
  if (iVar2 == 1) {
    *(undefined4 *)(iVar1 + 0x10) = uVar4;
  }
  else {
    iVar2 = ov07_0223192C(param_1,*(undefined2 *)(*(int *)(param_1 + 0xc0) + 0x16));
    if (iVar2 == 3) {
      *(undefined4 *)(iVar1 + 0x10) = uVar5;
    }
    else {
      *(undefined4 *)(iVar1 + 0x10) = uVar3;
    }
  }
  SysTask_CreateOnMainQueue(0x221ed15,iVar1,0x44c);
  return;
}

