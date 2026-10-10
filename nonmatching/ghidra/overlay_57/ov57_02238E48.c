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
undefined4 func_0x0200e188() __asm__("sub_0200E188");
undefined4 GetMonIconPaletteEx();
undefined4 SpriteSystem_NewSprite();
undefined4 GetMonData();
undefined4 func_0x02024aa8() __asm__("sub_02024AA8");
undefined4 Pokemon_GetIconNaix();
undefined4 ManagedSprite_SetAnim();

void ov57_02238E48(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 *puVar4;
  int iVar5;
  undefined4 uVar6;
  int iStack_54;
  undefined2 uStack_48;
  undefined2 uStack_46;
  undefined2 uStack_44;
  undefined2 uStack_42;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  int iStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  piVar3 = (int *)*param_1;
  iVar5 = 0;
  if (0 < *piVar3) {
    iStack_54 = 0;
    puVar4 = param_1;
    do {
      uVar6 = *(undefined4 *)((int)piVar3 + iStack_54 + 4);
      uVar1 = Pokemon_GetIconNaix(uVar6);
      func_0x0200e188(param_1[0x37],param_1[0x38],0x14,uVar1,0,1,iVar5 + 15000);
      uStack_48 = 0;
      uStack_46 = 0;
      uStack_44 = 0;
      uStack_42 = 0;
      uStack_40 = 10;
      uStack_3c = 0;
      uStack_38 = 1;
      uStack_1c = 2;
      uStack_18 = 0;
      iStack_34 = iVar5 + 15000;
      uStack_30 = 16000;
      uStack_2c = 17000;
      uStack_28 = 18000;
      uStack_24 = 0xffffffff;
      uStack_20 = 0xffffffff;
      uVar1 = SpriteSystem_NewSprite(param_1[0x37],param_1[0x38],&uStack_48);
      puVar4[0xc9] = uVar1;
      uVar1 = GetMonData(uVar6,5,0);
      uVar2 = GetMonData(uVar6,0x4c,0);
      uVar6 = GetMonData(uVar6,0x70,0);
      uVar1 = GetMonIconPaletteEx(uVar1,uVar6,uVar2);
      func_0x02024aa8(*(undefined4 *)puVar4[0xc9],uVar1);
      ManagedSprite_SetAnim(puVar4[0xc9],1);
      piVar3 = (int *)*param_1;
      iStack_54 = iStack_54 + 4;
      iVar5 = iVar5 + 1;
      puVar4 = puVar4 + 1;
    } while (iVar5 < *piVar3);
  }
  return;
}

