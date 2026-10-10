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
undefined4 sub_02034044();
undefined4 sub_02036438();
undefined4 sub_02035FF0();
undefined4 sub_0203993C();
undefined4 sub_02036F30();
undefined4 sub_02033298();
undefined4 sub_02033FC4();
undefined4 sub_02036508();
undefined4 sub_020373B4();
undefined4 sub_02036630();
extern int iRam021d4148 __asm__("sub_021D4148");
extern undefined1 UNK_0210f900 __asm__("sub_0210F900");
undefined4 func_0x021e602c() __asm__("sub_021E602C");

void sub_0203667C(void)

{
  undefined2 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  
  uVar1 = sub_0203993C();
  iVar2 = sub_02033FC4(uVar1);
  sub_0203993C();
  iVar3 = sub_02034044();
  if (iVar3 == 0) {
    iVar2 = sub_02033298();
    if ((iVar2 == 4) && (iVar2 = sub_02036630(), iVar2 != 0)) {
      iVar2 = sub_02035FF0();
      if (iVar2 == 0) {
        sub_02036F30(iRam021d4148 + 0x80 + (uint)*(byte *)(iRam021d4148 + 0x6b0) * 0xc0);
        sub_02036F30(iRam021d4148 + 0x80 + (1 - (uint)*(byte *)(iRam021d4148 + 0x6b0)) * 0xc0);
      }
                    
      UNK_0210f900 = 0;
      sub_02036508();
    }
  }
  else {
    iVar3 = sub_020373B4(0);
    if (iVar3 != 0) {
      if (*(int *)(iRam021d4148 + 0x664) == 0) {
        iVar3 = sub_02035FF0();
        if ((iVar3 == 1) && (iVar3 = sub_02036438(0), iVar3 == 0)) {
          return;
        }
      }
      else {
        iVar3 = sub_02036630();
        if (iVar3 == 0) {
          return;
        }
        iVar3 = sub_02035FF0();
        if (iVar3 == 1) {
          sub_02036438(0);
        }
      }
      UNK_0210f900 = 2;
      iVar3 = func_0x021e602c(iRam021d4148 + 0x80,0xc0);
      if (iVar3 != 0) {
        uVar5 = 0;
                    
        UNK_0210f900 = 4;
        if (0 < iVar2 + 1) {
          iVar3 = 0;
          do {
            iVar4 = sub_020373B4(uVar5 & 0xffff);
            if (iVar4 != 0) {
              *(int *)(iRam021d4148 + iVar3 + 0x66c) = *(int *)(iRam021d4148 + iVar3 + 0x66c) + 1;
            }
            uVar5 = uVar5 + 1;
            iVar3 = iVar3 + 4;
          } while ((int)uVar5 < iVar2 + 1);
          return;
        }
      }
    }
  }
                    
  return;
}

