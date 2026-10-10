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
undefined4 ov14_021E7148();
undefined4 ov14_021E8824();
undefined4 ov14_021E7960();
undefined4 ov14_021F40E8();
undefined4 ov14_021E7FEC();
undefined4 ov14_021E6F3C();
undefined4 ov14_021E8514();
undefined4 ManagedSprite_SetPositionXY();
undefined4 System_GetTouchHeldCoords();
undefined4 ov14_021E813C();
undefined4 ov14_021F4174();
undefined4 ov14_021E8434();
undefined4 ov14_021F69F0();
undefined4 ov14_021E7FB8();
undefined4 ov14_021E70B0();
undefined4 ov14_021E65C4();
undefined4 sub_02019978();
undefined4 func_0x0200de44() __asm__("sub_0200DE44");
undefined4 ov14_021F3488();
undefined4 ov14_021E66F4();
undefined4 ov14_021E7EE0();
undefined4 ov14_021E765C();

undefined4 ov14_021E9A24(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  short sStack_24;
  short sStack_22;
  uint uStack_20;
  uint uStack_1c;
  undefined4 uStack_18;
  
  iVar7 = *(int *)(param_1 + 0x34);
  uStack_18 = param_4;
  if (*(ushort *)(iVar7 + 0x10) < 2) {
    func_0x0200de44(*(undefined4 *)
                     (iVar7 + (uint)*(byte *)(iVar7 + (uint)*(byte *)(param_1 + 0x21) + 0x4094) * 4
                     + 0x2fc),&sStack_22,&sStack_24);
  }
  iVar2 = ov14_021E8514(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
  iVar3 = ov14_021E813C(param_1);
  iVar4 = sub_02019978(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0),10);
  switch(*(undefined2 *)(iVar7 + 0x10)) {
  case 0:
    *(undefined2 *)(iVar7 + 0x10) = 1;
  case 1:
    if ((*(char *)(*(int *)(param_1 + 0x34) + 0x44a) == '\x01') && (iVar3 == 0)) {
      *(undefined1 *)(*(int *)(param_1 + 0x34) + 0x44a) = 2;
      ov14_021F69F0(param_1,0x28);
    }
    iVar3 = System_GetTouchHeldCoords(&uStack_1c,&uStack_20);
    iVar5 = *(int *)(param_1 + 0x34);
    if (iVar3 == 0) {
      ManagedSprite_SetPositionXY
                (*(undefined4 *)
                  (iVar5 + (uint)*(byte *)(iVar5 + (uint)*(byte *)(param_1 + 0x21) + 0x4094) * 4 +
                  0x2fc),(int)sStack_22,(int)sStack_24);
      iVar2 = *(int *)(param_1 + 0x34);
      uVar6 = 0xff;
      if (*(char *)(iVar2 + 0x44a) == '\x02') {
        uVar6 = ov14_021E7960((int)(short)*(undefined4 *)(iVar2 + 0x40b8),
                              (int)(short)*(undefined4 *)(iVar2 + 0x40bc));
      }
      ov14_021E6F3C(param_1,*(undefined1 *)(param_1 + 0x21),uVar6);
      ov14_021F40E8(param_1,0);
      uVar1 = ov14_021E70B0(param_1,*(undefined1 *)(param_1 + 0x21));
      *(undefined1 *)(param_1 + 0x21) = uVar1;
      if (*(byte *)(param_1 + 0x21) < 0x1e) {
        *(undefined2 *)(iVar7 + 0x10) = 5;
      }
      else {
        ov14_021E7FEC(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
        ov14_021E8434(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
        ov14_021E8824(*(undefined4 *)(param_1 + 0x34));
        *(undefined2 *)(iVar7 + 0x10) = 2;
      }
    }
    else {
      if (((*(char *)(iVar5 + 0x44a) == '\0') && (iVar2 == 0)) &&
         ((iVar4 == 0 && (((uStack_1c < 0x10 || (uStack_20 < 0x30)) || (0x67 < uStack_1c)))))) {
        *(undefined1 *)(iVar5 + 0x44a) = 1;
        ov14_021E7FB8(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
      }
      ManagedSprite_SetPositionXY
                (*(undefined4 *)
                  (*(int *)(param_1 + 0x34) +
                   (uint)*(byte *)(*(int *)(param_1 + 0x34) + (uint)*(byte *)(param_1 + 0x21) +
                                  0x4094) * 4 + 0x2fc),(int)(short)uStack_1c,
                 ((short)uStack_20 + -8) * 0x10000 >> 0x10);
      ov14_021F4174(param_1);
      *(uint *)(*(int *)(param_1 + 0x34) + 0x40b8) = uStack_1c;
      *(uint *)(*(int *)(param_1 + 0x34) + 0x40bc) = uStack_20;
    }
    break;
  case 2:
  case 3:
  case 4:
    iVar4 = ov14_021E65C4(param_1);
    if (((iVar4 == 0) && (iVar3 == 0)) && (iVar2 == 0)) {
      ov14_021E7148(param_1,*(undefined4 *)(iVar7 + 0xc));
      ov14_021F4174(param_1);
      ov14_021F40E8(param_1,*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x40c4));
      *(undefined2 *)(iVar7 + 0x10) = 7;
    }
    break;
  case 5:
    iVar2 = ov14_021E66F4(param_1);
    if (iVar2 == 0) {
      ov14_021E7148(param_1,*(undefined4 *)(iVar7 + 0xc));
      ov14_021E765C(param_1);
      ov14_021E7EE0(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
      *(undefined1 *)(param_1 + 0x21) = 0xff;
      *(undefined2 *)(iVar7 + 0x10) = 6;
    }
    break;
  case 6:
    if (iVar3 == 0) {
      *(undefined2 *)(iVar7 + 0x10) = 7;
    }
    break;
  case 7:
    ov14_021F3488(param_1,1,1);
    ov14_021F3488(param_1,2,0);
    *(undefined1 *)(*(int *)(param_1 + 0x34) + 0x44a) = 0;
    *(undefined2 *)(iVar7 + 0x10) = 0;
    return 0;
  }
  return 1;
}

