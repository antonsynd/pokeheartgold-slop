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
undefined4 sub_0203A880();
undefined4 Sprite_CreateAffine();
undefined4 CreateSpriteResourcesHeader();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov73_021E82A8();
undefined4 Sprite_SetDrawFlag();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 Sprite_SetAnimCtrlSeq();

void ov73_021E82D4(int param_1)

{
  undefined4 uVar1;
  ushort *puVar2;
  int iVar3;
  undefined1 auStack_44 [8];
  int iStack_3c;
  int iStack_38;

  CreateSpriteResourcesHeader
            (param_1 + 0xd64,0,0,0,0,0xffffffff,0xffffffff,0,0,*(undefined4 *)(param_1 + 0xd24),
             *(undefined4 *)(param_1 + 0xd28),*(undefined4 *)(param_1 + 0xd2c),
             *(undefined4 *)(param_1 + 0xd30),0,0);
  ov73_021E82A8(auStack_44,param_1,param_1 + 0xd64,1);
  puVar2 = (ushort *)0x21ea684;
  iVar3 = 0;
  do {
    iStack_3c = (uint)*puVar2 << 0xc;
    iStack_38 = (uint)puVar2[1] << 0xc;
    uVar1 = Sprite_CreateAffine(auStack_44);
    *(undefined4 *)(param_1 + 0xdd0) = uVar1;
    Sprite_SetAnimActiveFlag(*(undefined4 *)(param_1 + 0xdd0),1);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0xdd0),iVar3);
    Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0xdd0),0);
    iVar3 = iVar3 + 1;
    puVar2 = puVar2 + 2;
    param_1 = param_1 + 4;
  } while (iVar3 < 2);
  GfGfx_EngineATogglePlanes(0x10,1);
  GfGfx_EngineBTogglePlanes(0x10,1);
  sub_0203A880();
  return;
}

