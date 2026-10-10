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
undefined4 ov59_0223919C();
undefined4 sub_02031C30();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 ov59_02238C40();
undefined4 ov59_02238CFC();
undefined4 ov59_022385AC();
undefined4 ov59_0223892C();
undefined4 ov59_02238D74();
undefined4 func_0x02024964() __asm__("sub_02024964");
undefined4 ov59_02238768();
undefined4 ov59_02238FF4();
undefined4 ov59_022390A8();
undefined4 Sprite_IsAnimated();
undefined4 Sprite_SetDrawFlag();
undefined4 PlaySE();

undefined4 ov59_022383B4(int param_1)

{
  int iVar1;

  switch(*(undefined2 *)(param_1 + 0x3c)) {
  case 0:
    if (*(byte *)(param_1 + 0x18) < 5) {
      *(undefined1 *)(param_1 + 0x49) = 2;
      *(undefined1 *)(param_1 + 0x4a) = 0;
      *(undefined2 *)(param_1 + 0x3c) = 2;
    }
    else {
      ov59_02238C40(param_1,7);
      ov59_02238CFC(param_1,0x1a,0xff);
      *(undefined2 *)(param_1 + 0x3c) = 1;
    }
    break;
  case 1:
    iVar1 = ov59_022385AC();
    if (iVar1 != 0) {
      ov59_02238D74(param_1);
      *(undefined2 *)(param_1 + 0x3c) = 0;
      return 9;
    }
    break;
  case 2:
    iVar1 = ov59_022390A8(param_1,0);
    if (iVar1 != 0) {
      Sprite_SetDrawFlag(*(undefined4 *)(param_1 + (*(byte *)(param_1 + 0x4d) + 2) * 4 + 0x254),0);
      Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x27c),0x16);
      func_0x02024964(*(undefined4 *)(param_1 + 0x27c));
      *(short *)(param_1 + 0x3c) = *(short *)(param_1 + 0x3c) + 1;
    }
    break;
  case 3:
    iVar1 = Sprite_IsAnimated(*(undefined4 *)(param_1 + 0x27c));
    if (iVar1 == 0) {
      PlaySE(0x8e6);
      Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x27c),0x14);
      sub_02031C30(*(undefined4 *)(param_1 + 0x10),*(undefined1 *)(param_1 + 0x4d),
                   *(undefined4 *)(param_1 + 0x38));
      ov59_02238768(param_1);
      ov59_0223919C(param_1,1,0);
      *(short *)(param_1 + 0x3c) = *(short *)(param_1 + 0x3c) + 1;
    }
    break;
  case 4:
    if (*(char *)(param_1 + 0x50) == '\0') {
      if (*(byte *)(param_1 + 0x18) < 5) {
        ov59_02238C40(param_1,6);
      }
      else {
        ov59_02238C40(param_1,7);
      }
      ov59_0223892C(param_1,*(undefined1 *)(param_1 + 0x4d));
      ov59_02238FF4(param_1,0);
      *(undefined2 *)(param_1 + 0x3c) = 0;
      return 4;
    }
  }
  return 10;
}

