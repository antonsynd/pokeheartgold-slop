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
undefined4 func_0x0221f120() __asm__("sub_0221F120");
undefined4 func_0x0221f150() __asm__("sub_0221F150");
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ManagedSprite_SetAnimateFlag();
extern undefined ov99_021E9DD4;
extern undefined ov99_021E9DBC;

void ov99_021E6C30(int param_1,undefined4 param_2,int param_3,uint param_4,short param_5,
                  undefined2 param_6,byte param_7,int param_8)

{
  undefined2 uVar1;
  int iVar2;
  undefined *puVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  short sVar7;
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
  uint uStack_18;

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
  uStack_1c = 0;
  uStack_18 = param_4;
  iVar2 = func_0x0221f150(param_2);
  uVar5 = 0;
  if (param_4 != 0) {
    sVar7 = 0;
    iVar6 = param_1 + param_3 * 4;
    do {
      uVar1 = func_0x0221f120(param_2,param_4 - uVar5 & 0xff);
      uStack_48 = CONCAT22(uVar1,(undefined2)uStack_48);
      if (param_8 == 0) {
        puVar3 = &ov99_021E9DD4;
      }
      else {
        puVar3 = &ov99_021E9DBC;
      }
      func_0x020d4a50(puVar3,&uStack_38,0x18);
      if (param_8 == 0) {
        uStack_3c = 2;
      }
      else {
        uStack_3c = 1;
      }
      uStack_4c = CONCAT22(param_6,param_5 + sVar7);
      uVar4 = func_0x0221e6e0(*(undefined4 *)(param_1 + 0x14),&uStack_4c);
      *(undefined4 *)(iVar6 + 0x18) = uVar4;
      ManagedSprite_SetAnimateFlag(uVar4,1);
      if (uVar5 < param_4 - iVar2) {
        ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar6 + 0x18),0);
      }
      uVar5 = uVar5 + 1;
      sVar7 = sVar7 + (ushort)param_7;
      iVar6 = iVar6 + 4;
    } while (uVar5 < param_4);
  }
  return;
}

