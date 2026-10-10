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
undefined4 OverlayManager_GetArgs();
undefined4 func_0x02006ff8() __asm__("sub_02006FF8");
undefined4 sub_0203A914();
undefined4 sub_0203769C();
undefined4 sub_020378AC();
undefined4 ov12_02238A68();
undefined4 BattleSystem_GetBattlerIdPartner();
undefined4 OverlayManager_CreateAndGetData();
undefined4 func_0x0221ba00() __asm__("sub_0221BA00");
undefined4 func_0x020d4858() __asm__("sub_020D4858");
undefined4 Heap_Alloc();

undefined4
ov12_0223A0D4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  
  iVar1 = OverlayManager_CreateAndGetData(param_1,0x2490,5,param_4,param_4);
  uVar2 = OverlayManager_GetArgs(param_1);
  func_0x020d4858(0,iVar1,0x2490);
  ov12_02238A68(iVar1,uVar2);
  if ((((*(uint *)(iVar1 + 0x2c) & 4) != 0) && ((*(uint *)(iVar1 + 0x240c) & 0x10) == 0)) &&
     ((*(uint *)(iVar1 + 0x2c) & 0x80) == 0)) {
    func_0x02006ff8(5,2);
    if ((*(uint *)(iVar1 + 0x2c) & 8) != 0) {
      uVar2 = Heap_Alloc(5,0x30);
      *(undefined4 *)(iVar1 + 0x1c4) = uVar2;
      func_0x020d4858(0,*(undefined4 *)(iVar1 + 0x1c4),0x30);
      uVar3 = sub_0203769C();
      uVar3 = uVar3 & 0xff;
      uVar2 = sub_020378AC(uVar3);
      switch(uVar2) {
      case 0:
      case 3:
        *(undefined4 *)(*(int *)(iVar1 + 0x1c4) + 4) = *(undefined4 *)(iVar1 + uVar3 * 4 + 0x68);
        iVar4 = BattleSystem_GetBattlerIdPartner(iVar1,uVar3);
        *(undefined4 *)(*(int *)(iVar1 + 0x1c4) + 0xc) = *(undefined4 *)(iVar1 + iVar4 * 4 + 0x68);
        break;
      case 1:
      case 2:
        iVar4 = BattleSystem_GetBattlerIdPartner(iVar1,uVar3);
        *(undefined4 *)(*(int *)(iVar1 + 0x1c4) + 4) = *(undefined4 *)(iVar1 + iVar4 * 4 + 0x68);
        *(undefined4 *)(*(int *)(iVar1 + 0x1c4) + 0xc) = *(undefined4 *)(iVar1 + uVar3 * 4 + 0x68);
      }
      *(undefined4 *)(*(int *)(iVar1 + 0x1c4) + 0x24) = 5;
      *(undefined1 *)(*(int *)(iVar1 + 0x1c4) + 0x28) = 0;
      uVar2 = sub_020378AC(uVar3);
      switch(uVar2) {
      case 0:
      case 3:
        *(undefined1 *)(*(int *)(iVar1 + 0x1c4) + 0x29) = 0;
        break;
      case 1:
      case 2:
        *(undefined1 *)(*(int *)(iVar1 + 0x1c4) + 0x29) = 1;
      }
      func_0x0221ba00(*(undefined4 *)(iVar1 + 0x1c4));
      return 1;
    }
    return 0;
  }
  sub_0203A914();
  return 0;
}

