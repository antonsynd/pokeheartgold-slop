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
undefined4 func_0x020f2178(undefined4) __asm__("sub_020F2178");
undefined4 func_0x0200e074(undefined4, undefined4) __asm__("sub_0200E074");
undefined4 Sprite_DeleteAndFreeResources(undefined4);
undefined4 ov07_02222508(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221C448(undefined4, undefined4);
undefined4 func_0x020f22dc(undefined4, undefined4) __asm__("sub_020F22DC");
undefined4 func_0x0200e024(undefined4, undefined4, undefined4) __asm__("sub_0200E024");
undefined4 ov07_02222558(undefined4);
undefined4 ov07_022223F0(undefined4, undefined4, undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 SpriteSystem_DrawSprites(undefined4);
undefined4 ov07_02222644(undefined4, undefined4, undefined4);
undefined4 ov07_02222440(undefined4);

void ov07_0222D2B0(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  switch(param_2[3]) {
  case 0:
    iVar1 = ov07_02222558(param_2 + 5);
    if (iVar1 == 1) {
      ov07_02222644(param_2 + 5,&uStack_10,&uStack_14);
      uVar2 = func_0x020f2178(param_2[0x15]);
      uVar2 = func_0x020f22dc(uStack_10,uVar2);
      func_0x0200e024(param_2[4],uVar2,uStack_14);
    }
    else {
      param_2[3] = param_2[3] + 1;
      param_2[0x13] = 5;
      ov07_02222508(param_2 + 5,10,10,1,8);
    }
    break;
  case 1:
    iVar1 = ov07_02222440(param_2 + 0xe);
    func_0x0200e074(param_2[4],param_2[0xe] & 0xffff);
    if (iVar1 == 0) {
      if ((int)param_2[0x13] < 1) {
        param_2[3] = param_2[3] + 1;
      }
      else {
        param_2[0x13] = param_2[0x13] + -1;
        uVar2 = param_2[0x14];
        param_2[0x14] = param_2[0xe];
        ov07_022223F0(param_2 + 0xe,param_2[0xe],uVar2,4);
      }
    }
    break;
  case 2:
    iVar1 = ov07_02222558(param_2 + 5);
    if (iVar1 == 1) {
      ov07_02222644(param_2 + 5,&uStack_10,&uStack_14);
      uVar2 = func_0x020f2178(param_2[0x15]);
      uVar2 = func_0x020f22dc(uStack_10,uVar2);
      func_0x0200e024(param_2[4],uVar2,uStack_14);
    }
    else {
      param_2[3] = param_2[3] + 1;
    }
    break;
  case 3:
    Sprite_DeleteAndFreeResources(param_2[4]);
    ov07_0221C448(*param_2,param_1);
    Heap_Free(param_2);
    return;
  }
  SpriteSystem_DrawSprites(param_2[2]);
  return;
}

