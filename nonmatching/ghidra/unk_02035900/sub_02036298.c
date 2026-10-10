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
undefined4 sub_02036AD8();
undefined4 sub_02033298();
undefined4 sub_02034084(int);
undefined4 sub_02034044(void);
undefined4 sub_02036E60();
unsigned short sub_0203769C(void);
undefined4 sub_020373B4(unsigned short);
unsigned char sub_0203993C(void);
extern undefined1 UNK_0210f901 __asm__("sub_0210F901");
extern uint  uRam021d4148 __asm__("sub_021D4148");
undefined4 sub_02036FA8();
undefined4 sub_02033FC4(unsigned char);
undefined4 sub_02036630();
undefined4 func_0x021e60e8() __asm__("sub_021E60E8");
undefined4 func_0x021e5f84() __asm__("sub_021E5F84");



uint sub_02036298(void)

{
  byte bVar1;
  ushort uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  
  bVar1 = sub_0203993C();
  iVar3 = sub_02034084((uint)bVar1);
  if (iVar3 == 0) {
    sub_0203993C();
    iVar3 = sub_02034044();
    if (iVar3 == 0) {
      uVar4 = sub_02033298();
      if (uVar4 == 4) {
        uVar2 = sub_0203769C();
        iVar3 = sub_020373B4(uVar2);
        uVar4 = 0;
        if (iVar3 != 0) {
          if (*(int *)(uRam021d4148 + 0x668) < 4) {
            sub_02036E60(uRam021d4148 + (uint)*(byte *)(uRam021d4148 + 0x6af) * 0x40);
            sub_02036E60(uRam021d4148 + (1 - (uint)*(byte *)(uRam021d4148 + 0x6af)) * 0x40);
                    
            UNK_0210f901 = 0;
          }
          uVar4 = sub_02036AD8();
        }
      }
    }
    else {
      uVar4 = uRam021d4148;
      if (*(char *)(uRam021d4148 + 0x6b6) != '\0') {
        if (*(int *)(uRam021d4148 + 0x664) == 0) {
          uVar4 = sub_02036E60(uRam021d4148);
          if (uVar4 == 0) {
            return 0;
          }
        }
        else {
          if (3 < *(int *)(uRam021d4148 + 0x668)) {
            return uRam021d4148;
          }
          sub_02036E60(uRam021d4148);
                    
        }
        UNK_0210f901 = 2;
        uVar4 = sub_02036FA8();
        if (uVar4 == 0) {
          iVar3 = func_0x021e5f84(uRam021d4148,0x26);
          uVar4 = 0;
          if (iVar3 != 0) {
                    
            UNK_0210f901 = 4;
            *(int *)(uRam021d4148 + 0x668) = *(int *)(uRam021d4148 + 0x668) + 1;
            return 0x668;
          }
        }
      }
    }
  }
  else {
    uVar4 = uRam021d4148;
    if (*(char *)(uRam021d4148 + 0x6b6) != '\0') {
      if (*(int *)(uRam021d4148 + 0x664) == 0) {
        uVar4 = sub_02036E60(uRam021d4148);
        if (uVar4 == 0) {
          return 0;
        }
      }
      else {
        uVar4 = sub_02036630();
        if (uVar4 == 0) {
          return 0;
        }
        sub_02036E60(uRam021d4148);
                    
      }
      UNK_0210f901 = 2;
      uVar4 = sub_02036FA8();
      if (uVar4 == 0) {
        iVar3 = func_0x021e60e8(uRam021d4148,0x26);
        uVar4 = 0;
        if (iVar3 != 0) {
          bVar1 = sub_0203993C();
          iVar3 = sub_02033FC4(bVar1);
          iVar6 = 0;
          if (0 < iVar3 + 1) {
            iVar7 = 0;
            do {
              iVar5 = sub_020373B4((ushort)iVar6);
              if (iVar5 != 0) {
                *(int *)(uRam021d4148 + iVar7 + 0x66c) = *(int *)(uRam021d4148 + iVar7 + 0x66c) + 1;
              }
              iVar6 = iVar6 + 1;
              iVar7 = iVar7 + 4;
            } while (iVar6 < iVar3 + 1);
          }
                    
          UNK_0210f901 = 4;
          return 0x210f900;
        }
      }
    }
  }
                    
  return uVar4;
}

