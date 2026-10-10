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
undefined4 ov112_021F2204();
undefined4 ManagedSprite_SetAnim();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov112_021F1624();

void ov112_021F2810(int param_1)

{
  byte bVar1;
  undefined4 uVar2;
  int iVar3;

  uVar2 = 0;
  iVar3 = *(int *)(param_1 + (uint)*(byte *)(param_1 + 0x13d) * 4 + 0xc0);
  ov112_021F2204(param_1,0,1);
  ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x84),1);
  ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x84),0xc);
  bVar1 = *(byte *)(iVar3 + 0x77);
  if (bVar1 < 0xfa) {
    if (bVar1 < 200) {
      if (bVar1 < 0x96) {
        if (0x59 < bVar1) {
          uVar2 = 0x32;
        }
      }
      else {
        uVar2 = 0x31;
      }
    }
    else {
      uVar2 = 0x30;
    }
  }
  else {
    uVar2 = 0x2f;
  }
  ov112_021F1624(param_1,0x2e,uVar2);
  return;
}

