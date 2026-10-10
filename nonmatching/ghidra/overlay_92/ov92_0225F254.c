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
undefined4 ManagedSprite_GetAnimationFrame();
undefined4 SysTask_Destroy();
undefined4 Heap_Free();
undefined4 IsPaletteFadeFinished();
undefined4 ov92_02260870();
undefined4 ManagedSprite_GetSpritePositionFxXY();
undefined4 ov92_02260860();
undefined4 ManagedSprite_SetPositonFxXY();

void ov92_0225F254(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined1 auStack_20 [4];
  undefined4 uStack_1c;
  int iStack_18;
  undefined1 auStack_14 [4];
  undefined4 uStack_10;
  
  uStack_10 = param_4;
  ManagedSprite_GetAnimationFrame(param_2[3]);
  iVar1 = IsPaletteFadeFinished();
  if ((iVar1 != 0) && (*(char *)(param_2[0xb] + 0x34) != '\x01')) {
    if (*param_2 == 0) {
      param_2[2] = 0;
      ManagedSprite_GetSpritePositionFxXY(param_2[3],auStack_14,&iStack_18);
      if (param_2[1] == 0) {
        ov92_02260860(param_2 + 5,iStack_18,iStack_18 + 0x20000,0x10);
      }
      else {
        ov92_02260860(param_2 + 5,iStack_18,iStack_18 + -0x20000,4);
      }
      *param_2 = *param_2 + 1;
      return;
    }
    if (*param_2 == 1) {
      iVar1 = ov92_02260870(param_2 + 5);
      ManagedSprite_GetSpritePositionFxXY(param_2[3],&uStack_1c,auStack_20);
      ManagedSprite_SetPositonFxXY(param_2[3],uStack_1c,param_2[5]);
      if (iVar1 != 0) {
        *param_2 = *param_2 + 1;
        return;
      }
    }
    else if (param_2[1] == 0) {
      iVar1 = param_2[2] + 1;
      param_2[2] = iVar1;
      if (0x22 < iVar1) {
        param_2[1] = param_2[1] + 1;
        *param_2 = 0;
        return;
      }
    }
    else {
      iVar1 = param_2[2] + 1;
      param_2[2] = iVar1;
      if (9 < iVar1) {
        SysTask_Destroy(param_1);
        Heap_Free(param_2);
      }
    }
    return;
  }
  SysTask_Destroy(param_1);
  Heap_Free(param_2);
  return;
}

