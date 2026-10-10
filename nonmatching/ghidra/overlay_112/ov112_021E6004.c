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
undefined4 func_0x020d34b0() __asm__("sub_020D34B0");
undefined4 ov112_021E5EC4();
undefined4 ov112_021E5EEC();
undefined4 func_0x020f2274() __asm__("sub_020F2274");
undefined4 func_0x020f1cc8() __asm__("sub_020F1CC8");
undefined4 func_0x020f2900() __asm__("sub_020F2900");
extern undefined4 uRam021ffae4 __asm__("sub_021FFAE4");
extern undefined8 uRam021ffae0 __asm__("sub_021FFAE0");
extern int iRam021ffafc __asm__("sub_021FFAFC");
extern undefined4 uRam021ffad0 __asm__("sub_021FFAD0");
extern undefined1 bRam021ffb41 __asm__("sub_021FFB41");
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");
undefined4 ov112_021E5A68();
undefined4 ov112_021E5E18();
undefined4 ov112_021E5A5C();
undefined4 ov112_021E6134();
extern int iRam021ffac8 __asm__("sub_021FFAC8");
extern undefined1 cRam021ffb40 __asm__("sub_021FFB40");
extern undefined4 iRam021ffad4 __asm__("sub_021FFAD4");
extern undefined4 uRam021ffadc __asm__("sub_021FFADC");

void ov112_021E6004(void)

{
  undefined4 uVar1;
  undefined4 in_r3;
  uint uVar2;
  longlong lVar3;
  
  lVar3 = func_0x020d34b0();
  lVar3 = lVar3 - CONCAT44(uRam021ffae4,uRam021ffae0);
  uVar2 = (uint)lVar3;
  func_0x020f2900(uVar2 * 0x40,(int)((ulonglong)lVar3 >> 0x20) * 0x40 | uVar2 >> 0x1a,0x82ea,0,in_r3
                 );
  uVar1 = func_0x020f2274();
  func_0x020f1cc8(uVar1,0x447a0000);
  if (bRam021ffb41 < 0xb1) {
    if (0xaf < bRam021ffb41) goto LAB_021e60f8;
    if ((bRam021ffb41 < 0x3f) && (0x39 < bRam021ffb41)) {
      if (bRam021ffb41 == 0x3a) {
        bRam021ffb41 = 0x3c;
        if (iRam021ffafc == 0) {
          ov112_021E5EC4(uRam021ffad0,0xd700,0x28be);
        }
        else {
          ov112_021E5EC4(iRam021ffafc,0xd700,0x28be);
        }
        ov112_021E5EEC();
        return;
      }
      if (bRam021ffb41 == 0x3c) {
        bRam021ffb41 = 0x3e;
        func_0x020d4a50(iRam021ffac8 + 0x10,iRam021ffad4 + 8,0x28);
        ov112_021E5EC4(iRam021ffad4,0xd480,0x224);
        ov112_021E5EEC();
        return;
      }
      if (bRam021ffb41 == 0x3e) {
        if (cRam021ffb40 == 'R') {
          bRam021ffb41 = 0x48;
          ov112_021E5EC4(0xce80,uRam021ffadc,0xd4c);
          ov112_021E6134();
          return;
        }
        ov112_021E5A68(0,0,0x24,1);
        return;
      }
    }
  }
  else if (bRam021ffb41 < 0xb3) {
    if (bRam021ffb41 == 0xb2) {
LAB_021e60f8:
      ov112_021E5A68(0,0,0x24,1);
      return;
    }
  }
  else {
    switch(bRam021ffb41) {
    case 0xb4:
    case 0xb6:
    case 0xb8:
    case 0xba:
    case 0xbc:
    case 0xbe:
      goto LAB_021e60f8;
    }
  }
  ov112_021E5E18(0xc);
  ov112_021E5A5C();
  return;
}

