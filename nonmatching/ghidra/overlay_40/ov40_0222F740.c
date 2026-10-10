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
undefined4 ManagedSprite_SetAnim();
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
undefined4 func_0x0200e0c0() __asm__("sub_0200E0C0");
undefined4 SpriteSystem_NewSprite();
undefined4 func_0x0200dd10() __asm__("sub_0200DD10");
undefined4 ManagedSprite_SetPositionXY();
undefined4 SpriteSystem_LoadAnimResObjFromOpenNarc();
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc();
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc();
undefined4 ov40_0222F878();

void ov40_0222F740(int param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined2 uStack_4c;
  undefined2 uStack_4a;
  undefined2 uStack_48;
  undefined2 uStack_46;
  undefined4 uStack_44;
  undefined4 uStack_40;
  int iStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uVar1 = *(undefined4 *)(param_2 + 0x14);
  uVar3 = *(undefined4 *)(param_2 + 0x1c);
  uVar2 = *(undefined4 *)(param_2 + 0x18);
  uStack_18 = param_4;
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar2,uVar3,uVar1,0x7f,0,param_3,200000);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar2,uVar3,uVar1,0x7e,0,200000);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar2,uVar3,uVar1,0x7d,0,200000);
  uStack_4c = 0x80;
  uStack_4a = 0x60;
  uStack_48 = 0;
  uStack_46 = 0;
  uStack_44 = 1;
  uStack_20 = 1;
  uStack_28 = 0xffffffff;
  uStack_24 = 0xffffffff;
  uStack_40 = 0;
  uStack_1c = 0;
  uStack_38 = 200000;
  uStack_30 = 200000;
  uStack_2c = 200000;
  if (param_3 == 1) {
    uStack_34 = 9999;
  }
  else {
    uStack_34 = 10000;
  }
  iStack_3c = param_3;
  uVar1 = SpriteSystem_NewSprite
                    (*(undefined4 *)(param_2 + 0x18),*(undefined4 *)(param_2 + 0x1c),&uStack_4c);
  *(undefined4 *)(param_1 + 0x2c) = uVar1;
  uVar1 = SpriteSystem_NewSprite
                    (*(undefined4 *)(param_2 + 0x18),*(undefined4 *)(param_2 + 0x1c),&uStack_4c);
  *(undefined4 *)(param_1 + 0x30) = uVar1;
  func_0x0200dd10(*(undefined4 *)(param_1 + 0x2c),2);
  func_0x0200dd10(*(undefined4 *)(param_1 + 0x30),2);
  ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x2c),0);
  ManagedSprite_SetAnim(*(undefined4 *)(param_1 + 0x30),0);
  func_0x0200dc18(*(undefined4 *)(param_1 + 0x2c));
  func_0x0200dc18(*(undefined4 *)(param_1 + 0x30));
  func_0x0200e0c0(*(undefined4 *)(param_1 + 0x30),2);
  if (param_3 == 1) {
    ManagedSprite_SetPositionXY(*(undefined4 *)(param_1 + 0x2c),0x80,0x18);
    ManagedSprite_SetPositionXY(*(undefined4 *)(param_1 + 0x30),0x80,0x78);
  }
  else {
    ManagedSprite_SetPositionXY(*(undefined4 *)(param_1 + 0x2c),0x80,0x58);
    ManagedSprite_SetPositionXY(*(undefined4 *)(param_1 + 0x30),0x80,0xb8);
  }
  ov40_0222F878(param_1);
  return;
}

