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
undefined4 func_0x02007c48() __asm__("sub_02007C48");
undefined4 func_0x0205b4a4() __asm__("sub_0205B4A4");
undefined4 ReadMsgDataIntoString();
undefined4 ov73_021E7740();
undefined4 String_New();

void ov73_021E5E0C(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  
  iVar5 = 0;
  iVar2 = param_1;
  iVar3 = param_1;
  iVar4 = param_1;
  do {
    uVar1 = String_New(8,0x32);
    *(undefined4 *)(iVar4 + 0x2c) = uVar1;
    *(undefined4 *)(iVar2 + 0x338) = 0;
    *(undefined4 *)(iVar2 + 0x33c) = 0;
    iVar5 = iVar5 + 1;
    *(undefined4 *)(iVar3 + 0x4a3c) = 0;
    *(undefined4 *)(iVar3 + 0x4a40) = 0;
    iVar2 = iVar2 + 8;
    *(undefined4 *)(iVar3 + 0x4a44) = 0;
    *(undefined4 *)(iVar3 + 0x4a48) = 0;
    *(undefined4 *)(iVar4 + 0x360) = 0;
    iVar4 = iVar4 + 4;
    iVar3 = iVar3 + 0x10;
  } while (iVar5 < 5);
  uVar1 = String_New(0xb4,0x32);
  *(undefined4 *)(param_1 + 0x44) = uVar1;
  uVar1 = String_New(0x28,0x32);
  *(undefined4 *)(param_1 + 0x48) = uVar1;
  *(undefined4 *)(param_1 + 0x318) = 0;
  ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x28),0x11,*(undefined4 *)(param_1 + 0x48));
  ov73_021E7740(param_1,param_2);
  uVar1 = func_0x0205b4a4(0x32);
  *(undefined4 *)(param_1 + 0x37c) = uVar1;
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 *)(param_1 + 0x10) = 0;
  uVar1 = func_0x02007c48(param_2,7,param_1 + 0x1c,0x32);
  *(undefined4 *)(param_1 + 0x18) = uVar1;
  *(undefined4 *)(param_1 + 0x4a18) = 0;
  *(undefined4 *)(param_1 + 0x4a1c) = 2;
  *(undefined1 *)(param_1 + 0x4a15) = 0;
  return;
}

