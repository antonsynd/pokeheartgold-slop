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
typedef void code(void);
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
undefined4 SpriteSystem_LoadAnimResObjFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov12_0223B52C(undefined4);
undefined4 BattleSystem_GetSpriteSystem(undefined4);
undefined4 func_0x0200d68c(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_0200D68C");
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 BattleSystem_GetSpriteManager(undefined4);
undefined4 NARC_New(undefined4, undefined4);
undefined4 BattleSystem_GetPaletteData(undefined4);
undefined4 NARC_Delete(undefined4);
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 PaletteData_LoadNarc(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
extern undefined ov12_0226E168;
extern undefined ov12_0226E0A0;
extern undefined ov12_0226E0D0;

void ov12_02265E28(int param_1)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uStack_28;
  undefined4 uStack_24;

  uVar2 = NARC_New(8,5);
  uVar3 = BattleSystem_GetSpriteSystem(*(undefined4 *)(param_1 + 4));
  uVar4 = BattleSystem_GetSpriteManager(*(undefined4 *)(param_1 + 4));
  iVar5 = ov12_0223B52C(*(undefined4 *)(param_1 + 4));
  if (*(char *)(param_1 + 8) == '\0') {
    uVar1 = *(undefined2 *)(&ov12_0226E0D0 + (uint)*(byte *)(param_1 + 9) * 2);
    uVar6 = 0x4e2d;
    uStack_24 = 0x80;
    uVar7 = 0x4e25;
    uStack_28 = 0x81;
  }
  else {
    uVar1 = *(undefined2 *)(&ov12_0226E0A0 + (uint)*(byte *)(param_1 + 9) * 2);
    uVar6 = 0x4e2e;
    uStack_24 = 0x83;
    uVar7 = 0x4e26;
    uStack_28 = 0x84;
  }
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar3,uVar4,uVar2,uVar1,1,1,uVar6);
  uVar6 = BattleSystem_GetPaletteData(*(undefined4 *)(param_1 + 4));
  func_0x0200d68c(uVar6,2,uVar3,uVar4,uVar2,
                  *(undefined2 *)(&ov12_0226E168 + iVar5 * 2 + (uint)*(byte *)(param_1 + 9) * 6),0,1
                  ,1,0x4e29);
  uVar6 = BattleSystem_GetPaletteData(*(undefined4 *)(param_1 + 4));
  PaletteData_LoadNarc
            (uVar6,8,*(undefined2 *)(&ov12_0226E168 + iVar5 * 2 + (uint)*(byte *)(param_1 + 9) * 6),
             5,0,0x20,0x70);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar3,uVar4,uVar2,uStack_24,1,uVar7);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar3,uVar4,uVar2,uStack_28,1,uVar7);
  NARC_Delete(uVar2);
  return;
}

