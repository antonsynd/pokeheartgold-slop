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
undefined4 SpriteManager_New();
undefined4 SpriteSystem_InitManagerWithCapacities();
undefined4 SpriteSystem_InitSprites();
undefined4 func_0x0200cf6c() __asm__("sub_0200CF6C");
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 GF_AssertFail();

void ov07_0221F430(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 auStack_30 [6];
  undefined4 uStack_18;

  puVar4 = auStack_30;
  iVar1 = *(int *)(param_1 + 0x18);
  *(int **)(param_1 + 0x18) = (int *)(iVar1 + 4);
  iVar3 = *(int *)(iVar1 + 4);
  *(undefined4 **)(param_1 + 0x18) = (undefined4 *)(iVar1 + 8);
  uVar6 = *(undefined4 *)(iVar1 + 8);
  iVar3 = iVar3 * 4;
  iVar5 = param_1 + 0xcc;
  *(int *)(param_1 + 0x18) = iVar1 + 0xc;
  uStack_18 = param_4;
  if (*(int *)(iVar5 + iVar3) != 0) {
    GF_AssertFail();
  }
  uVar2 = SpriteManager_New(*(undefined4 *)(*(int *)(param_1 + 0xc0) + 0xac));
  *(undefined4 *)(iVar5 + iVar3) = uVar2;
  if (*(int *)(iVar5 + iVar3) == 0) {
    GF_AssertFail();
  }
  SpriteSystem_InitSprites
            (*(undefined4 *)(*(int *)(param_1 + 0xc0) + 0xac),*(undefined4 *)(iVar5 + iVar3),uVar6);
  uVar6 = func_0x0200cf6c(*(undefined4 *)(*(int *)(param_1 + 0xc0) + 0xac));
  G2dRenderer_SetSubSurfaceCoords(uVar6,0,0x110000);
  iVar1 = 0;
  do {
    iVar1 = iVar1 + 1;
    *puVar4 = **(undefined4 **)(param_1 + 0x18);
    puVar4 = puVar4 + 1;
    *(int *)(param_1 + 0x18) = *(int *)(param_1 + 0x18) + 4;
  } while (iVar1 < 6);
  SpriteSystem_InitManagerWithCapacities
            (*(undefined4 *)(*(int *)(param_1 + 0xc0) + 0xac),*(undefined4 *)(iVar5 + iVar3),
             auStack_30);
  return;
}

