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
undefined4 ov75_02247854();
undefined4 ov75_022494CC();

undefined4 ov75_02249278(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  uint uVar2;
  undefined4 uVar3;
  
  bVar1 = false;
  uVar2 = *(uint *)(param_1 + 0x10);
  if ((int)uVar2 < -4) {
    if ((int)uVar2 < -5) {
      if ((int)uVar2 < -0xe) {
        if ((int)uVar2 < -0xf) {
          switch(uVar2) {
          case 0xffffec6d:
            uVar3 = 0xb8;
            bVar1 = true;
            break;
          case 0xffffec6e:
            uVar3 = 0xb7;
            bVar1 = true;
            break;
          default:
            goto LAB_0224930a;
          case 0xffffec71:
            uVar3 = 0xb6;
            bVar1 = true;
            break;
          case 0xffffec72:
            uVar3 = 0xb6;
            bVar1 = true;
            break;
          case 0xffffec73:
            uVar3 = 0xb8;
            bVar1 = true;
            break;
          case 0xffffec74:
            uVar3 = 0xb7;
            bVar1 = true;
            break;
          case 0xffffec75:
            uVar3 = 0xb6;
            bVar1 = true;
            break;
          case 0xffffec76:
            uVar3 = 0xb6;
            bVar1 = true;
            break;
          case 0xffffec77:
            uVar3 = 0xb5;
            bVar1 = true;
          }
          goto LAB_02249342;
        }
      }
      else if (((int)uVar2 < -0xd) && (uVar2 == 0xfffffff2)) {
LAB_02249306:
        uVar3 = 0x39;
        goto LAB_02249342;
      }
    }
  }
  else if (uVar2 < 0x80000000) {
    if ((int)uVar2 < 2) {
      if (uVar2 == 1) {
        uVar3 = 0x36;
        goto LAB_02249342;
      }
    }
    else if (uVar2 == 2) goto LAB_02249302;
  }
  else {
    if (-2 < (int)uVar2) {
LAB_02249302:
      uVar3 = 0x37;
      goto LAB_02249342;
    }
    if ((-3 < (int)uVar2) && (uVar2 == 0xfffffffe)) goto LAB_02249306;
  }
LAB_0224930a:
  uVar3 = 0x38;
LAB_02249342:
  if (bVar1) {
    ov75_022494CC(param_1,*(undefined4 *)(param_1 + 0x24),uVar3,1,0xf0f,param_4);
  }
  else {
    ov75_022494CC(param_1,*(undefined4 *)(param_1 + 0x34),uVar3,1,0xf0f,param_4);
  }
  ov75_02247854(param_1,0x22,0x21);
  return 0;
}

