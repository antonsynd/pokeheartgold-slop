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
undefined4 func_0x0221bf48() __asm__("sub_0221BF48");
undefined4 ov70_02238398();
undefined4 func_0x0221bfec() __asm__("sub_0221BFEC");
undefined4 func_0x0221c014() __asm__("sub_0221C014");
extern undefined4 uRam02246804 __asm__("sub_02246804");
extern undefined4 uRam02246800 __asm__("sub_02246800");
extern byte bRam0224693c __asm__("sub_0224693C");
undefined4 func_0x020f2ba4() __asm__("sub_020F2BA4");
undefined4 func_0x0221c020() __asm__("sub_0221C020");
extern undefined4 *pbRam02246940 __asm__("sub_02246940");

void ov70_022378DC(void)

{
  byte bVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  
  switch(uRam02246800) {
  default:
    return;
  case 2:
    iVar4 = func_0x0221bf48();
    if (iVar4 == 1) {
      uRam02246800 = 0x18;
      func_0x0221c014();
      uRam02246804 = ov70_02238398();
      func_0x0221bfec();
      return;
    }
    if (iVar4 != 7) {
      return;
    }
    uRam02246800 = 0x18;
    switch(bRam0224693c) {
    default:
      uRam02246804 = 0xfffffff3;
      break;
    case 1:
      uRam02246804 = 0;
      break;
    case 2:
      uRam02246804 = 0xfffffffb;
      break;
    case 3:
      uRam02246804 = 0xfffffffc;
      break;
    case 7:
      uRam02246804 = 0xffffffff;
      break;
    case 8:
      uRam02246804 = 0xfffffff8;
      break;
    case 9:
      uRam02246804 = 0xfffffff7;
      break;
    case 10:
      uRam02246804 = 0xfffffff6;
      break;
    case 0xb:
      uRam02246804 = 0xfffffff5;
      break;
    case 0xc:
      uRam02246804 = 0xfffffffa;
      break;
    case 0xd:
      uRam02246804 = 0xfffffff9;
      break;
    case 0xe:
      uRam02246804 = 0xfffffffe;
    }
    func_0x0221bfec();
    return;
  case 3:
  case 5:
  case 7:
  case 9:
  case 0xb:
  case 0xd:
  case 0xf:
  case 0x11:
  case 0x13:
  case 0x15:
  case 0x17:
    uRam02246800 = 0x18;
    uRam02246804 = 0xfffffff4;
    func_0x0221bfec();
    return;
  case 4:
    iVar4 = func_0x0221bf48();
    if (iVar4 == 1) {
      uRam02246800 = 0x18;
      func_0x0221c014();
      uRam02246804 = ov70_02238398();
      func_0x0221bfec();
      return;
    }
    if (iVar4 != 7) {
      return;
    }
    uRam02246800 = 0x18;
    switch(bRam0224693c) {
    case 1:
      uRam02246804 = 0;
      break;
    case 2:
      uRam02246804 = 0xfffffffb;
      break;
    case 3:
      uRam02246804 = 0xfffffffc;
      break;
    case 5:
      uRam02246804 = 0xfffffffd;
      break;
    default:
      if (bRam0224693c == 0xe) {
        uRam02246804 = 0xfffffffe;
        break;
      }
    case 0:
    case 4:
      uRam02246804 = 0xfffffff3;
    }
    func_0x0221bfec();
    return;
  case 6:
    iVar4 = func_0x0221bf48();
    if (iVar4 == 1) {
      uRam02246800 = 0x18;
      func_0x0221c014();
      uRam02246804 = ov70_02238398();
      func_0x0221bfec();
      return;
    }
    if (iVar4 != 7) {
      return;
    }
    uRam02246800 = 0x18;
    iVar4 = func_0x0221c020();
    if (iVar4 == 0x124) {
      uRam02246804 = 0;
    }
    else {
      bVar1 = *pbRam02246940;
      if (bVar1 == 3) {
        uRam02246804 = 0xfffffffc;
      }
      else if (bVar1 == 5) {
        uRam02246804 = 0xfffffffd;
      }
      else if (bVar1 == 0xe) {
        uRam02246804 = 0xfffffffe;
      }
      else {
        uRam02246804 = 0xfffffff3;
      }
    }
    func_0x0221bfec();
    return;
  case 8:
    iVar4 = func_0x0221bf48();
    if (iVar4 == 1) {
      uRam02246800 = 0x18;
      func_0x0221c014();
      uRam02246804 = ov70_02238398();
      func_0x0221bfec();
      return;
    }
    if (iVar4 != 7) {
      return;
    }
    uRam02246800 = 0x18;
    iVar4 = func_0x0221c020();
    if (iVar4 == 0x124) {
      uRam02246804 = 1;
      goto code_r0x02237b68;
    }
    bVar1 = *pbRam02246940;
    if (bVar1 < 6) {
      if (2 < bVar1) {
        if (bVar1 == 3) {
          uRam02246804 = 0xfffffffc;
          goto code_r0x02237b68;
        }
        if (bVar1 == 4) {
          uRam02246804 = 0;
          goto code_r0x02237b68;
        }
        if (bVar1 == 5) {
          uRam02246804 = 0xfffffffd;
          goto code_r0x02237b68;
        }
      }
    }
    else if (bVar1 == 0xe) {
      uRam02246804 = 0xfffffffe;
      goto code_r0x02237b68;
    }
    uRam02246804 = 0xfffffff3;
code_r0x02237b68:
    func_0x0221bfec();
    return;
  case 10:
    break;
  case 0xc:
    iVar4 = func_0x0221bf48();
    if (iVar4 == 1) {
      uRam02246800 = 0x18;
      func_0x0221c014();
      uRam02246804 = ov70_02238398();
      func_0x0221bfec();
      return;
    }
    if (iVar4 != 7) {
      return;
    }
    uRam02246800 = 0x18;
    switch(bRam0224693c) {
    case 1:
      uRam02246804 = 0;
      break;
    case 2:
      uRam02246804 = 0xfffffffb;
      break;
    case 3:
      uRam02246804 = 0xfffffffc;
      break;
    case 5:
      uRam02246804 = 0xfffffffd;
      break;
    default:
      if (bRam0224693c == 0xe) {
        uRam02246804 = 0xfffffffe;
        break;
      }
    case 0:
    case 4:
      uRam02246804 = 0xfffffff3;
    }
    func_0x0221bfec();
    return;
  case 0xe:
    iVar4 = func_0x0221bf48();
    if (iVar4 == 1) {
      uRam02246800 = 0x18;
      func_0x0221c014();
      uRam02246804 = ov70_02238398();
      func_0x0221bfec();
      return;
    }
    if (iVar4 != 7) {
      return;
    }
    uRam02246800 = 0x18;
    uVar2 = func_0x0221c020();
    if (uVar2 < 0x124) {
      if (uVar2 == 0) {
        uRam02246804 = 0;
      }
      else if (*pbRam02246940 == 0xe) {
        uRam02246804 = 0xfffffffe;
      }
      else {
        uRam02246804 = 0xfffffff3;
      }
    }
    else {
      uVar3 = func_0x0221c020();
      uRam02246804 = func_0x020f2ba4(uVar3,0x124);
    }
    func_0x0221bfec();
    return;
  case 0x10:
    iVar4 = func_0x0221bf48();
    if (iVar4 == 1) {
      uRam02246800 = 0x18;
      func_0x0221c014();
      uRam02246804 = ov70_02238398();
      func_0x0221bfec();
      return;
    }
    if (iVar4 != 7) {
      return;
    }
    uRam02246800 = 0x18;
    iVar4 = func_0x0221c020();
    if (iVar4 == 0x124) {
      uRam02246804 = 0;
    }
    else {
      switch(*pbRam02246940) {
      default:
        uRam02246804 = 0xfffffff3;
        break;
      case 2:
        uRam02246804 = 0xfffffffb;
        break;
      case 8:
        uRam02246804 = 0xfffffff8;
        break;
      case 9:
        uRam02246804 = 0xfffffff7;
        break;
      case 10:
        uRam02246804 = 0xfffffff6;
        break;
      case 0xb:
        uRam02246804 = 0xfffffff5;
        break;
      case 0xc:
        uRam02246804 = 0xfffffffa;
        break;
      case 0xd:
        uRam02246804 = 0xfffffff9;
        break;
      case 0xe:
        uRam02246804 = 0xfffffffe;
      }
    }
    func_0x0221bfec();
    return;
  case 0x12:
    iVar4 = func_0x0221bf48();
    if (iVar4 == 1) {
      uRam02246800 = 0x18;
      func_0x0221c014();
      uRam02246804 = ov70_02238398();
      func_0x0221bfec();
      return;
    }
    if (iVar4 != 7) {
      return;
    }
    uRam02246800 = 0x18;
    if (bRam0224693c == 1) {
      uRam02246804 = 0;
    }
    else if (bRam0224693c == 2) {
      uRam02246804 = 0xfffffffb;
    }
    else if (bRam0224693c == 0xe) {
      uRam02246804 = 0xfffffffe;
    }
    func_0x0221bfec();
    return;
  case 0x14:
    iVar4 = func_0x0221bf48();
    if (iVar4 == 1) {
      uRam02246800 = 0x18;
      func_0x0221c014();
      uRam02246804 = ov70_02238398();
      func_0x0221bfec();
      return;
    }
    if (iVar4 != 7) {
      return;
    }
    uRam02246800 = 0x18;
    if (bRam0224693c < 8) {
      if (bRam0224693c != 0) {
        if (bRam0224693c == 1) {
          uRam02246804 = 0;
          goto code_r0x02237e7a;
        }
        if (bRam0224693c == 6) {
          uRam02246804 = 1;
          goto code_r0x02237e7a;
        }
        if (bRam0224693c == 7) {
          uRam02246804 = 2;
          goto code_r0x02237e7a;
        }
      }
    }
    else if (bRam0224693c == 0xe) {
      uRam02246804 = 0xfffffffe;
      goto code_r0x02237e7a;
    }
    uRam02246804 = 0xfffffff3;
code_r0x02237e7a:
    func_0x0221bfec();
    return;
  case 0x16:
    iVar4 = func_0x0221bf48();
    if (iVar4 == 1) {
      uRam02246800 = 0x18;
      func_0x0221c014();
      uRam02246804 = ov70_02238398();
      func_0x0221bfec();
      return;
    }
    if (iVar4 != 7) {
      return;
    }
    uRam02246800 = 0x18;
    iVar4 = func_0x0221c020();
    if (iVar4 == 8) {
      uRam02246804 = 0;
      goto code_r0x02237f12;
    }
    if (bRam0224693c < 8) {
      if (bRam0224693c != 0) {
        if (bRam0224693c == 1) {
          uRam02246804 = 0;
          goto code_r0x02237f12;
        }
        if (bRam0224693c == 6) {
          uRam02246804 = 1;
          goto code_r0x02237f12;
        }
        if (bRam0224693c == 7) {
          uRam02246804 = 2;
          goto code_r0x02237f12;
        }
      }
    }
    else if (bRam0224693c == 0xe) {
      uRam02246804 = 0xfffffffe;
      goto code_r0x02237f12;
    }
    uRam02246804 = 0xfffffff3;
code_r0x02237f12:
    func_0x0221bfec();
    return;
  }
  iVar4 = func_0x0221bf48();
  if (iVar4 == 1) {
    uRam02246800 = 0x18;
    func_0x0221c014();
    uRam02246804 = ov70_02238398();
    func_0x0221bfec();
    return;
  }
  if (iVar4 != 7) {
    return;
  }
  uRam02246800 = 0x18;
  if (bRam0224693c < 6) {
    if (bRam0224693c != 0) {
      if (bRam0224693c == 1) {
        uRam02246804 = 0;
        goto code_r0x02237be6;
      }
      if (bRam0224693c == 3) {
        uRam02246804 = 0xfffffffc;
        goto code_r0x02237be6;
      }
      if (bRam0224693c == 5) {
        uRam02246804 = 0xfffffffd;
        goto code_r0x02237be6;
      }
    }
  }
  else if (bRam0224693c == 0xe) {
    uRam02246804 = 0xfffffffe;
    goto code_r0x02237be6;
  }
  uRam02246804 = 0xfffffff3;
code_r0x02237be6:
  func_0x0221bfec();
  return;
}

