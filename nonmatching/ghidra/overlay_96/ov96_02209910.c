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
undefined4 ov96_021EA584();
undefined4 Sprite_SetMatrix();
undefined4 SpriteManager_GetSpriteList();
undefined4 ov96_021EA374();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 ov96_0220D13C();
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_SetDrawPriority();

void ov96_02209910(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  int aiStack_30 [4];
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  iVar4 = 0;
  uStack_1c = 0;
  iVar3 = 0x8000;
  puVar2 = param_1;
  uStack_18 = param_4;
  do {
    uStack_20 = 0xb0000;
    aiStack_30[3] = iVar3;
    uVar1 = SpriteManager_GetSpriteList(param_1[3]);
    uVar1 = ov96_021EA584(param_1[5],uVar1,0,*param_1);
    puVar2[0xb] = uVar1;
    Sprite_SetMatrix(uVar1,aiStack_30 + 3);
    Sprite_SetDrawPriority(puVar2[0xb],2);
    Sprite_SetAnimCtrlSeq(puVar2[0xb],1);
    Sprite_SetDrawFlag(puVar2[0xb],1);
    iVar4 = iVar4 + 1;
    iVar3 = iVar3 + 0x10000;
    puVar2 = puVar2 + 1;
  } while (iVar4 < 3);
  uVar1 = ov96_0220D13C(param_1[2],param_1[3],0xc0,0xb8,0x19,2);
  param_1[9] = uVar1;
  iVar4 = 0;
  iVar3 = 0xd4;
  puVar2 = param_1;
  do {
    aiStack_30[0] = 0;
    aiStack_30[1] = 0;
    aiStack_30[2] = 0;
    uVar1 = SpriteManager_GetSpriteList(param_1[3]);
    uVar1 = ov96_021EA374(param_1[5],uVar1,2,*param_1);
    puVar2[0xe] = uVar1;
    aiStack_30[0] = iVar3 << 0xc;
    aiStack_30[1] = 0xb8000;
    aiStack_30[2] = 0;
    Sprite_SetMatrix(puVar2[0xe],aiStack_30);
    Sprite_SetDrawFlag(puVar2[0xe],1);
    iVar4 = iVar4 + 1;
    puVar2 = puVar2 + 1;
    iVar3 = iVar3 + 0x10;
  } while (iVar4 < 2);
  uVar1 = ov96_0220D13C(param_1[2],param_1[3],0x20,0x10,0x13,2);
  param_1[10] = uVar1;
  return;
}

