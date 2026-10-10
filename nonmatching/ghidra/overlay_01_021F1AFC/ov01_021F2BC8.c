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
undefined4 sub_0206121C();
undefined4 MapObject_GetZCoord();
undefined4 sub_020611C8();
undefined4 func_0x0224d598() __asm__("sub_0224D598");
undefined4 MapObject_CopyPositionVector();
undefined4 MapObject_GetXCoord();
undefined4 GF_AssertFail();
undefined4 GetDeltaXByFacingDirection();
undefined4 GetDeltaYByFacingDirection();

undefined4 ov01_021F2BC8(int *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined1 auStack_1c [4];
  int iStack_18;
  int iStack_14;

  iVar1 = MapObject_GetXCoord(param_1[0xf]);
  iVar2 = GetDeltaXByFacingDirection(1);
  iVar1 = iVar1 + iVar2 * 2;
  iVar2 = MapObject_GetZCoord(param_1[0xf]);
  iVar3 = GetDeltaYByFacingDirection(1);
  iVar2 = iVar2 + iVar3 * 2;
  sub_020611C8(iVar1,iVar2,param_1 + 10);
  sub_0206121C(param_1[0xd],param_1 + 10);
  param_1[6] = 0;
  param_1[3] = iVar1;
  param_1[4] = (int)((param_1[0xb] >> 3) + ((uint)(param_1[0xb] >> 0xe) >> 0x14)) >> 0xc;
  param_1[5] = iVar2;
  MapObject_CopyPositionVector(param_1[0xf],auStack_1c);
  if (param_1[0xc] <= iStack_14) {
    GF_AssertFail();
  }
  if (iStack_18 <= param_1[0xb]) {
    GF_AssertFail();
  }
  param_1[7] = 0;
  param_1[8] = (int)((param_1[0xb] - iStack_18) + ((uint)(param_1[0xb] - iStack_18 >> 5) >> 0x1a))
               >> 6;
  param_1[9] = (int)((param_1[0xc] - iStack_14) + ((uint)(param_1[0xc] - iStack_14 >> 5) >> 0x1a))
               >> 6;
  iVar1 = func_0x0224d598(param_1[0xd]);
  param_1[0x14] = iVar1;
  *param_1 = *param_1 + 1;
  return 0;
}

