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
undefined4 func_0x0221e6e0() __asm__("sub_0221E6E0");
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov99_021E86D4();
undefined4 ov99_021E8518();
undefined4 ManagedSprite_SetAnimateFlag();
extern undefined ov99_021EA394;

void ov99_021E8D88(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  short sVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  short sVar7;
  int iStack_60;
  uint uStack_5c;
  uint uStack_58;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_4c = 0;
  uStack_48 = 0;
  uStack_44 = 0;
  uStack_40 = 0;
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0;
  uStack_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  uStack_20 = 0;
  uStack_58 = 0;
  uStack_1c = 0;
  iStack_60 = 0;
  sVar2 = 0x48;
  sVar3 = 6;
  uStack_18 = param_4;
  do {
    uStack_5c = 0;
    sVar1 = 0x20;
    sVar7 = 1;
    do {
      uVar5 = uStack_5c + iStack_60 & 0xff;
      func_0x020d4a50(&ov99_021EA394,&uStack_38,0x18);
      uStack_3c = 1;
      uStack_4c = CONCAT22(sVar2,sVar1);
      uStack_44 = 0;
      uStack_48 = CONCAT22(0x10,(undefined2)uStack_48);
      iVar6 = param_1 + (uVar5 + 0xc) * 4;
      uVar4 = func_0x0221e6e0(*(undefined4 *)(param_1 + 0x14),&uStack_4c);
      *(undefined4 *)(iVar6 + 0x18) = uVar4;
      ManagedSprite_SetDrawFlag
                (*(undefined4 *)(iVar6 + 0x18),*(int *)(param_1 + uVar5 * 4 + 0xbc) == 0);
      uStack_44 = 1;
      uStack_48 = CONCAT22(4,(undefined2)uStack_48);
      iVar6 = param_1 + (uVar5 + 2) * 4;
      uVar4 = func_0x0221e6e0(*(undefined4 *)(param_1 + 0x14),&uStack_4c);
      *(undefined4 *)(iVar6 + 0x18) = uVar4;
      uVar4 = ov99_021E8518(param_1,(int)(char)(uStack_5c + iStack_60),1);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar6 + 0x18),uVar4);
      ManagedSprite_SetAnimateFlag(*(undefined4 *)(iVar6 + 0x18),1);
      ov99_021E86D4(param_1,uVar5,(int)sVar7,(int)sVar3,*(int *)(param_1 + uVar5 * 4 + 0xbc) == 0,0)
      ;
      sVar7 = sVar7 + 6;
      sVar1 = sVar1 + 0x30;
      uStack_5c = uStack_5c + 1;
    } while (uStack_5c < 5);
    iStack_60 = iStack_60 + 5;
    sVar2 = sVar2 + 0x40;
    sVar3 = sVar3 + 8;
    uStack_58 = uStack_58 + 1;
  } while (uStack_58 < 2);
  return;
}

