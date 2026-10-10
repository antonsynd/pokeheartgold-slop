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
undefined4 Sprite_UpdateAnim(undefined4, undefined4);
undefined4 ov90_0225BD08(undefined4);
undefined4 SysTask_Destroy(undefined4);
undefined4 Sprite_SetPriority(undefined4, undefined4);
undefined4 ov90_0225BBD0(undefined4);
undefined4 PlaySE(undefined4);
undefined4 ov90_0225BAD0(undefined4, undefined4, undefined4, undefined4);
undefined4 Sprite_IsAnimated(undefined4);
undefined4 ov90_02258EB4(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Sprite_SetPalOffsetRespectVramOffset(undefined4, undefined4);
undefined4 ov90_0225BBF0(undefined4);
undefined4 Sprite_GetAnimationFrame(undefined4);
undefined4 Sprite_Delete(undefined4);

void ov90_0225BEE0(undefined4 param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;

  switch(*(undefined2 *)(param_2 + 1)) {
  case 1:
    ov90_0225BAD0(param_2 + 0xd,param_2[10],param_2[2],*param_2);
    uVar1 = ov90_02258EB4(param_2[10],param_2[2],0x80,0x61,0x40,*param_2);
    param_2[0xc] = uVar1;
    Sprite_SetPriority(uVar1,0);
    *(short *)(param_2 + 1) = *(short *)(param_2 + 1) + 1;
    return;
  case 2:
    iVar3 = ov90_0225BBD0(param_2 + 0xd);
    if (iVar3 == 1) {
      *(short *)(param_2 + 1) = *(short *)(param_2 + 1) + 1;
      *(undefined2 *)((int)param_2 + 6) = 0;
      return;
    }
    break;
  case 3:
    iVar3 = Sprite_GetAnimationFrame(param_2[0xc]);
    Sprite_UpdateAnim(param_2[0xc],0x2000);
    iVar2 = Sprite_GetAnimationFrame(param_2[0xc]);
    if (iVar3 != iVar2) {
      switch(iVar2) {
      case 7:
        PlaySE(0x5dd);
        break;
      case 9:
        PlaySE(0x5dd);
        break;
      case 0xb:
        PlaySE(0x5dd);
        break;
      case 0xd:
        PlaySE(0x5dd);
        break;
      case 0xf:
        PlaySE(0x642);
      }
    }
    if (iVar2 == 0xf) {
      if (*(short *)((int)param_2 + 6) == 0) {
        Sprite_SetPalOffsetRespectVramOffset(param_2[0xc],0);
      }
      else if (*(short *)((int)param_2 + 6) == 4) {
        Sprite_SetPalOffsetRespectVramOffset(param_2[0xc],1);
      }
      *(short *)((int)param_2 + 6) = *(short *)((int)param_2 + 6) + 1;
      if (7 < *(short *)((int)param_2 + 6)) {
        *(undefined2 *)((int)param_2 + 6) = 0;
      }
    }
    iVar3 = Sprite_IsAnimated(param_2[0xc]);
    if (iVar3 == 0) {
      *(short *)(param_2 + 1) = *(short *)(param_2 + 1) + 1;
      Sprite_SetPalOffsetRespectVramOffset(param_2[0xc],0);
      return;
    }
    break;
  case 4:
    iVar3 = ov90_0225BBF0(param_2 + 0xd);
    if (iVar3 == 1) {
      Sprite_Delete(param_2[0xc]);
      param_2[0xc] = 0;
      *(short *)(param_2 + 1) = *(short *)(param_2 + 1) + 1;
      *(undefined2 *)((int)param_2 + 6) = 0;
      return;
    }
    break;
  case 5:
    *(short *)((int)param_2 + 6) = *(short *)((int)param_2 + 6) + 1;
    if (1 < *(short *)((int)param_2 + 6)) {
      *(undefined2 *)(param_2 + 1) = 0;
      ov90_0225BD08(param_2 + 0xd);
      SysTask_Destroy(param_2[0xb]);
      param_2[0xb] = 0;
    }
  }
  return;
}

