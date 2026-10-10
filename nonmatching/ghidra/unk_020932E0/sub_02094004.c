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
undefined4 Sprite_SetDrawPriority();
undefined4 Sprite_SetPriority();
undefined4 sub_0209428C();
undefined4 sub_0209417C();

void sub_02094004(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;

  sub_0209428C(*(int *)(param_1 + 0x7e4) + 0x78,0xe0,0xb0,0x32,0x20);
  uVar1 = sub_0209417C(param_1,0xe0,0xb0,4,1);
  *(undefined4 *)(param_1 + 0x8b4) = uVar1;
  Sprite_SetPriority(*(undefined4 *)(param_1 + 0x8b4),3);
  if (*(char *)(param_1 + 0x13) == '\0') {
    Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x8b4),0);
  }
  sub_0209428C(*(int *)(param_1 + 0x7e4) + 0x80,0x90,0x10,0x20,0x20);
  uVar1 = sub_0209417C(param_1,0x90,0x10,2,1);
  *(undefined4 *)(param_1 + 0x8b8) = uVar1;
  sub_0209428C(*(int *)(param_1 + 0x7e4) + 0x7c,0x10,0x10,0x20,0x20);
  uVar1 = sub_0209417C(param_1,0x10,0x10,0,1);
  *(undefined4 *)(param_1 + 0x8bc) = uVar1;
  uVar1 = sub_0209417C(param_1,0,0,0x32,0);
  *(undefined4 *)(param_1 + 0x8c4) = uVar1;
  *(undefined1 *)(*(int *)(param_1 + 0x7e4) + (*(byte *)(param_1 + 0xd) + 0x21) * 4) = 0xff;
  iVar4 = 0;
  if (*(char *)(param_1 + 0xd) != '\0') {
    iVar3 = 0;
    iVar2 = 0;
    do {
      uVar1 = sub_0209417C(param_1,iVar3,0x40,6,0);
      *(undefined4 *)(*(int *)(param_1 + 0x8d0) + iVar2) = uVar1;
      *(undefined4 *)(*(int *)(param_1 + 0x8d0) + iVar2 + 4) = 0xffffffff;
      *(uint *)(*(int *)(param_1 + 0x8d0) + iVar2 + 8) = (uint)*(byte *)(param_1 + 0x10);
      Sprite_SetDrawPriority(*(undefined4 *)(*(int *)(param_1 + 0x8d0) + iVar2),4);
      iVar4 = iVar4 + 1;
      iVar3 = iVar3 + 0x24;
      iVar2 = iVar2 + 0xc;
    } while (iVar4 < (int)(uint)*(byte *)(param_1 + 0xd));
  }
  *(undefined1 *)(param_1 + 0xe) = 0;
  uVar1 = sub_0209417C(param_1,0x14,0x28,0x2d,1);
  *(undefined4 *)(param_1 + 0x8c0) = uVar1;
  Sprite_SetPriority(*(undefined4 *)(param_1 + 0x8c0),1);
  Sprite_SetDrawPriority(*(undefined4 *)(param_1 + 0x8c0),1);
  return;
}

