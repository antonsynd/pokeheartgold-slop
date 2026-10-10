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
undefined4 SysTask_Destroy();
undefined4 ov96_021E8B8C();
undefined4 ov96_021E90FC();
undefined4 ov96_021E8B88();
undefined4 ov96_021EABA8();

void ov96_021EAA24(undefined4 param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  
  iVar1 = ov96_021E8B88(*(undefined4 *)(param_2 + 0x14));
  if (iVar1 != 0) {
    uVar3 = 0;
    iVar1 = *(int *)(param_2 + 8);
    if (0 < *(int *)(param_2 + 4)) {
      iVar5 = param_2 + 0x1c;
      iVar4 = param_2;
      do {
        uVar2 = ov96_021E8B8C(*(undefined4 *)(param_2 + 0x14),uVar3 & 0xff);
        *(undefined4 *)(iVar4 + 0x1c) = uVar2;
        ov96_021EABA8(iVar5,iVar1);
        iVar1 = iVar1 + 1;
        uVar2 = ov96_021E90FC(*(undefined4 *)(iVar4 + 0x1c));
        *(undefined4 *)(iVar4 + 0x44) = uVar2;
        uVar3 = uVar3 + 1;
        iVar4 = iVar4 + 0x44;
        iVar5 = iVar5 + 0x44;
      } while ((int)uVar3 < *(int *)(param_2 + 4));
    }
    *(undefined4 *)(param_2 + 0xc) = 1;
    SysTask_Destroy(param_1);
  }
  return;
}

