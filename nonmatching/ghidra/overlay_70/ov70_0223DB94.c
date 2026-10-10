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
undefined4 ov70_0223E4FC();
undefined4 ov70_0223E01C();
undefined4 ov70_02238E50();
undefined4 ov70_0223E538();
undefined4 ListMenuItems_Delete(void *);
undefined4 ov70_0223E490();
undefined4 ov70_02238D84();
undefined4 ov70_0223E59C();
undefined4 ov70_02238D60();
undefined4 TouchscreenListMenu_HandleInput(void *);
undefined4 ov70_0223E49C();
undefined4 ClearFrameAndWindow2(void *, int);
undefined4 ov70_0223DE6C();
undefined4 GetMonData(void *, int, void *);
void * Party_GetMonByIndex(void *, int);

undefined4 ov70_0223DB94(int *param_1)

{
  bool bVar1;
  uint uVar2;
  undefined *puVar3;
  int iVar4;

  uVar2 = TouchscreenListMenu_HandleInput((undefined *)param_1[0x474]);
  if (uVar2 < 4) {
    if (uVar2 == 0) {
      return 3;
    }
    if (uVar2 == 1) {
      ov70_02238D60((int)param_1);
      ListMenuItems_Delete((undefined *)param_1[0x46b]);
      param_1[0xb] = 2;
      ov70_02238E50((int)param_1,8,6);
      return 3;
    }
    if (uVar2 == 2) {
      ov70_02238D60((int)param_1);
      ListMenuItems_Delete((undefined *)param_1[0x46b]);
      ClearFrameAndWindow2((undefined *)(param_1 + 0x3c6),0);
      puVar3 = ov70_0223E49C(*(undefined **)(*param_1 + 8),*(undefined **)(*param_1 + 0xc),
                             (uint)*(ushort *)(param_1 + 0x48),
                             (uint)*(ushort *)((int)param_1 + 0x122));
      iVar4 = ov70_0223E4FC(puVar3);
      if (iVar4 != 0) {
        ov70_0223E01C((int)param_1,0x25,1,0,0xf0f,1);
        ov70_02238D84((int)param_1,4,1);
        return 3;
      }
      iVar4 = ov70_0223E538(puVar3);
      if (iVar4 != 0) {
        if (iVar4 == 1) {
          ov70_0223E01C((int)param_1,0xb1,1,0,0xf0f,1);
        }
        else {
          ov70_0223E01C((int)param_1,0xb2,1,0,0xf0f,1);
        }
        ov70_02238D84((int)param_1,4,1);
        return 3;
      }
      iVar4 = ov70_0223E59C(puVar3);
      if (iVar4 != 0) {
        ov70_0223E01C((int)param_1,0xb3,1,0,0xf0f,1);
        ov70_02238D84((int)param_1,4,1);
        return 3;
      }
      bVar1 = false;
      iVar4 = ov70_0223E490((uint)*(ushort *)(param_1 + 0x48));
      if (iVar4 != 0) {
        puVar3 = Party_GetMonByIndex(*(undefined **)(*param_1 + 8),
                                     (uint)*(ushort *)((int)param_1 + 0x122));
        uVar2 = GetMonData(puVar3,0xa2,(undefined *)0x0);
        if (uVar2 != 0) {
          bVar1 = true;
          param_1[0xb] = 0xb;
        }
      }
      if (bVar1) {
        return 3;
      }
      ov70_0223DE6C(param_1);
      return 3;
    }
    if (uVar2 != 3) {
      return 3;
    }
  }
  else if (uVar2 != 0xfffffffe) {
    return 3;
  }
  ov70_02238D60((int)param_1);
  ListMenuItems_Delete((undefined *)param_1[0x46b]);
  ClearFrameAndWindow2((undefined *)(param_1 + 0x3c6),0);
  param_1[0xb] = 0;
  return 3;
}

