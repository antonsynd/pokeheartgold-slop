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
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
undefined4 ov37_021E6848();
undefined4 ov37_021E7844();
undefined4 ov37_021E762C();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 PlaySE();
undefined4 sub_02037454();
undefined4 sub_02038C1C();
undefined4 sub_02033250();
undefined4 ov37_021E6818();
extern undefined ov37_021E7A4C;
undefined4 func_0x02025204() __asm__("sub_02025204");
undefined4 ov37_021E78E0();
undefined4 Sprite_SetDrawFlag();
undefined4 sub_02021280();
undefined4 ov37_021E657C();
extern undefined2 uRam021d116c __asm__("sub_021D116C");
extern undefined ov37_021E7970;
extern undefined2 uRam021d116e __asm__("sub_021D116E");

void ov37_021E65EC(int param_1)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined1 auStack_58 [68];
  
  bVar1 = false;
  uVar2 = TouchscreenHitbox_FindRectAtTouchNew(&ov37_021E7A4C);
  switch(uVar2) {
  case 0:
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
  case 6:
  case 7:
    if (*(byte *)(param_1 + 0x4376) != uVar2) {
      *(char *)(param_1 + 0x4376) = (char)uVar2;
      ov37_021E6818(param_1 + 0x248,uVar2);
      PlaySE(0x5dc);
    }
    break;
  case 8:
    if (*(int *)(param_1 + 0x304) == 4) {
      iVar3 = sub_0203769C();
      if (iVar3 == 0) {
        iVar3 = sub_02033250();
        if (*(int *)(param_1 + 0x31c) == iVar3) {
          sub_02037454();
          sub_02038C1C();
          *(undefined4 *)(param_1 + 0x93f4) = 2;
          ov37_021E762C(param_1,1,1);
          ov37_021E7844(param_1,5);
          ov37_021E6848(param_1 + 0x248,1);
          bVar1 = true;
          PlaySE(0x5dc);
        }
        else {
          PlaySE(0x5f2);
        }
      }
      else if (*(char *)(param_1 + 0x438b) == '\x02') {
        PlaySE(0x5f2);
      }
      else {
        ov37_021E762C(param_1,1,1);
        ov37_021E7844(param_1,5);
        ov37_021E6848(param_1 + 0x248,1);
        bVar1 = true;
        PlaySE(0x5dc);
      }
    }
    break;
  case 9:
  case 10:
  case 0xb:
    iVar4 = 0;
    iVar6 = 0x1e;
    iVar5 = 0x1d;
    iVar3 = param_1;
    do {
      if (uVar2 - 9 == iVar4) {
        Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar3 + 0x26c),iVar6);
      }
      else {
        Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar3 + 0x26c),iVar5);
      }
      iVar4 = iVar4 + 1;
      iVar6 = iVar6 + 2;
      iVar3 = iVar3 + 4;
      iVar5 = iVar5 + 2;
    } while (iVar4 < 3);
    if ((uint)*(byte *)(param_1 + 0x4377) != uVar2 - 9) {
      *(char *)(param_1 + 0x4377) = (char)(uVar2 - 9);
      PlaySE(0x5e5);
    }
  }
  iVar3 = func_0x02025204(&ov37_021E7970);
  iVar4 = sub_0203769C();
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + iVar4 * 4 + 0x1d8),0);
  if (iVar3 != -1) {
    iVar3 = sub_0203769C();
    ov37_021E657C(*(undefined4 *)(param_1 + iVar3 * 4 + 0x1d8),uRam021d116c,uRam021d116e);
    iVar3 = sub_0203769C();
    Sprite_SetDrawFlag(*(undefined4 *)(param_1 + iVar3 * 4 + 0x1d8),1);
  }
  iVar3 = sub_02021280(auStack_58,4,0x40);
  if ((iVar3 == 1) &&
     (ov37_021E78E0(param_1 + 0x4378,auStack_58,*(undefined1 *)(param_1 + 0x4376),
                    *(undefined1 *)(param_1 + 0x4377)), bVar1)) {
    *(byte *)(param_1 + 0x4380) = *(byte *)(param_1 + 0x4380) & 199;
  }
  return;
}

