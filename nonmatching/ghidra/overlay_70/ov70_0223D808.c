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
undefined4 Sprite_SetAnimActiveFlag();
undefined4 ov70_0223D924();
undefined4 PlaySE();
undefined4 ov70_0223D8E8();
undefined4 ov70_0223E264();
extern uint uRam021d1154 __asm__("sub_021D1154");

void ov70_0223D808(int param_1)

{
  byte bVar1;
  bool bVar2;
  undefined2 uVar3;
  int iVar4;
  uint uVar5;

  bVar2 = false;
  iVar4 = 0;
  if ((uRam021d1154 & 0x40) == 0) {
    if ((uRam021d1154 & 0x80) == 0) {
      if ((uRam021d1154 & 0x20) == 0) {
        if ((uRam021d1154 & 0x10) != 0) {
          iVar4 = 4;
        }
      }
      else {
        iVar4 = 3;
      }
    }
    else {
      iVar4 = 2;
    }
  }
  else {
    iVar4 = 1;
  }
  if (iVar4 != 0) {
    bVar1 = *(byte *)(iVar4 + (uint)*(ushort *)(param_1 + 0x122) * 4 + 0x2245803);
    uVar5 = (uint)bVar1;
    if (uVar5 != *(ushort *)(param_1 + 0x122)) {
      if ((uVar5 == 99) || (uVar5 == 0x65)) {
        iVar4 = (uint)(uVar5 != 0x65) * 4;
        Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0xf04 + iVar4),1);
        Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0xf04 + iVar4),(uVar5 != 0x65) + 0x26);
        uVar3 = ov70_0223D924(*(undefined2 *)(param_1 + 0x120),0x13,uVar5 - 100);
        *(undefined2 *)(param_1 + 0x120) = uVar3;
        ov70_0223E264(param_1,*(undefined2 *)(param_1 + 0x120));
        PlaySE(0x5dc);
      }
      else {
        bVar2 = true;
        *(ushort *)(param_1 + 0x122) = (ushort)bVar1;
      }
    }
  }
  if (bVar2) {
    PlaySE(0x5dc);
  }
  ov70_0223D8E8(*(undefined4 *)(param_1 + 0xdcc),*(undefined2 *)(param_1 + 0x122));
  return;
}

