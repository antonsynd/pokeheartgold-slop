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
void * TaskManager_GetEnvironment(void *);
void * ov01_0220329C(void *, int);
undefined4 ov01_022057C4(void *);
void * TaskManager_GetFieldSystem(void *);
void * FollowMon_GetMapObject(void *);
undefined4 ov01_02205790(void *, unsigned char);
undefined4 MapObject_UnpauseMovement(void *);
undefined4 MapObject_SetPositionVector(void *, void *);
undefined4 MapObject_IsMovementPaused(void *);
undefined4 FollowMon_IsActive(void *);
undefined4 ov01_02205CF0();
undefined4 MapObject_CopyPositionVector(void *, void *);
undefined4 sub_02023E78();
undefined4 Heap_Free(void *);
void * ov01_021F771C(void *);
undefined4 MapObject_SetHeldMovement(void *, unsigned int);
extern undefined ov01_022096E0;
undefined4 sub_02069E84(void *, unsigned char);

undefined4 ov01_02205B14(undefined *param_1)

{
  byte bVar1;
  undefined1 uVar2;
  char cVar3;
  undefined *puVar4;
  char *pcVar5;
  undefined *puVar6;
  int iVar7;
  char *pcVar8;
  char *pcVar9;
  char *pcVar10;
  char acStack_40 [8];
  char acStack_38 [8];
  uint auStack_30 [6];
  int iStack_18;
  int iStack_14;
  
  pcVar9 = acStack_40;
  puVar4 = TaskManager_GetFieldSystem(param_1);
  pcVar5 = TaskManager_GetEnvironment(param_1);
  switch(*pcVar5) {
  case '\0':
    iVar7 = FollowMon_IsActive(puVar4);
    if (iVar7 == 0) {
      Heap_Free(pcVar5);
      return 1;
    }
    iVar7 = ov01_022057C4(puVar4);
    if (iVar7 != 0) {
      Heap_Free(pcVar5);
      return 1;
    }
    puVar6 = FollowMon_GetMapObject(puVar4);
    MapObject_UnpauseMovement(puVar6);
    *pcVar5 = *pcVar5 + '\x01';
  case '\x01':
    puVar6 = FollowMon_GetMapObject(puVar4);
    iVar7 = MapObject_IsMovementPaused(puVar6);
    if (iVar7 != 0) {
      cVar3 = ov01_02205CF0(puVar4,pcVar5);
      *pcVar5 = cVar3;
    }
    break;
  case '\x02':
    auStack_30[0] = 0xe;
    auStack_30[1] = 0xc;
    puVar4 = FollowMon_GetMapObject(puVar4);
    iVar7 = MapObject_IsMovementPaused(puVar4);
    if (iVar7 != 0) {
      bVar1 = pcVar5[3];
      pcVar5[3] = bVar1 + 1;
      MapObject_SetHeldMovement(puVar4,auStack_30[bVar1]);
      if (1 < (byte)pcVar5[3]) {
        *pcVar5 = *pcVar5 + '\x01';
      }
    }
    break;
  case '\x03':
    puVar4 = FollowMon_GetMapObject(puVar4);
    iVar7 = MapObject_IsMovementPaused(puVar4);
    if (iVar7 != 0) {
      MapObject_SetHeldMovement(puVar4,0);
      *pcVar5 = *pcVar5 + '\x01';
    }
    break;
  case '\x04':
    pcVar10 = ((char *)0x22096f0);
    pcVar8 = acStack_38;
    iVar7 = 8;
    do {
      cVar3 = *pcVar10;
      pcVar10 = pcVar10 + 1;
      *pcVar8 = cVar3;
      pcVar8 = pcVar8 + 1;
      iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
    puVar6 = &ov01_022096E0;
    iVar7 = 8;
    do {
      uVar2 = *puVar6;
      puVar6 = puVar6 + 1;
      *pcVar9 = uVar2;
      pcVar9 = pcVar9 + 1;
      iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
    puVar4 = FollowMon_GetMapObject(puVar4);
    iVar7 = 0x2000;
    if (*(int *)(pcVar5 + 0x44) == 0) {
      iVar7 = -0x2000;
    }
    MapObject_CopyPositionVector(puVar4,(undefined *)(auStack_30 + 5));
    iStack_14 = iStack_14 + acStack_38[(byte)pcVar5[1]] * -0x1000;
    auStack_30[5] = auStack_30[5] + iVar7;
    iStack_18 = iStack_18 + acStack_40[(byte)pcVar5[1]] * 0x1000;
    MapObject_SetPositionVector(puVar4,(undefined *)(auStack_30 + 5));
    pcVar5[1] = pcVar5[1] + '\x01';
    if (7 < (byte)pcVar5[1]) {
      *pcVar5 = *pcVar5 + '\x01';
    }
    break;
  case '\x05':
    puVar4 = FollowMon_GetMapObject(puVar4);
    ov01_0220329C(puVar4,3);
    *pcVar5 = *pcVar5 + '\x01';
    break;
  case '\x06':
    pcVar5[2] = pcVar5[2] + '\x01';
    if (0x13 < (byte)pcVar5[2]) {
      ov01_02205790(puVar4,0);
      auStack_30[2] = 0x1000;
      auStack_30[3] = 0x1000;
      auStack_30[4] = 0x1000;
      puVar6 = ov01_021F771C(*(undefined **)(puVar4 + 0x3c));
      sub_02023E78(puVar6,(undefined *)(auStack_30 + 2));
      sub_02069E84(*(undefined **)(puVar4 + 0xe4),1);
      *pcVar5 = *pcVar5 + '\x01';
    }
    break;
  case '\a':
    Heap_Free(pcVar5);
    return 1;
  }
  return 0;
}

