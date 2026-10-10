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
undefined4 ov28_0225D92C();
undefined4 ov28_0225D9BC();
undefined4 NARC_New();
undefined4 FieldSystem_GetPlayerAvatar();
undefined4 ov28_0225DA1C();
undefined4 PlayerAvatar_CheckRunningShoesLock();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 NARC_Delete();

void ov28_0225DA74(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 auStack_30 [36];

  uVar1 = NARC_New(0xe,8);
  ov28_0225D92C(param_1 + 0x160,param_1 + 0x150,uVar1,0x46,7,0x44,0x45,4,0x1f2,0x1f2,0x1f2,0x1f2);
  NARC_Delete(uVar1);
  ov28_0225D9BC(param_1 + 0x160,param_1 + 0x150,auStack_30,1);
  ov28_0225DA1C(param_1,0,auStack_30,0x225ea9a);
  ov28_0225DA1C(param_1,1,auStack_30,0x225ea9e);
  ov28_0225DA1C(param_1,2,auStack_30,0x225eaa2);
  ov28_0225DA1C(param_1,3,auStack_30,0x225eaa6);
  FieldSystem_GetPlayerAvatar(*(undefined4 *)(param_1 + 0x18));
  iVar2 = PlayerAvatar_CheckRunningShoesLock();
  if (iVar2 == 0) {
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x184),3);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x188),0xb);
    return;
  }
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x184),4);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x188),7);
  return;
}

