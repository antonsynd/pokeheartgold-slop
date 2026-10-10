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
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
undefined4 PlaySE();
undefined4 ov72_0223B2FC();
extern uint uRam021d1154 __asm__("sub_021D1154");

undefined4 ov72_0223AF7C(int param_1)

{
  int iVar1;
  
  iVar1 = TouchscreenHitbox_FindRectAtTouchNew(0x223b4c8);
  if (iVar1 == -1) {
    if ((uRam021d1154 & 0x40) == 0) {
      if ((uRam021d1154 & 0x80) == 0) {
        if ((uRam021d1154 & 1) == 0) {
          if ((uRam021d1154 & 2) != 0) {
            *(undefined1 *)(param_1 + 0x33) = 1;
            ov72_0223B2FC(param_1,*(undefined1 *)(param_1 + 0x33));
            *(undefined1 *)(param_1 + 0x2d) = 3;
            Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 4));
            PlaySE(0x5dc);
          }
        }
        else {
          Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 4),3);
          *(undefined1 *)(param_1 + 0x2d) = 3;
          PlaySE(0x5dc);
        }
      }
      else {
        *(undefined1 *)(param_1 + 0x33) = 1;
        ov72_0223B2FC(param_1,*(undefined1 *)(param_1 + 0x33));
        PlaySE(0x5dc);
      }
    }
    else {
      *(undefined1 *)(param_1 + 0x33) = 0;
      ov72_0223B2FC(param_1,*(undefined1 *)(param_1 + 0x33));
      PlaySE(0x5dc);
    }
  }
  else {
    PlaySE(0x5dc);
    if (iVar1 == 0) {
      *(undefined1 *)(param_1 + 0x33) = 0;
      ov72_0223B2FC(param_1,*(undefined1 *)(param_1 + 0x33));
      Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 4),3);
      *(undefined1 *)(param_1 + 0x2d) = 3;
    }
    else if (iVar1 == 1) {
      *(undefined1 *)(param_1 + 0x33) = 1;
      ov72_0223B2FC(param_1,*(undefined1 *)(param_1 + 0x33));
      Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 4),3);
      *(undefined1 *)(param_1 + 0x2d) = 3;
    }
  }
  return 0;
}

