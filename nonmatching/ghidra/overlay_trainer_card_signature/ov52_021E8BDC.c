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
undefined4 ov52_021E927C();
undefined4 ov52_021E8CBC();
undefined4 PlaySE();
undefined4 TouchscreenHitbox_FindRectAtTouchHeld();
undefined4 ov52_021E9364();
undefined4 sub_02021280();
undefined4 ov52_021E8CDC();
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
extern undefined ov52_021E94BA;
extern undefined ov52_021E94B2;

void ov52_021E8BDC(int param_1)

{
  undefined2 *puVar1;
  int iVar2;
  int iVar3;
  ushort *puVar4;
  ushort uStack_58;
  undefined2 auStack_56 [33];
  
  puVar4 = &uStack_58;
  iVar2 = TouchscreenHitbox_FindRectAtTouchNew(&ov52_021E94BA);
  if (iVar2 != -1) {
    if (iVar2 == 0) {
      if (*(int *)(param_1 + 0x30c) == 1) {
        ov52_021E927C(param_1,10);
        *(undefined4 *)(param_1 + 0x30c) = 2;
        ov52_021E8CDC(param_1 + 0x250,1);
        PlaySE(0x5dd);
      }
    }
    else {
      *(char *)(param_1 + 0x431a) = (char)iVar2;
      ov52_021E8CBC(param_1 + 0x250);
    }
  }
  iVar2 = TouchscreenHitbox_FindRectAtTouchHeld(&ov52_021E94B2);
  if (iVar2 != -1) {
    ov52_021E9364(param_1);
  }
  iVar2 = sub_02021280(&uStack_58,4,1);
  if (iVar2 == 1) {
    iVar2 = 0;
    if (uStack_58 != 0) {
      do {
        iVar3 = param_1 + iVar2;
        iVar2 = iVar2 + 1;
        *(char *)(iVar3 + 0x431c) = (char)*(undefined2 *)((int)puVar4 + 2);
        puVar1 = (undefined2 *)((int)puVar4 + 4);
        puVar4 = (ushort *)((int)puVar4 + 8);
        *(char *)(iVar3 + 0x4324) = (char)*puVar1;
      } while (iVar2 < (int)(uint)uStack_58);
    }
    *(byte *)(param_1 + 0x432c) = *(byte *)(param_1 + 0x432c) & 0xf | (byte)((uStack_58 & 0xf) << 4)
    ;
    *(byte *)(param_1 + 0x432c) =
         *(byte *)(param_1 + 0x431a) & 0xf | *(byte *)(param_1 + 0x432c) & 0xf0;
  }
  return;
}

