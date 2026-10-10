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
undefined4 Sprite_SetDrawFlag();
undefined4 ClearWindowTilemapAndScheduleTransfer();
undefined4 ov65_0221ED80();
extern undefined ov65_0221FF4C;
extern undefined ov65_0221FF50;

void ov65_0221EC34(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = 0;
  iVar1 = param_1;
  iVar2 = param_1;
  do {
    if (iVar3 != *(int *)(param_1 + 0x94)) {
      Sprite_SetDrawFlag(*(undefined4 *)(iVar1 + 0x37c),0);
      if (*(short *)(iVar2 + 0x69e) != 0) {
        Sprite_SetDrawFlag(*(undefined4 *)(iVar1 + 0x3ac),0);
      }
      if (*(int *)(iVar2 + 0x6a8) != 0) {
        Sprite_SetDrawFlag(*(undefined4 *)(iVar1 + 0x3dc),0);
      }
    }
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0x444 + (iVar3 + 7) * 0x10);
    if (iVar3 != *(int *)(param_1 + 0x98) + -6) {
      Sprite_SetDrawFlag(*(undefined4 *)(iVar1 + 0x394),0);
      if (*(short *)(iVar2 + 0x6fe) != 0) {
        Sprite_SetDrawFlag(*(undefined4 *)(iVar1 + 0x3c4),0);
      }
      if (*(int *)(iVar2 + 0x708) != 0) {
        Sprite_SetDrawFlag(*(undefined4 *)(iVar1 + 0x3f4),0);
      }
    }
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0x444 + (iVar3 + 0xd) * 0x10);
    iVar3 = iVar3 + 1;
    iVar1 = iVar1 + 4;
    iVar2 = iVar2 + 0x10;
  } while (iVar3 < 6);
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x344),0);
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x348),0);
  iVar1 = *(int *)(param_1 + 0x94) * 8;
  ov65_0221ED80(param_1 + 0x22d0,*(int *)(&ov65_0221FF4C + iVar1) + 0x10,
                *(int *)(&ov65_0221FF50 + iVar1) + -6,0x30,0x20);
  iVar1 = *(int *)(param_1 + 0x98) * 8;
  ov65_0221ED80(param_1 + 0x22e8,*(int *)(&ov65_0221FF4C + iVar1) + 0x10,
                *(int *)(&ov65_0221FF50 + iVar1) + -6,0xb0,0x20);
  *(undefined4 *)(param_1 + 0x22c8) = 0;
  *(undefined4 *)(param_1 + 0x2220) = 0x221ee19;
  return;
}

