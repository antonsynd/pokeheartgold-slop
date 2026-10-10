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
undefined4 MapObject_GetXCoord(void *);
void * MapObject_GetManager(void *);
undefined4 MapObject_GetZCoord(void *);
void * MapObjectManager_GetObjects2(void *);
undefined4 MapObject_GetFlagsBitsMask(void *, int);
undefined4 MapObject_GetYCoord(void *);
undefined4 MapObject_GetPreviousXCoord(void *);
undefined4 MapObject_CheckVisible(void *);
undefined4 MapObjectArray_NextObject(void *);
unsigned char func_0x022055dc(void *) __asm__("sub_022055DC");
undefined4 func_0x02205664() __asm__("sub_02205664");
undefined4 MapObject_GetPreviousZCoord(void *);
undefined4 MapObjectManager_GetObjectCount(void *);
undefined4 MapObject_GetID(void *);

undefined4 sub_02060CA8(undefined *param_1,uint param_2,int param_3,uint param_4)

{
  undefined *puVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  undefined *puStack_24;
  uint uStack_20;
  uint uStack_1c;
  uint uStack_18;
  
  uStack_18 = param_4;
  puVar1 = MapObject_GetManager(param_1);
  puStack_24 = MapObjectManager_GetObjects2(puVar1);
  uVar2 = MapObjectManager_GetObjectCount(puVar1);
  do {
    if ((puStack_24 != param_1) && (uVar3 = MapObject_GetFlagsBitsMask(puStack_24,1), uVar3 != 0)) {
      uStack_1c = MapObject_GetXCoord(puStack_24);
      uStack_20 = MapObject_GetZCoord(puStack_24);
      if ((uStack_1c == param_2) && (uStack_20 == param_4)) {
        iVar4 = MapObject_GetYCoord(puStack_24);
        iVar4 = iVar4 - param_3;
        if (iVar4 < 0) {
          iVar4 = -iVar4;
        }
        if (iVar4 < 2) {
          return 1;
        }
      }
      uStack_1c = MapObject_GetPreviousXCoord(puStack_24);
      uStack_20 = MapObject_GetPreviousZCoord(puStack_24);
      if ((uStack_1c == param_2) && (uStack_20 == param_4)) {
        iVar4 = MapObject_GetYCoord(puStack_24);
        iVar4 = iVar4 - param_3;
        if (iVar4 < 0) {
          iVar4 = -iVar4;
        }
        if (iVar4 < 2) {
          return 1;
        }
      }
      uVar3 = MapObject_GetID(puStack_24);
      if ((((uVar3 == 0xfd) && (iVar4 = func_0x022055dc(puStack_24), iVar4 != 0)) &&
          (iVar4 = MapObject_CheckVisible(puStack_24), iVar4 == 0)) &&
         ((func_0x02205664(puStack_24,&uStack_1c,&uStack_20), uStack_1c == param_2 &&
          (uStack_20 == param_4)))) {
        iVar4 = MapObject_GetYCoord(puStack_24);
        iVar4 = iVar4 - param_3;
        if (iVar4 < 0) {
          iVar4 = -iVar4;
        }
        if (iVar4 < 2) {
          return 1;
        }
      }
    }
    MapObjectArray_NextObject((undefined *)&puStack_24);
    uVar2 = uVar2 - 1;
    if (uVar2 == 0) {
      return 0;
    }
  } while( true );
}

