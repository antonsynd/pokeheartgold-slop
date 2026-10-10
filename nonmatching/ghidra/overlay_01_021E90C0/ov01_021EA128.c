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
undefined4 TaskManager_GetEnvironment(undefined4);
undefined4 IsPaletteFadeFinished(void);
undefined4 NewFieldFadeEnvironment(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 MapObject_ClearHeldMovementIfActive(undefined4);
undefined4 MapObject_SetHeldMovement(undefined4, undefined4);
undefined4 PlayerAvatar_GetFacingDirection(undefined4);
undefined4 MapObject_IsMovementPaused(void);
undefined4 MapObject_SetVisible(undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 PlayerAvatar_GetMapObject(undefined4);
undefined4 TaskManager_GetFieldSystem(void);

undefined4 ov01_021EA128(undefined4 param_1)

{
  char cVar1;
  int iVar2;
  char *pcVar3;
  undefined4 uVar4;

  iVar2 = TaskManager_GetFieldSystem();
  pcVar3 = (char *)TaskManager_GetEnvironment(param_1);
  switch(*pcVar3) {
  case '\0':
    uVar4 = PlayerAvatar_GetMapObject(*(undefined4 *)(iVar2 + 0x40));
    cVar1 = PlayerAvatar_GetFacingDirection(*(undefined4 *)(iVar2 + 0x40));
    if (cVar1 == '\x01') {
      MapObject_SetVisible(uVar4,1);
      cVar1 = '\x01';
    }
    else {
      MapObject_SetVisible(uVar4,0);
      cVar1 = '\x03';
    }
    *pcVar3 = cVar1;
    NewFieldFadeEnvironment(param_1,0,1,1,0,6,1,0xb);
    break;
  case '\x01':
    uVar4 = PlayerAvatar_GetMapObject(*(undefined4 *)(iVar2 + 0x40));
    MapObject_SetVisible(uVar4,0);
    MapObject_SetHeldMovement(uVar4,0xd);
    *pcVar3 = *pcVar3 + '\x01';
    break;
  case '\x02':
    uVar4 = PlayerAvatar_GetMapObject(*(undefined4 *)(iVar2 + 0x40));
    iVar2 = MapObject_IsMovementPaused();
    if (iVar2 == 1) {
      MapObject_ClearHeldMovementIfActive(uVar4);
      *pcVar3 = *pcVar3 + '\x01';
    }
    break;
  case '\x03':
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 != 0) {
      Heap_Free(pcVar3);
      return 1;
    }
  }
  return 0;
}

