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
undefined4 SysTask_CreateOnMainQueue(undefined4, undefined4, undefined4);
undefined4 Heap_AllocAtEnd(undefined4, undefined4);
undefined4 Field_PlayerAvatar_OrrTransitionFlags(undefined4, undefined4);
undefined4 PlayerAvatar_GetState(undefined4);
undefined4 GF_AssertFail(void);
undefined4 PlayerAvatar_GetMapObject(undefined4);
undefined4 MapObject_UnpauseMovement(undefined4);
undefined4 Field_PlayerAvatar_ApplyTransitionFlags(undefined4);

int Field_PlayerMovementSavingSet(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  
  uVar5 = *(undefined4 *)(param_1 + 0x40);
  iVar1 = PlayerAvatar_GetState(uVar5);
  if ((iVar1 != 0) && (iVar1 != 3)) {
    return 0;
  }
  uVar2 = PlayerAvatar_GetMapObject(uVar5);
  puVar3 = (undefined4 *)Heap_AllocAtEnd(4,0x10);
  *puVar3 = 0;
  puVar3[2] = param_1;
  puVar3[3] = uVar5;
  puVar3[1] = iVar1;
  if (iVar1 == 0) {
    uVar4 = 0x80;
  }
  else if (iVar1 == 3) {
    uVar4 = 0x4000;
  }
  else {
    GF_AssertFail();
    uVar4 = 0x80;
  }
  MapObject_UnpauseMovement(uVar2);
  Field_PlayerAvatar_OrrTransitionFlags(uVar5,uVar4);
  Field_PlayerAvatar_ApplyTransitionFlags(uVar5);
  iVar1 = SysTask_CreateOnMainQueue(0x21f3031,puVar3,0xffff);
  if (iVar1 == 0) {
    GF_AssertFail();
  }
  return iVar1;
}

