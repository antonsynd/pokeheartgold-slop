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
undefined4 MapObject_GetSpriteID();
undefined4 MapObjectManager_GetMapModelNarc();
undefined4 func_0x020c3b50() __asm__("sub_020C3B50");
undefined4 Heap_Free();
undefined4 ov01_02206088();
undefined4 func_0x02003de8() __asm__("sub_02003DE8");
undefined4 ov01_021F771C();
undefined4 TaskManager_GetStatePtr();
undefined4 TaskManager_GetFieldSystem();
undefined4 func_0x0200771c() __asm__("sub_0200771C");
undefined4 sub_02023FB0();
undefined4 FollowMon_GetMapObject();
undefined4 func_0x020d47b8() __asm__("sub_020D47B8");
undefined4 TaskManager_GetEnvironment();
undefined4 func_0x020205d8() __asm__("sub_020205D8");

undefined4 ov01_0220610C(undefined4 param_1)

{
  int iVar1;
  char *pcVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  uint uVar7;
  
  iVar1 = TaskManager_GetFieldSystem();
  pcVar2 = (char *)TaskManager_GetEnvironment(param_1);
  piVar3 = (int *)TaskManager_GetStatePtr(param_1);
  switch(*piVar3) {
  case 0:
    FollowMon_GetMapObject(iVar1);
    MapObject_GetSpriteID();
    uVar5 = ov01_02206088();
    uVar4 = MapObjectManager_GetMapModelNarc(*(undefined4 *)(iVar1 + 0x3c));
    uVar5 = func_0x0200771c(uVar4,uVar5,0xb);
    iVar1 = func_0x020c3b50();
    func_0x020d47b8(iVar1 + *(int *)(iVar1 + 0x38),pcVar2 + 4,0x40);
    Heap_Free(uVar5);
    *piVar3 = *piVar3 + 1;
    break;
  case 1:
    if (pcVar2[2] == '\0') {
      *pcVar2 = *pcVar2 + pcVar2[1];
      if ('\x0f' < *pcVar2) {
        *pcVar2 = '\x10';
        *piVar3 = *piVar3 + 1;
      }
      func_0x02003de8(pcVar2 + 4,pcVar2 + 0x44,0x20,*pcVar2,0xffff);
      uVar5 = ov01_021F771C(*(undefined4 *)(iVar1 + 0x3c));
      uVar6 = sub_02023FB0();
      uVar7 = sub_02023FB0(uVar5);
      func_0x020205d8(1,(uVar7 & 0xffff) << 3,pcVar2 + 0x44,(uVar6 >> 0x10) << 3);
      pcVar2[2] = pcVar2[3];
    }
    else {
      pcVar2[2] = pcVar2[2] + -1;
    }
    break;
  case 2:
    if (pcVar2[2] == '\0') {
      *pcVar2 = *pcVar2 - pcVar2[1];
      if (*pcVar2 < '\x01') {
        *piVar3 = *piVar3 + 1;
      }
      func_0x02003de8(pcVar2 + 4,pcVar2 + 0x44,0x20,*pcVar2,0xffff);
      uVar5 = ov01_021F771C(*(undefined4 *)(iVar1 + 0x3c));
      uVar6 = sub_02023FB0();
      uVar7 = sub_02023FB0(uVar5);
      func_0x020205d8(1,(uVar7 & 0xffff) << 3,pcVar2 + 0x44,(uVar6 >> 0x10) << 3);
      pcVar2[2] = pcVar2[3];
    }
    else {
      pcVar2[2] = pcVar2[2] + -1;
    }
    break;
  case 3:
    Heap_Free(pcVar2);
    return 1;
  }
  return 0;
}

