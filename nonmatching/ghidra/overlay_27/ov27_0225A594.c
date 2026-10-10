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
undefined4 PlayerAvatar_GetMapObject();
undefined4 FieldSystem_GetPlayerAvatar();
undefined4 func_0x0203dbf8() __asm__("sub_0203DBF8");
undefined4 ov27_0225BD44();
undefined4 MapObject_GetSpriteID();
undefined4 func_0x021e7f54() __asm__("sub_021E7F54");
undefined4 MapObject_GetScriptID();
undefined4 func_0x021f6bb0() __asm__("sub_021F6BB0");
undefined4 sub_0205F330();
undefined4 func_0x0203e13c() __asm__("sub_0203E13C");
undefined4 func_0x021f6bd0() __asm__("sub_021F6BD0");

int ov27_0225A594(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uStack_18;

  uVar4 = *(undefined4 *)(param_1 + 0x10);
  uStack_18 = param_4;
  iVar1 = ov27_0225BD44(uVar4);
  if (iVar1 != 0) {
    return 4;
  }
  iVar1 = func_0x0203e13c(uVar4);
  if (iVar1 == 0) {
    FieldSystem_GetPlayerAvatar(uVar4);
    uVar2 = PlayerAvatar_GetMapObject();
    iVar1 = sub_0205F330();
    iVar3 = MapObject_GetSpriteID(uVar2);
    if (iVar3 - 0xbcU < 2) {
      if (iVar1 == 1) {
        return 3;
      }
      return 4;
    }
    if (*(int *)(param_1 + 0x510) != 4) {
      return *(int *)(param_1 + 0x510);
    }
  }
  iVar1 = func_0x021e7f54(uVar4);
  if (iVar1 == 1) {
    func_0x0203dbf8(uVar4,&uStack_18);
    MapObject_GetScriptID(uStack_18);
    iVar1 = func_0x021f6bd0();
    if (iVar1 == 0) {
      MapObject_GetSpriteID(uStack_18);
      iVar1 = func_0x021f6bb0();
      if (iVar1 == 0) {
        return 1;
      }
    }
    iVar1 = 0;
  }
  return iVar1;
}

