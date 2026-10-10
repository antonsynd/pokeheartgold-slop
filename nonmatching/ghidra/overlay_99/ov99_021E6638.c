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
undefined4 ManagedSprite_SetAnim();
undefined4 ManagedSprite_GetActiveAnim();
undefined4 ManagedSprite_SetPositionXY();
undefined4 ManagedSprite_SetAnimateFlag();
undefined4 PlaySE();
undefined4 TouchscreenHitbox_FindHitboxAtTouchNew();
extern undefined ov99_021E9576;
extern uint uRam021d1154 __asm__("sub_021D1154");
extern int uRam021d1158 __asm__("sub_021D1158");
extern short sRam021d1170 __asm__("sub_021D1170");
extern undefined ov99_021E9574;
extern undefined ov99_021E95BC;
undefined4 ov99_021E64E0();

bool ov99_021E6638(int param_1)

{
  bool bVar1;
  int iVar2;
  char cVar3;
  char *pcVar4;
  int iVar5;

  bVar1 = false;
  pcVar4 = (char *)(param_1 + 0x80);
  iVar5 = (int)*(char *)(param_1 + 0x80);
  if ((uRam021d1154 & 2) != 0) {
    return true;
  }
  if (sRam021d1170 == 0) {
    if (((uRam021d1158 & 0x10) == 0) && ((uRam021d1158 & 0x80) == 0)) {
      if (((uRam021d1158 & 0x20) == 0) && ((uRam021d1158 & 0x40) == 0)) {
        if (((uRam021d1154 & 1) != 0) && (iVar5 == 5)) {
          return true;
        }
      }
      else if (0 < iVar5) {
        *pcVar4 = *pcVar4 + -1;
        *(undefined4 *)(param_1 + 0x84) = 0;
        PlaySE(0x5dc);
      }
    }
    else if (iVar5 < 5) {
      *pcVar4 = *pcVar4 + '\x01';
      *(undefined4 *)(param_1 + 0x84) = 1;
      PlaySE(0x5dc);
    }
  }
  else {
    iVar2 = TouchscreenHitbox_FindHitboxAtTouchNew(&ov99_021E95BC);
    if (iVar2 != -1) {
      if (iVar2 != 5) {
        *(uint *)(param_1 + 0x84) = (uint)(*pcVar4 < iVar2);
        ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x18),9);
        ManagedSprite_SetAnimateFlag(*(undefined4 *)(param_1 + 0x18),1);
        PlaySE(0x5dc);
      }
      bVar1 = iVar2 == 5;
      *pcVar4 = (char)iVar2;
    }
  }
  cVar3 = *pcVar4;
  if (cVar3 < '\x06') {
    if (cVar3 < '\0') {
      cVar3 = '\0';
    }
  }
  else {
    cVar3 = '\x05';
  }
  *pcVar4 = cVar3;
  *(int *)(param_1 + 0x88) = (int)*pcVar4;
  if (iVar5 != *pcVar4) {
    iVar2 = *pcVar4 * 4;
    ManagedSprite_SetPositionXY
              (*(undefined4 *)(param_1 + 0x18),(int)*(short *)(&ov99_021E9574 + iVar2),
               (int)*(short *)(&ov99_021E9576 + iVar2));
    if (*pcVar4 == '\x05') {
      ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x18),0xc);
    }
    else {
      iVar2 = ManagedSprite_GetActiveAnim(*(undefined4 *)(param_1 + 0x18));
      if (iVar2 != 9) {
        ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x18),8);
      }
      if ((iVar5 != 5) || (*pcVar4 != '\x04')) {
        ov99_021E64E0(param_1,0);
        *(undefined4 *)(param_1 + 0x90) = 1;
      }
    }
  }
  return bVar1;
}

