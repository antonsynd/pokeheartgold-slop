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
undefined4 ov72_02237D88();
undefined4 func_0x0221c014() __asm__("sub_0221C014");
undefined4 func_0x0221bf48() __asm__("sub_0221BF48");
undefined4 func_0x0221c020() __asm__("sub_0221C020");
undefined4 func_0x0221bfec() __asm__("sub_0221BFEC");
extern undefined4 *pcRam0223b928 __asm__("sub_0223B928");
extern undefined4 uRam0223b820 __asm__("sub_0223B820");
extern undefined4 uRam0223b824 __asm__("sub_0223B824");
extern byte bRam0223b923 __asm__("sub_0223B923");

void ov72_022378DC(void)

{
  int iVar1;

  switch(uRam0223b820) {
  default:
    return;
  case 2:
    break;
  case 3:
  case 5:
  case 7:
  case 9:
  case 0xb:
    uRam0223b820 = 0xc;
    uRam0223b824 = 0xfffffffc;
    func_0x0221bfec();
    return;
  case 4:
    iVar1 = func_0x0221bf48();
    if (iVar1 == 1) {
      uRam0223b820 = 0xc;
      func_0x0221c014();
      uRam0223b824 = ov72_02237D88();
      func_0x0221bfec();
      return;
    }
    if (iVar1 == 7) {
      uRam0223b820 = 0xc;
      iVar1 = func_0x0221c020();
      if (iVar1 == 0xa38) {
        uRam0223b824 = 0;
      }
      else if (*pcRam0223b928 == '\x02') {
        uRam0223b824 = 0xfffffffd;
      }
      else if (*pcRam0223b928 == '\x05') {
        uRam0223b824 = 0xfffffffe;
      }
      else {
        uRam0223b824 = 0xfffffffb;
      }
      func_0x0221bfec();
      return;
    }
    return;
  case 6:
    iVar1 = func_0x0221bf48();
    if (iVar1 == 1) {
      uRam0223b820 = 0xc;
      func_0x0221c014();
      uRam0223b824 = ov72_02237D88();
      func_0x0221bfec();
      return;
    }
    if (iVar1 != 7) {
      return;
    }
    uRam0223b820 = 0xc;
    switch(bRam0223b923) {
    default:
      uRam0223b824 = 0xfffffffb;
      break;
    case 1:
      uRam0223b824 = 0;
      break;
    case 2:
      uRam0223b824 = 0xfffffffd;
      break;
    case 4:
      uRam0223b824 = 0xffffffff;
      break;
    case 5:
      uRam0223b824 = 0xfffffffe;
    }
    func_0x0221bfec();
    return;
  case 8:
    iVar1 = func_0x0221bf48();
    if (iVar1 == 1) {
      uRam0223b820 = 0xc;
      func_0x0221c014();
      uRam0223b824 = ov72_02237D88();
      func_0x0221bfec();
      return;
    }
    if (iVar1 != 7) {
      return;
    }
    uRam0223b820 = 0xc;
    switch(bRam0223b923) {
    default:
      uRam0223b824 = 0xfffffffb;
      break;
    case 1:
      uRam0223b824 = 0;
      break;
    case 3:
      uRam0223b824 = 1;
      break;
    case 4:
      uRam0223b824 = 2;
      break;
    case 5:
      uRam0223b824 = 0xfffffffe;
    }
    func_0x0221bfec();
    return;
  case 10:
    iVar1 = func_0x0221bf48();
    if (iVar1 == 1) {
      uRam0223b820 = 0xc;
      func_0x0221c014();
      uRam0223b824 = ov72_02237D88();
      func_0x0221bfec();
      return;
    }
    if (iVar1 != 7) {
      return;
    }
    uRam0223b820 = 0xc;
    iVar1 = func_0x0221c020();
    if (iVar1 == 8) {
      uRam0223b824 = 0;
    }
    else {
      switch(bRam0223b923) {
      default:
        uRam0223b824 = 0xfffffffb;
        break;
      case 1:
        uRam0223b824 = 0;
        break;
      case 3:
        uRam0223b824 = 1;
        break;
      case 4:
        uRam0223b824 = 2;
        break;
      case 5:
        uRam0223b824 = 0xfffffffe;
      }
    }
    func_0x0221bfec();
    return;
  }
  iVar1 = func_0x0221bf48();
  if (iVar1 == 1) {
    uRam0223b820 = 0xc;
    func_0x0221c014();
    uRam0223b824 = ov72_02237D88();
    func_0x0221bfec();
    return;
  }
  if (iVar1 == 7) {
    uRam0223b820 = 0xc;
    iVar1 = func_0x0221c020();
    if (iVar1 < 1) {
      uRam0223b824 = 0xfffffffe;
    }
    else {
      uRam0223b824 = (uint)bRam0223b923;
    }
    func_0x0221bfec();
    return;
  }
  return;
}

