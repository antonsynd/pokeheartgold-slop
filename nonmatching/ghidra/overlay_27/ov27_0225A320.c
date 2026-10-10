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
undefined4 ov27_0225A4D0();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 ov27_0225A7FC();
undefined4 ov27_0225A89C();
undefined4 FieldSystem_TaskIsRunning();
undefined4 ov27_0225A8E8();
undefined4 func_0x02024950() __asm__("sub_02024950");
undefined4 ov27_0225A86C();
undefined4 ov27_0225A66C();
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
undefined4 ov27_0225A530();
undefined4 func_0x02025204() __asm__("sub_02025204");
undefined4 IsPaletteFadeFinished();
undefined4 func_0x0203e13c() __asm__("sub_0203E13C");
undefined4 ov27_0225B4D8();
extern undefined ov27_0225CECC;
extern undefined2 uRam04001050 __asm__("sub_04001050");
undefined4 SpriteList_RenderAndAnimateSprites();
undefined4 ov27_0225BDFC();
undefined4 ov27_0225A48C();

void ov27_0225A320(undefined4 param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  
  iVar1 = ov27_0225A89C(*(undefined4 *)(param_2 + 0x10));
  iVar2 = func_0x0203e13c(*(undefined4 *)(param_2 + 0x10));
  if ((int)((uint)*(byte *)(*(int *)(param_2 + 0x10) + 0xd2) << 0x18) < 0) {
    if ((iVar2 == 0) || (iVar3 = IsPaletteFadeFinished(), iVar3 == 0)) {
      uRam04001050 = 0;
    }
    else {
      *(byte *)(*(int *)(param_2 + 0x10) + 0xd2) = *(byte *)(*(int *)(param_2 + 0x10) + 0xd2) & 0x7f
      ;
    }
  }
  else {
    ov27_0225A8E8(param_2,iVar1);
  }
  if (*(int *)(param_2 + 0x51c) << 0x1a < 0) {
    func_0x02024950(*(undefined4 *)(param_2 + *(int *)(param_2 + 0x14) * 4 + 0x390),2);
  }
  uVar4 = (*(uint *)(param_2 + 0x51c) & 0xff) >> 6;
  if (uVar4 == 1) {
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_2 + 0x3ac),2);
    *(uint *)(param_2 + 0x51c) = *(uint *)(param_2 + 0x51c) & 0xffffff3f;
  }
  else if (uVar4 == 2) {
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_2 + 0x3b0),2);
    *(uint *)(param_2 + 0x51c) = *(uint *)(param_2 + 0x51c) & 0xffffff3f;
  }
  iVar3 = FieldSystem_TaskIsRunning(*(undefined4 *)(param_2 + 0x10));
  if (iVar3 == 0) {
    if ((*(byte *)(*(int *)(param_2 + 0x10) + 0xd2) & 0x3f) == 2) {
      ov27_0225A86C(param_2);
      *(byte *)(*(int *)(param_2 + 0x10) + 0xd2) = *(byte *)(*(int *)(param_2 + 0x10) + 0xd2) & 0xc0
      ;
    }
    if (iVar2 != 0) {
      ov27_0225A66C(param_2);
    }
    if (iVar1 == 0) {
      ov27_0225B4D8(param_2);
    }
  }
  else {
    ov27_0225A7FC(param_2);
  }
  uVar5 = func_0x02025204(&ov27_0225CECC);
  uVar6 = TouchscreenHitbox_FindRectAtTouchNew(&ov27_0225CECC);
  ov27_0225A530(param_2,uVar5);
  if (((*(int *)(param_2 + 0x51c) << 0x1f < 0) && (iVar2 = ov27_0225A4D0(param_2), iVar2 != 0)) &&
     (iVar1 == 0)) {
    ov27_0225A48C(param_2,uVar6);
  }
  ov27_0225BDFC(param_2 + 0x520);
  SpriteList_RenderAndAnimateSprites(*(undefined4 *)(param_2 + 0x18));
  return;
}

