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
undefined4 func_0x020cf15c() __asm__("sub_020CF15C");
undefined4 ov27_0225B4AC();
undefined4 Sprite_SetOamMode();
undefined4 ov27_0225B398();
extern undefined2 uRam04001050 __asm__("sub_04001050");

void ov27_0225A8E8(int param_1,int param_2)

{
  if (param_2 != 0) {
    if (((*(uint *)(param_1 + 0x51c) & 0x1f) >> 1 == 5) &&
       ((*(byte *)(*(int *)(param_1 + 0x10) + 0xd2) & 0x3f) == 0)) {
      ov27_0225B398(param_1,0xffffffff);
    }
    Sprite_SetOamMode(*(undefined4 *)(param_1 + 0x3bc),1);
    Sprite_SetOamMode(*(undefined4 *)(param_1 + 0x3c4),1);
    Sprite_SetOamMode(*(undefined4 *)(param_1 + 0x3ac),1);
    Sprite_SetOamMode(*(undefined4 *)(param_1 + 0x3b4),1);
    Sprite_SetOamMode(*(undefined4 *)(param_1 + 0x3b0),1);
    Sprite_SetOamMode(*(undefined4 *)(param_1 + 0x3b8),1);
    if ((*(byte *)(*(int *)(param_1 + 0x10) + 0xd2) & 0x3f) == 0) {
      ov27_0225B4AC(param_1 + 0x390,0xffffffff);
    }
    else {
      ov27_0225B4AC(param_1 + 0x390,*(undefined4 *)(param_1 + 0x14));
    }
    if ((*(uint *)(param_1 + 0x51c) & 0x1f) >> 1 == 2) {
      Sprite_SetOamMode(*(undefined4 *)(param_1 + 0x3a8),0);
    }
    func_0x020cf15c(0x4001050,0,0x23,6,9);
    return;
  }
  uRam04001050 = 0;
  return;
}

