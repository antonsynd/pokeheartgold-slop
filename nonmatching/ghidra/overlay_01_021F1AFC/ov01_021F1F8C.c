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
undefined4 MapObject_GetID(undefined4);
undefined4 MapObject_GetXCoord(undefined4);
undefined4 MapObject_GetMapID(undefined4);
undefined4 MapObject_Delete(undefined4);
undefined4 MapObject_GetEventFlag(undefined4);
undefined4 MapObject_GetZCoord(undefined4);
undefined4 FieldSystem_FlagSet(undefined4, undefined4);
undefined4 FieldSystem_FlagClear(undefined4, undefined4);
extern undefined ov01_02206A14;
extern undefined UNK_02206a1c __asm__("sub_02206A1C");

undefined4 ov01_021F1F8C(undefined4 param_1,undefined4 param_2)

{
  undefined2 uVar1;
  uint uVar2;
  ushort *puVar3;
  uint uVar4;
  
  puVar3 = (ushort *)&ov01_02206A14;
  uVar4 = 0;
  do {
    uVar2 = MapObject_GetMapID(param_2);
    if (*puVar3 == uVar2) {
      uVar2 = MapObject_GetID(param_2);
      if (puVar3[3] == uVar2) {
        uVar2 = MapObject_GetXCoord(param_2);
        if (puVar3[1] == uVar2) {
          uVar2 = MapObject_GetZCoord(param_2);
          if (puVar3[2] == uVar2) {
            uVar1 = MapObject_GetEventFlag(param_2);
            FieldSystem_FlagSet(param_1,uVar1);
            MapObject_Delete(param_2);
            FieldSystem_FlagClear(param_1,*(undefined2 *)(&UNK_02206a1c + uVar4 * 10));
            return 1;
          }
        }
      }
    }
    uVar4 = uVar4 + 1;
    puVar3 = puVar3 + 5;
  } while (uVar4 < 4);
  return 0;
}

