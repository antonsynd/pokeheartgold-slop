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
undefined4 GF_AssertFail();
undefined4 func_0x021f9344() __asm__("sub_021F9344");
undefined4 sub_0205F330();
undefined4 sub_0205F394();
undefined4 MapObject_GetFieldSystem();
undefined4 func_0x021f94c0() __asm__("sub_021F94C0");
undefined4 sub_02055780();
undefined4 func_0x021fa3e8() __asm__("sub_021FA3E8");
undefined4 sub_0205F40C();
undefined4 func_0x021fe66c() __asm__("sub_021FE66C");
undefined4 func_0x021f95cc() __asm__("sub_021F95CC");
undefined4 sub_020640A4();
undefined4 FieldSystem_ApricornTree_TryGetApricorn();
undefined4 MapObject_SetSpriteID();
undefined4 func_0x021fa2d4() __asm__("sub_021FA2D4");
undefined4 func_0x021fa40c() __asm__("sub_021FA40C");
undefined4 sub_02023F04();
undefined4 sub_02023EF4();
undefined4 sub_02023F40();
undefined4 sub_02023EE0();

void sub_02063E70(undefined4 param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  
  iVar1 = sub_0205F394();
  piVar2 = (int *)sub_0205F40C(param_1);
  uVar3 = MapObject_GetFieldSystem(param_1);
  iVar4 = sub_02055780(uVar3,param_1);
  iVar5 = func_0x021fa2d4(param_1);
  if (iVar5 != 1) {
    if (piVar2[2] == 0) {
      uVar3 = MapObject_GetFieldSystem(param_1);
      uVar3 = FieldSystem_ApricornTree_TryGetApricorn(uVar3,param_1);
      iVar1 = sub_020640A4(uVar3,iVar4);
      *piVar2 = iVar1;
      MapObject_SetSpriteID(param_1,*piVar2);
      func_0x021f94c0(param_1,piVar2 + 2,*piVar2);
    }
    else if (iVar4 != piVar2[1]) {
      func_0x021f95cc(param_1,piVar2 + 2,*piVar2);
      uVar3 = MapObject_GetFieldSystem(param_1);
      uVar3 = FieldSystem_ApricornTree_TryGetApricorn(uVar3,param_1);
      iVar5 = sub_020640A4(uVar3,iVar4);
      *piVar2 = iVar5;
      MapObject_SetSpriteID(param_1,*piVar2);
      if (*piVar2 == 0xffff) {
        GF_AssertFail();
      }
      else {
        if (iVar4 == 1) {
          func_0x021fe66c(param_1);
        }
        func_0x021f94c0(param_1,piVar2 + 2,*piVar2);
      }
      *(undefined2 *)(iVar1 + 2) = 0;
    }
    piVar2[1] = iVar4;
    iVar1 = func_0x021fa2d4(param_1);
    if ((iVar1 != 1) && (piVar2[2] != 0)) {
      func_0x021fa3e8(param_1);
      iVar1 = func_0x021f9344(param_1);
      if (iVar1 == 0) {
        iVar1 = sub_0205F330(param_1);
        if (iVar1 == 0) {
          iVar1 = sub_02023EF4(piVar2[2]);
          if (iVar1 != 0) {
            sub_02023EE0(piVar2[2],0);
            sub_02023F40(piVar2[2],0);
          }
        }
        else if (iVar1 == 1) {
          iVar1 = sub_02023EF4(piVar2[2]);
          if (iVar1 != 1) {
            sub_02023EE0(piVar2[2],1);
            sub_02023F40(piVar2[2],0);
          }
        }
        else if (iVar1 == 2) {
          iVar1 = sub_02023EF4(piVar2[2]);
          if (iVar1 != 2) {
            sub_02023EE0(piVar2[2],2);
            sub_02023F40(piVar2[2],0);
          }
        }
        else {
          GF_AssertFail();
          iVar1 = sub_02023EF4(piVar2[2]);
          if (iVar1 != 0) {
            sub_02023EE0(piVar2[2],0);
            sub_02023F40(piVar2[2],0);
          }
        }
        sub_02023F04(piVar2[2],0x1000);
      }
      func_0x021fa40c(param_1,piVar2[2]);
    }
  }
  return;
}

