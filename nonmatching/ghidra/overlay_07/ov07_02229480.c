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
undefined4 ov07_02222674();
undefined4 ManagedSprite_SetPositionXY();
undefined4 ov07_02232508();
undefined4 Sprite_DeleteAndFreeResources();
undefined4 SpriteSystem_DrawSprites();
undefined4 ov07_0221C448();
undefined4 ov07_02222590();
undefined4 ov07_0222260C();
undefined4 ov07_02222644();
undefined4 func_0x0200e024() __asm__("sub_0200E024");
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
extern undefined2 uRam04000052 __asm__("sub_04000052");

void ov07_02229480(undefined4 param_1,int param_2)

{
  int iVar1;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  switch(*(undefined1 *)(param_2 + 0x18)) {
  case 0:
    ov07_02222590(param_2 + 0x9c,*(short *)(param_2 + 0x12) * 0x640000 >> 0x10,
                  *(short *)(param_2 + 0x12) * 0x3c0000 >> 0x10,5,0x96,100,0xc);
    *(char *)(param_2 + 0x18) = *(char *)(param_2 + 0x18) + '\x01';
    break;
  case 1:
    iVar1 = ov07_0222260C(param_2 + 0x9c);
    if (iVar1 == 0) {
      ov07_02222590(param_2 + 0x9c,*(short *)(param_2 + 0x12) * 0x3c0000 >> 0x10,
                    *(short *)(param_2 + 0x12) * 0x960000 >> 0x10,0x96,10,100,0xc);
      *(char *)(param_2 + 0x18) = *(char *)(param_2 + 0x18) + '\x01';
    }
    else {
      ov07_02222644(param_2 + 0x9c,&uStack_10,&uStack_14);
      func_0x0200e024(*(undefined4 *)(param_2 + 0x40),uStack_10,uStack_14);
      iVar1 = ov07_02222674((int)*(short *)(param_2 + 0x16),0x10,*(undefined4 *)(param_2 + 0xb0));
      ManagedSprite_SetPositionXY
                (*(undefined4 *)(param_2 + 0x40),(int)*(short *)(param_2 + 0x14),
                 (*(short *)(param_2 + 0x16) + iVar1) * 0x10000 >> 0x10);
      if (*(byte *)(param_2 + 0xc) < *(byte *)(param_2 + 0x10)) {
        *(byte *)(param_2 + 0xc) = *(byte *)(param_2 + 0xc) + 1;
      }
      if (*(byte *)(param_2 + 0x11) < *(byte *)(param_2 + 0xd)) {
        *(byte *)(param_2 + 0xd) = *(byte *)(param_2 + 0xd) - 1;
      }
      uRam04000052 = *(undefined2 *)(param_2 + 0xc);
    }
    break;
  case 2:
    iVar1 = *(int *)(param_2 + 4) + 1;
    *(int *)(param_2 + 4) = iVar1;
    if (3 < iVar1) {
      *(char *)(param_2 + 0x18) = *(char *)(param_2 + 0x18) + '\x01';
    }
    break;
  case 3:
    iVar1 = ov07_0222260C(param_2 + 0x9c);
    if (iVar1 == 0) {
      *(char *)(param_2 + 0x18) = *(char *)(param_2 + 0x18) + '\x01';
    }
    else {
      ov07_02222644(param_2 + 0x9c,&uStack_18,&uStack_1c);
      func_0x0200e024(*(undefined4 *)(param_2 + 0x40),uStack_18,uStack_1c);
      iVar1 = ov07_02222674((int)*(short *)(param_2 + 0x16),0x10,*(undefined4 *)(param_2 + 0xb0));
      ManagedSprite_SetPositionXY
                (*(undefined4 *)(param_2 + 0x40),(int)*(short *)(param_2 + 0x14),
                 (*(short *)(param_2 + 0x16) + iVar1) * 0x10000 >> 0x10);
      if (*(byte *)(param_2 + 0xe) < *(byte *)(param_2 + 0xc)) {
        *(byte *)(param_2 + 0xc) = *(byte *)(param_2 + 0xc) - 1;
      }
      if (*(byte *)(param_2 + 0xd) < *(byte *)(param_2 + 0xf)) {
        *(byte *)(param_2 + 0xd) = *(byte *)(param_2 + 0xd) + 1;
      }
      uRam04000052 = *(undefined2 *)(param_2 + 0xc);
    }
    break;
  default:
    Sprite_DeleteAndFreeResources(*(undefined4 *)(param_2 + 0x44));
    Sprite_DeleteAndFreeResources(*(undefined4 *)(param_2 + 0x48));
    ov07_0221C448(*(undefined4 *)(param_2 + 0x1c),param_1);
    ov07_02232508(param_2);
    return;
  }
  func_0x0200dc18(*(undefined4 *)(param_2 + 0x40));
  SpriteSystem_DrawSprites(*(undefined4 *)(param_2 + 0x28));
  return;
}

