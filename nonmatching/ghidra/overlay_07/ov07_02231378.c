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
undefined4 ov07_02231300(undefined4);
undefined4 ov07_02222AC4(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Sprite_DeleteAndFreeResources(undefined4);
undefined4 ov07_022312A8(undefined4, undefined4);
undefined4 ov07_0221C448(undefined4, undefined4);
undefined4 ov07_02231E08(undefined4, undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 SpriteSystem_DrawSprites(undefined4);
undefined4 ov07_02222AF4(undefined4);

void ov07_02231378(undefined4 param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  int iVar2;
  
  switch(param_2[3]) {
  case 0:
    ov07_02231E08(*param_2,1,0xf);
    ov07_02222AC4(param_2 + 0x42,1,0x10,0xf,0,10);
    ov07_022312A8(param_2,param_2[5]);
    ov07_02231300(param_2);
    param_2[3] = param_2[3] + 1;
    break;
  case 1:
    ov07_02231300(param_2);
    iVar2 = ov07_02222AF4(param_2 + 0x42);
    if (iVar2 != 0) {
      param_2[3] = param_2[3] + 1;
      param_2[4] = 0x1c;
    }
    break;
  case 2:
    ov07_02231300(param_2);
    iVar2 = param_2[4];
    param_2[4] = iVar2 + -1;
    if (iVar2 + -1 < 0) {
      param_2[3] = param_2[3] + 1;
      ov07_02222AC4(param_2 + 0x42,0x10,1,0,0xf,10);
    }
    break;
  case 3:
    ov07_02231300(param_2);
    iVar2 = ov07_02222AF4(param_2 + 0x42);
    if (iVar2 != 0) {
      param_2[3] = param_2[3] + 1;
    }
    break;
  case 4:
    iVar2 = 0;
    puVar1 = param_2;
    do {
      Sprite_DeleteAndFreeResources(puVar1[6]);
      iVar2 = iVar2 + 1;
      puVar1 = puVar1 + 1;
    } while (iVar2 < 6);
    Heap_Free(param_2);
    ov07_0221C448(*param_2,param_1);
    return;
  }
  SpriteSystem_DrawSprites(param_2[2]);
  return;
}

