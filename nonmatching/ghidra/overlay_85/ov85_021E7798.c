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
undefined4 ov85_021E7B04();
undefined4 ov85_021E7A54();
undefined4 ov85_021E78D8();

void ov85_021E7798(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_18;
  
  uStack_18 = 0;
  iVar1 = *(int *)(param_1 + 0x30);
  iVar2 = param_1 + 400;
  if (0 < iVar1) {
    uStack_20 = param_1 + 0x2d0;
    uStack_28 = param_1 + 0x640;
    iVar3 = param_1 + 0x8ac;
    iVar4 = iVar2;
    uStack_24 = iVar2;
    do {
      if (*(int *)(iVar2 + 0x140) != 0) {
        ov85_021E78D8(uStack_20,param_1 + 0x104);
      }
      if (*(int *)(uStack_24 + 0x4b0) != 0) {
        ov85_021E7A54(param_1,uStack_28);
      }
      if (*(int *)(iVar4 + 0x71c) != 0) {
        ov85_021E7B04(param_1,iVar3);
      }
      iVar2 = iVar2 + 0xb0;
      uStack_20 = uStack_20 + 0xb0;
      iVar4 = iVar4 + 0x68;
      uStack_24 = uStack_24 + 0x7c;
      iVar3 = iVar3 + 0x68;
      uStack_28 = uStack_28 + 0x7c;
      uStack_18 = uStack_18 + 1;
    } while (uStack_18 < iVar1);
  }
  return;
}

