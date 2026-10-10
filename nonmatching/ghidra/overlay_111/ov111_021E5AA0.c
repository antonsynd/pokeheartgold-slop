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
undefined4 PlaySE();
undefined4 ov111_021E6784();
undefined4 YesNoPrompt_HandleInput();
undefined4 ov111_021E6A2C();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov111_021E6770();
undefined4 ov111_021E5BE4();
undefined4 System_GetTouchNew();
undefined4 YesNoPrompt_Reset();
undefined4 ov111_021E67A4();
undefined4 GF_AssertFail();
undefined4 ov111_021E6888();
undefined4 ov111_021E5D08();
undefined4 ov111_021E5C54();
extern uint uRam021d1154 __asm__("sub_021D1154");
undefined4 ov111_021E68FC();

undefined4 ov111_021E5AA0(int param_1)

{
  int iVar1;
  int iVar2;

  iVar2 = -1;
  ov111_021E6A2C(*(undefined4 *)(param_1 + 0x24));
  iVar1 = ov111_021E6888(*(undefined4 *)(param_1 + 0x24));
  if (iVar1 == 0) {
    switch(*(undefined4 *)(param_1 + 0x30)) {
    case 0:
      iVar2 = 1;
      ov111_021E5BE4(param_1);
      *(undefined4 *)(param_1 + 0x30) = 1;
      break;
    case 1:
      ov111_021E5C54(param_1);
      *(undefined4 *)(param_1 + 0x30) = 2;
      break;
    case 2:
      iVar1 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x18));
      if (iVar1 == 1) {
        YesNoPrompt_Reset(*(undefined4 *)(param_1 + 0x18));
        ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x14),0);
        ov111_021E6770(*(undefined4 *)(param_1 + 0x20),0,1,0x48);
        ov111_021E6770(*(undefined4 *)(param_1 + 0x20),1,1,0xf2);
        ov111_021E5D08(param_1,1);
        *(undefined4 *)(param_1 + 0x30) = 3;
      }
      else if (iVar1 == 2) {
        YesNoPrompt_Reset(*(undefined4 *)(param_1 + 0x18));
        ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x14),0);
        ov111_021E6770(*(undefined4 *)(param_1 + 0x20),0,1,0xffffffce);
        ov111_021E6770(*(undefined4 *)(param_1 + 0x20),1,1,0x48);
        ov111_021E5D08(param_1,2);
        *(undefined4 *)(param_1 + 0x30) = 4;
      }
      break;
    case 3:
      ov111_021E6784(*(undefined4 *)(param_1 + 0x20));
      iVar1 = ov111_021E67A4(*(undefined4 *)(param_1 + 0x20));
      if (iVar1 != 0) {
        iVar2 = 2;
        *(undefined4 *)(param_1 + 0x30) = 5;
      }
      break;
    case 4:
      ov111_021E6784(*(undefined4 *)(param_1 + 0x20));
      iVar1 = ov111_021E67A4(*(undefined4 *)(param_1 + 0x20));
      if (iVar1 != 0) {
        iVar2 = 3;
        *(undefined4 *)(param_1 + 0x30) = 5;
      }
      break;
    case 5:
      iVar1 = System_GetTouchNew();
      if ((iVar1 != 0) || ((uRam021d1154 & 1) != 0)) {
        PlaySE(0x5dc);
        *(undefined4 *)(param_1 + 0x30) = 6;
      }
      break;
    case 6:
      return 1;
    default:
      GF_AssertFail();
    }
    if (iVar2 != -1) {
      ov111_021E68FC(*(undefined4 *)(param_1 + 0x24),iVar2);
    }
    return 0;
  }
  return 0;
}

