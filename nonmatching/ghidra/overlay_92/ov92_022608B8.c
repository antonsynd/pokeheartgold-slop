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
undefined4 SysTask_Destroy();
undefined4 IsPaletteFadeFinished();
undefined4 ov92_022607F8();
undefined4 ManagedSprite_GetSpritePositionFxXY();
undefined4 ov92_02260798();
undefined4 ManagedSprite_SetPositonFxXY();
undefined4 Sprite_DeleteAndFreeResources();
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
extern undefined ov92_02263EA0;

void ov92_022608B8(undefined4 param_1,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  int iStack_80;
  int iStack_7c;
  undefined4 *puStack_78;
  undefined4 *puStack_74;
  int iStack_6c;
  int aiStack_68 [21];

  bVar1 = true;
  aiStack_68[7] = 0xffffb000;
  aiStack_68[8] = 0x3000;
  aiStack_68[9] = 0x4000;
  aiStack_68[10] = 0xffffd000;
  aiStack_68[0xb] = 0x3000;
  aiStack_68[0xc] = 0xffffe000;
  aiStack_68[1] = 0x4000;
  aiStack_68[2] = 0x5000;
  aiStack_68[3] = 0xffffc000;
  aiStack_68[4] = 0xffffb000;
  aiStack_68[5] = 0xffffd000;
  aiStack_68[6] = 0x2000;
  iVar2 = IsPaletteFadeFinished(0xffffd000,0x2000,aiStack_68 + 7,&ov92_02263EA0);
  if ((iVar2 == 0) || (*(char *)(param_2[0x29] + 0x34) == '\x01')) {
    iVar2 = 0;
    puVar5 = param_2;
    do {
      Sprite_DeleteAndFreeResources(puVar5[2]);
      iVar2 = iVar2 + 1;
      puVar5 = puVar5 + 1;
    } while (iVar2 < 3);
    *param_2 = 0;
    SysTask_Destroy(param_1);
    return;
  }
  if (param_2[1] == 0) {
    iStack_80 = 0;
    piVar4 = aiStack_68 + 7;
    puVar6 = param_2 + 5;
    piVar3 = aiStack_68;
    puVar5 = param_2 + 0xb;
    puStack_78 = param_2;
    do {
      piVar3 = piVar3 + 1;
      ManagedSprite_GetSpritePositionFxXY(puStack_78[2],aiStack_68,&iStack_6c);
      ov92_02260798(puVar6,aiStack_68[0],aiStack_68[0] + *piVar4,0x4cd,8);
      ov92_02260798(puVar5,iStack_6c,iStack_6c + *piVar3,0x333,8);
      piVar4 = piVar4 + 1;
      puStack_78 = puStack_78 + 1;
      puVar6 = puVar6 + 0xc;
      iStack_80 = iStack_80 + 1;
      puVar5 = puVar5 + 0xc;
    } while (iStack_80 < 3);
    param_2[1] = param_2[1] + 1;
    return;
  }
  if (param_2[1] == 1) {
    iStack_7c = 0;
    puStack_74 = param_2 + 5;
    piVar4 = aiStack_68 + 0xd;
    puVar7 = param_2 + 0xb;
    puVar5 = param_2;
    puVar6 = param_2;
    do {
      iVar2 = ov92_022607F8(puStack_74);
      *piVar4 = iVar2;
      iVar2 = ov92_022607F8(puVar7);
      piVar4[1] = iVar2;
      ManagedSprite_SetPositonFxXY(puVar5[2],puVar6[5],puVar6[0xb]);
      if ((*piVar4 == 0) || (piVar4[1] == 0)) {
        bVar1 = false;
      }
      func_0x0200dc18(puVar5[2]);
      piVar4 = piVar4 + 2;
      puStack_74 = puStack_74 + 0xc;
      puVar7 = puVar7 + 0xc;
      iStack_7c = iStack_7c + 1;
      puVar6 = puVar6 + 0xc;
      puVar5 = puVar5 + 1;
    } while (iStack_7c < 3);
    if (bVar1) {
      param_2[1] = param_2[1] + 1;
      return;
    }
  }
  else {
    iVar2 = 0;
    puVar5 = param_2;
    do {
      Sprite_DeleteAndFreeResources(puVar5[2]);
      iVar2 = iVar2 + 1;
      puVar5 = puVar5 + 1;
    } while (iVar2 < 3);
    *param_2 = 0;
    SysTask_Destroy(param_1);
  }
  return;
}

