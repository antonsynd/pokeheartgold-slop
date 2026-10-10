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
undefined4 func_0x0200e0fc(undefined4, undefined4) __asm__("sub_0200E0FC");
undefined4 ov07_022227D8(undefined4);
undefined4 ManagedSprite_SetPositionXY(undefined4, undefined4, undefined4);
undefined4 ov07_0222C610(undefined4);
undefined4 ov07_0222260C(undefined4);
undefined4 func_0x0200e024(undefined4, undefined4, undefined4) __asm__("sub_0200E024");
undefined4 ov07_02222590(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221C448(undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 SpriteSystem_DrawSprites(undefined4);
undefined4 Pokepic_SetAttr(undefined4, undefined4, undefined4);

void ov07_0222C6A8(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;

  iVar1 = param_2[2];
  if (iVar1 == 0) {
    ov07_022227D8(param_2 + 4);
    iVar1 = ov07_0222260C(param_2 + 0xd);
    ov07_0222C610(param_2);
    if (iVar1 == 0) {
      ov07_02222590(param_2 + 0xd,0xc,10,0xf,10,10,4);
      param_2[2] = param_2[2] + 1;
    }
  }
  else if (iVar1 == 1) {
    ov07_022227D8(param_2 + 4);
    iVar1 = ov07_0222260C(param_2 + 0xd);
    ov07_0222C610(param_2);
    if (iVar1 == 0) {
      Pokepic_SetAttr(param_2[0x17],0,(int)*(short *)(param_2 + 0x18));
      Pokepic_SetAttr(param_2[0x17],1,(int)*(short *)((int)param_2 + 0x62));
      func_0x0200e0fc(param_2[0x16],0);
      ManagedSprite_SetPositionXY
                (param_2[0x16],(int)*(short *)(param_2 + 0x18),
                 ((int)*(short *)((int)param_2 + 0x62) - (int)*(short *)((int)param_2 + 0x66)) *
                 0x10000 >> 0x10);
      func_0x0200e024(param_2[0x16],0x3f800000,0x3f800000);
      param_2[2] = param_2[2] + 1;
    }
  }
  else if (iVar1 == 2) {
    ov07_0221C448(*param_2,param_1);
    Heap_Free(param_2);
    return;
  }
  SpriteSystem_DrawSprites(param_2[1]);
  return;
}

