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
undefined4 ManagedSprite_SetDrawFlag(undefined4, undefined4);
undefined4 ov07_022222B4(undefined4);
undefined4 ov07_02222268(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_02222338(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Sprite_DeleteAndFreeResources(undefined4);
undefined4 ov07_0221C448(undefined4, undefined4);
undefined4 ov07_022223CC(undefined4, undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 SpriteSystem_DrawSprites(undefined4);
undefined4 ov07_022220B8(undefined4, undefined4, undefined4, undefined4);
undefined4 Pokepic_SetAttr(undefined4, undefined4, undefined4);

void ov07_0222D7A4(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;

  switch(param_2[3]) {
  case 0:
    iVar1 = ov07_022222B4(param_2 + 6);
    if (iVar1 == 0) {
      ov07_02222268(param_2 + 6,(int)*(short *)(param_2 + 6),0,0,0,2);
      param_2[3] = param_2[3] + 1;
      return;
    }
    ov07_022220B8(param_2 + 6,param_2[4],(int)*(short *)(param_2 + 5),
                  (int)*(short *)((int)param_2 + 0x16));
    return;
  case 1:
    iVar1 = ov07_022222B4(param_2 + 6);
    if (iVar1 == 0) {
      Pokepic_SetAttr(param_2[4],0,(int)*(short *)(param_2 + 5));
      Pokepic_SetAttr(param_2[4],1,(int)*(short *)((int)param_2 + 0x16));
      ov07_02222268(param_2 + 6,0,(int)(short)((short)param_2[0xf] * -0x20),0,0,4);
      param_2[3] = param_2[3] + 1;
      return;
    }
    ov07_022220B8(param_2 + 6,param_2[4],(int)*(short *)(param_2 + 5),
                  (int)*(short *)((int)param_2 + 0x16));
    return;
  case 2:
    iVar1 = ov07_022223CC(param_2 + 0x13,param_2 + 0x1c,param_2[0x12]);
    if (iVar1 == 0) {
      ov07_02222338(param_2 + 0x13,param_2 + 0x1c,(int)*(short *)(param_2 + 0x11),
                    (int)*(short *)(param_2 + 5),(int)*(short *)((int)param_2 + 0x46),
                    (int)*(short *)((int)param_2 + 0x16),10,0xfffe0000);
      param_2[3] = param_2[3] + 1;
    }
    break;
  case 3:
    iVar1 = ov07_022223CC(param_2 + 0x13,param_2 + 0x1c,param_2[0x12]);
    if (iVar1 == 0) {
      ManagedSprite_SetDrawFlag(param_2[0x12],0);
      param_2[3] = param_2[3] + 1;
    }
    break;
  case 4:
    iVar1 = ov07_022222B4(param_2 + 6);
    if (iVar1 == 0) {
      ov07_02222268(param_2 + 6,(int)*(short *)(param_2 + 6),0,0,0,4);
      param_2[3] = param_2[3] + 1;
    }
    else {
      ov07_022220B8(param_2 + 6,param_2[4],(int)*(short *)(param_2 + 5),
                    (int)*(short *)((int)param_2 + 0x16));
    }
    break;
  case 5:
    iVar1 = ov07_022222B4(param_2 + 6);
    if (iVar1 == 0) {
      Pokepic_SetAttr(param_2[4],0,(int)*(short *)(param_2 + 5));
      Pokepic_SetAttr(param_2[4],1,(int)*(short *)((int)param_2 + 0x16));
      param_2[3] = param_2[3] + 1;
    }
    else {
      ov07_022220B8(param_2 + 6,param_2[4],(int)*(short *)(param_2 + 5),
                    (int)*(short *)((int)param_2 + 0x16));
    }
    break;
  case 6:
    Sprite_DeleteAndFreeResources(param_2[0x12]);
    ov07_0221C448(*param_2,param_1);
    Heap_Free(param_2);
    return;
  }
  SpriteSystem_DrawSprites(param_2[2]);
  return;
}

