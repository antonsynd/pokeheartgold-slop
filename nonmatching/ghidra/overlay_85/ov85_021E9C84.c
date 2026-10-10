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
undefined4 ov85_021EA19C();
undefined4 ov85_021EA17C();
undefined4 func_0x020200a0() __asm__("sub_020200A0");
undefined4 ov85_021EA0EC();
undefined4 BufferPlayersName();
undefined4 Clear2dMenuWindowAndDelete();
undefined4 sub_02034818();
undefined4 sub_0203769C();

void ov85_021E9C84(int param_1,int param_2,uint param_3)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;

  if (param_2 < 0x14) {
    if (param_2 < 0x13) {
      if (param_2 < 9) {
        if (param_2 < 2) {
          return;
        }
        if (param_2 == 2) {
          ov85_021EA19C();
        }
        else if ((param_2 != 7) && (param_2 != 8)) {
          return;
        }
      }
      else {
        if (param_2 != 0xd) {
          return;
        }
        if (*(int *)(param_1 + 0x330) != 0) {
          Clear2dMenuWindowAndDelete(*(int *)(param_1 + 0x330),0x66);
          *(undefined4 *)(param_1 + 0x330) = 0;
        }
      }
    }
    else {
      if (*(char *)(param_1 + 0x4a50) == '\x01') {
        return;
      }
      uVar1 = sub_02034818(param_3);
      BufferPlayersName(*(undefined4 *)(param_1 + 0x34),0,uVar1);
      uVar2 = sub_0203769C();
      if (param_3 == uVar2) {
        return;
      }
      if (*(int *)(param_1 + 0x330) != 0) {
        Clear2dMenuWindowAndDelete(*(int *)(param_1 + 0x330),0x66);
        *(undefined4 *)(param_1 + 0x330) = 0;
      }
      iVar3 = sub_0203769C();
      if (iVar3 == 0) {
        *(uint *)(*(int *)(param_1 + 0x10) + 0x30) =
             (param_3 ^ 0xffff) & *(uint *)(*(int *)(param_1 + 0x10) + 0x30);
      }
    }
  }
  else if (param_2 < 0x1a) {
    if (param_2 != 0x19) {
      return;
    }
    iVar3 = ov85_021EA17C(*(undefined4 *)(param_1 + 0x5c));
    if (iVar3 == 0) {
      func_0x020200a0(*(uint *)(param_1 + 0x5c) & 0xff);
    }
    ov85_021EA0EC(param_1,0xc,0);
    if (*(int *)(param_1 + 0x330) != 0) {
      Clear2dMenuWindowAndDelete(*(int *)(param_1 + 0x330),0x66);
      *(undefined4 *)(param_1 + 0x330) = 0;
    }
  }
  else {
    if (param_2 != 0x1f) {
      return;
    }
    iVar3 = ov85_021EA17C(*(undefined4 *)(param_1 + 0x5c));
    if (iVar3 == 0) {
      func_0x020200a0(*(uint *)(param_1 + 0x5c) & 0xff);
    }
    if (*(int *)(param_1 + 0x330) != 0) {
      Clear2dMenuWindowAndDelete(*(int *)(param_1 + 0x330),0x66);
      *(undefined4 *)(param_1 + 0x330) = 0;
    }
  }
  *(int *)(param_1 + 0x354) = param_2;
  return;
}

