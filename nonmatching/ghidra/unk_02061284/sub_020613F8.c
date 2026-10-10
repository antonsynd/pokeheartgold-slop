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
undefined4 sub_0205F394();
undefined4 sub_02061E44();
undefined4 sub_020615F0();
undefined4 sub_02060BB8();
undefined4 sub_0206234C();
undefined4 MapObject_ClearEndMovement();
undefined4 MapObject_ForceSetHeldMovement();
undefined4 sub_02061E20();
undefined4 sub_02062428();
undefined4 MapObject_SetOrQueueFacing();
undefined4 MapObject_GetFacingDirection();
undefined4 MapObject_ClearSingleMovement();
undefined4 MapObject_SetSingleMovement();
extern undefined UNK_020fd7b8 __asm__("sub_020FD7B8");

void sub_020613F8(undefined4 param_1)

{
  short sVar1;
  short *psVar2;
  undefined4 uVar3;
  int iVar4;

  psVar2 = (short *)sub_0205F394();
  switch(*psVar2) {
  case 0:
    MapObject_ClearSingleMovement(param_1);
    MapObject_ClearEndMovement(param_1);
    uVar3 = MapObject_GetFacingDirection(param_1);
    uVar3 = sub_0206234C(uVar3,0);
    MapObject_ForceSetHeldMovement(param_1,uVar3);
    *psVar2 = *psVar2 + 1;
    return;
  case 1:
    iVar4 = sub_02062428(param_1);
    if (iVar4 == 0) {
      return;
    }
    sVar1 = sub_02061E20(&UNK_020fd7b8,0xffffffff);
    psVar2[1] = sVar1;
    *psVar2 = *psVar2 + 1;
  case 2:
    psVar2[1] = psVar2[1] + -1;
    if (psVar2[1] == 0) {
      *psVar2 = *psVar2 + 1;
code_r0x0206147e:
      uVar3 = sub_02061E44(*(undefined4 *)(psVar2 + 6),0xffffffff);
      MapObject_SetOrQueueFacing(param_1,uVar3);
      if ((*(int *)(psVar2 + 2) == 1) && (iVar4 = sub_020615F0(param_1,uVar3), iVar4 == 0)) {
        *psVar2 = 0;
        return;
      }
      iVar4 = sub_02060BB8(param_1,uVar3);
      if (iVar4 != 0) {
        *psVar2 = 0;
        return;
      }
      uVar3 = sub_0206234C(uVar3,*(undefined4 *)(psVar2 + 4));
      MapObject_ForceSetHeldMovement(param_1,uVar3);
      MapObject_SetSingleMovement(param_1);
      *psVar2 = *psVar2 + 1;
      goto code_r0x020614da;
    }
    break;
  case 3:
    goto code_r0x0206147e;
  case 4:
code_r0x020614da:
    iVar4 = sub_02062428(param_1);
    if (iVar4 != 0) {
      MapObject_ClearSingleMovement(param_1);
      *psVar2 = 0;
    }
    break;
  default:
    break;
  }
  return;
}

