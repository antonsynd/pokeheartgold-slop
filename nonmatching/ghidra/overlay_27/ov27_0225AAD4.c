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
undefined4 ov27_0225BDC8();
undefined4 ov27_0225C1AC();
undefined4 FieldSystem_ShouldDrawStartMenuIcon();
undefined4 ov27_0225AA60();
undefined4 ov27_0225C1EC();
undefined4 Sprite_SetDrawFlag();
undefined4 CopyWindowToVram();
extern undefined ov27_0225CF10;

void ov27_0225AAD4(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  ushort *puVar4;
  int iVar5;
  int iVar6;
  int iStack_20;
  
  iVar1 = ov27_0225AA60(param_1 + 0x514,7);
  puVar4 = (ushort *)&ov27_0225CF10;
  iVar5 = 0;
  iVar6 = param_1;
  iStack_20 = iVar1;
  do {
    iVar2 = FieldSystem_ShouldDrawStartMenuIcon(*(undefined4 *)(param_1 + 0x10),iVar5);
    if ((iVar2 == 1) && (*(char *)(param_1 + iVar5 + 0x514) == '\0')) {
      Sprite_SetDrawFlag(*(undefined4 *)(param_1 + (uint)*puVar4 * 4 + 0x390),1);
      Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + (uint)*puVar4 * 4 + 0x390),puVar4[1]);
      CopyWindowToVram(param_1 + 0x3f0 + (uint)(byte)puVar4[2] * 0x10);
      *(undefined1 *)(param_1 + iVar5 + 0x514) = 1;
      *(undefined1 *)(iVar6 + 0x470) = 1;
      *(byte *)(*(int *)(param_1 + 0x10) + 0xd2) = *(byte *)(*(int *)(param_1 + 0x10) + 0xd2) | 0x80
      ;
      iStack_20 = iStack_20 + 1;
    }
    iVar5 = iVar5 + 1;
    puVar4 = puVar4 + 3;
    iVar6 = iVar6 + 8;
  } while (iVar5 < 7);
  if ((iStack_20 != 0) && (iVar1 == 0)) {
    Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x3c8),1);
    CopyWindowToVram(param_1 + 0x3e0);
  }
  if (iVar1 != iStack_20) {
    *(undefined1 *)(*(int *)(param_1 + 0x10) + 0xd3) = 0;
    uVar3 = ov27_0225C1AC(param_1,*(undefined1 *)(*(int *)(param_1 + 0x10) + 0xd3));
    *(undefined4 *)(param_1 + 0x14) = uVar3;
    ov27_0225C1EC(param_1);
  }
  iVar6 = ov27_0225BDC8(param_1);
  if ((iVar6 == 1) && (*(char *)(param_1 + 0x50c) == '\0')) {
    Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x3bc),1);
    Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x3c4),1);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x3bc),10);
    *(undefined1 *)(param_1 + 0x50c) = 1;
  }
  return;
}

