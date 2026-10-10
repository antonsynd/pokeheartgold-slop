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
undefined4 ManagedSprite_GetPositionXY(void *, void *, void *);
void * SpriteManager_GetSpriteList(void *);
void * sub_02013910(void *, int);
undefined4 TextOBJ_SetSpritesDrawFlag(void *, int);
void * TextOBJ_Create(void *, void *);
undefined4 RemoveWindow(void *);
void * SpriteManager_FindPlttResourceProxy(void *, int);
undefined4 sub_02013688(void *, int, int);
undefined4 sub_020138E0(void *, int);
undefined4 sub_02021AC8(unsigned int, int, int, void *);
undefined4 InitWindow(void *);
undefined4 AddTextWindowTopLeftCorner(void *, void *, unsigned char, unsigned char, unsigned short, unsigned char);
extern undefined ov40_02244DC0;

void ov40_0222D2A0(int param_1)

{
  undefined *puVar1;
  uint uVar2;
  int *piVar3;
  int *piVar4;
  byte *pbStack_88;
  int *piStack_84;
  int iStack_80;
  int iStack_7c;
  int iStack_78;
  int iStack_74;
  short sStack_70;
  short sStack_6e;
  int aiStack_6c [6];
  undefined auStack_54 [16];
  undefined4 uStack_44;
  undefined *puStack_40;
  undefined *puStack_3c;
  undefined *puStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  int iStack_2c;
  int iStack_28;
  undefined4 uStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  aiStack_6c[2] = 1;
  aiStack_6c[3] = 2;
  aiStack_6c[0] = 9999;
  aiStack_6c[1] = 10000;
  iStack_74 = 0;
  iStack_7c = param_1 + 0x5fc;
  iStack_80 = param_1 + 0x534;
  do {
    aiStack_6c[4] = iStack_7c;
    piVar3 = aiStack_6c + 4;
    aiStack_6c[5] = iStack_80;
    iStack_78 = 0;
    piStack_84 = aiStack_6c;
    piVar4 = aiStack_6c + 2;
    pbStack_88 = &ov40_02244DC0 + iStack_74;
    do {
      InitWindow(auStack_54);
      AddTextWindowTopLeftCorner(*(undefined **)(param_1 + 0x24),auStack_54,0x14,2,0,0);
      puVar1 = sub_02013910(auStack_54,0x6d);
      *(undefined **)(*piVar3 + 0x18) = puVar1;
      uVar2 = sub_02013688(auStack_54,*piVar4,0x6d);
      sub_02021AC8(uVar2,1,*piVar4,(undefined *)(*piVar3 + 0x1c));
      ManagedSprite_GetPositionXY
                (*(undefined **)*piVar3,(undefined *)&sStack_6e,(undefined *)&sStack_70);
      uStack_44 = *(undefined4 *)(param_1 + 0x50);
      puStack_40 = auStack_54;
      puStack_3c = SpriteManager_GetSpriteList(*(undefined **)(param_1 + 0x1c));
      puStack_38 = SpriteManager_FindPlttResourceProxy(*(undefined **)(param_1 + 0x1c),*piStack_84);
      uStack_34 = **(undefined4 **)*piVar3;
      uStack_30 = *(undefined4 *)(*piVar3 + 0x20);
      iStack_2c = sStack_6e + 0x24;
      iStack_28 = sStack_70 + -8;
      uStack_24 = 3;
      iStack_20 = *pbStack_88 - 1;
      iStack_1c = *piVar4;
      uStack_18 = 0x6d;
      puVar1 = TextOBJ_Create((undefined *)&uStack_44,*(undefined **)(*piVar3 + 0x18));
      *(undefined **)(*piVar3 + 0x14) = puVar1;
      sub_020138E0(*(undefined **)(*piVar3 + 0x14),1);
      RemoveWindow(auStack_54);
      TextOBJ_SetSpritesDrawFlag(*(undefined **)(*piVar3 + 0x14),0);
      piVar3 = piVar3 + 1;
      piStack_84 = piStack_84 + 1;
      piVar4 = piVar4 + 1;
      pbStack_88 = pbStack_88 + 5;
      iStack_78 = iStack_78 + 1;
    } while (iStack_78 < 2);
    iStack_7c = iStack_7c + 0x28;
    iStack_80 = iStack_80 + 0x28;
    iStack_74 = iStack_74 + 1;
  } while (iStack_74 < 5);
  return;
}

