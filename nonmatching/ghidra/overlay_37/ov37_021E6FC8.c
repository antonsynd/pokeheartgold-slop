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
undefined4 sub_0203769C();
undefined4 ov37_021E76C0();
undefined4 ov37_021E6848();
undefined4 ov37_021E7844();
undefined4 CopyWindowToVram();
undefined4 sub_02034818();
undefined4 ov37_021E78A4();
undefined4 BufferPlayersName();

void ov37_021E6FC8(int param_1,int param_2,uint param_3)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;

  if (param_2 < 0x10) {
    if (param_2 < 0xf) {
      switch(param_2) {
      case 0:
      case 2:
      case 4:
      case 5:
      case 6:
      case 7:
        return;
      case 1:
        if ((*(int *)(param_1 + 0x304) == 6) || (*(int *)(param_1 + 0x304) == 0xe)) {
          ov37_021E78A4(param_1);
        }
        ov37_021E6848(param_1 + 0x248,0);
        uVar1 = sub_02034818(param_3);
        BufferPlayersName(*(undefined4 *)(param_1 + 0xc),0,uVar1);
        *(uint *)(param_1 + 800) = param_3;
        *(undefined4 *)(param_1 + 0x93b4) = 0;
        break;
      case 3:
        ov37_021E76C0();
        break;
      case 8:
      case 9:
        break;
      default:
        goto LAB_021e70ae;
      }
    }
  }
  else {
    if (param_2 != 0x15) {
      return;
    }
    if (*(char *)(param_1 + 0x93bc) == '\x01') {
      return;
    }
    uVar1 = sub_02034818(param_3);
    BufferPlayersName(*(undefined4 *)(param_1 + 0xc),0,uVar1);
    uVar2 = sub_0203769C();
    if (param_3 == uVar2) {
      return;
    }
    iVar3 = sub_0203769C();
    if (iVar3 == 0) {
      *(uint *)(param_1 + 0x93b4) = (param_3 ^ 0xffff) & *(uint *)(param_1 + 0x93b4);
    }
    if ((*(int *)(param_1 + 0x304) == 6) || (*(int *)(param_1 + 0x304) == 0xe)) {
      ov37_021E78A4(param_1);
      CopyWindowToVram(param_1 + 0x2c8);
    }
    ov37_021E6848(param_1 + 0x248,0);
  }
  ov37_021E7844(param_1,param_2);
LAB_021e70ae:
  return;
}

