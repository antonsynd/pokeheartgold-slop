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
undefined4 ManagedSprite_SetAnimateFlag(undefined4, undefined4);
undefined4 func_0x0200dc8c(undefined4, undefined4) __asm__("sub_0200DC8C");
undefined4 ov07_02222268(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ManagedSprite_IsAnimated(undefined4);
undefined4 ov07_02222314(undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 SpriteSystem_DrawSprites(undefined4);
undefined4 Pokepic_SetAttr(undefined4, undefined4, undefined4);
undefined4 ManagedSprite_SetPositionXY(undefined4, undefined4, undefined4);
undefined4 ManagedSprite_SetAnim(undefined4, undefined4);
undefined4 ov07_022222B4(undefined4);
undefined4 ov07_02222768(undefined4, undefined4);
undefined4 Sprite_DeleteAndFreeResources(undefined4);
undefined4 ov07_02222508(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221C448(undefined4, undefined4);

void ov07_0222F210(undefined4 param_1,undefined4 *param_2)

{
  short sVar1;
  short sVar2;
  int iVar3;

  switch(param_2[3]) {
  case 0:
    ManagedSprite_SetAnimateFlag(param_2[0x17],1);
    param_2[3] = param_2[3] + 1;
    break;
  case 1:
    iVar3 = ManagedSprite_IsAnimated(param_2[0x17]);
    if (iVar3 == 0) {
      ManagedSprite_SetAnimateFlag(param_2[0x17],0);
      param_2[3] = param_2[3] + 1;
      ov07_02222508(param_2 + 5,10,10,0,8);
      sVar1 = Pokepic_GetAttr(param_2[4],0);
      sVar2 = Pokepic_GetAttr(param_2[4],1);
      ov07_02222268(param_2 + 0xe,(int)sVar1,(int)*(short *)(param_2 + 0x22),(int)sVar2,
                    (int)*(short *)((int)param_2 + 0x8a),8);
    }
    break;
  case 2:
    ov07_02222314(param_2 + 0xe,param_2[4]);
    iVar3 = ov07_02222768(param_2 + 5,param_2[4]);
    if (iVar3 == 0) {
      Pokepic_SetAttr(param_2[4],6,1);
      Pokepic_SetAttr(param_2[4],0xc,0x100);
      Pokepic_SetAttr(param_2[4],0xd,0x100);
      ManagedSprite_SetAnim(param_2[0x17],1);
      func_0x0200dc8c(param_2[0x17],0x1000);
      ManagedSprite_SetAnimateFlag(param_2[0x17],1);
      param_2[3] = param_2[3] + 1;
    }
    break;
  case 3:
    iVar3 = ManagedSprite_IsAnimated(param_2[0x17]);
    if (iVar3 == 0) {
      ManagedSprite_SetAnimateFlag(param_2[0x17],0);
      param_2[3] = param_2[3] + 1;
      ov07_02222268(param_2 + 0x18,0,0,(int)*(short *)((int)param_2 + 0x8a),0,8);
    }
    break;
  case 4:
    iVar3 = ov07_022222B4(param_2 + 0x18);
    if (iVar3 == 0) {
      param_2[3] = param_2[3] + 1;
    }
    else {
      ManagedSprite_SetPositionXY
                (param_2[0x17],(int)*(short *)(param_2 + 0x22),(int)*(short *)((int)param_2 + 0x62))
      ;
    }
    break;
  case 5:
    Sprite_DeleteAndFreeResources(param_2[0x17]);
    ov07_0221C448(*param_2,param_1);
    Heap_Free(param_2);
    return;
  }
  SpriteSystem_DrawSprites(param_2[2]);
  return;
}

