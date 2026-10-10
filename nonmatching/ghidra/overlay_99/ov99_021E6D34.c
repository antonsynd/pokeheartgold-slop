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
undefined4 ov99_021E70D8();
undefined4 func_0x0221ebec() __asm__("sub_0221EBEC");
undefined4 ov99_021E7068();
undefined4 ov99_021E70B8();
undefined4 ov99_021E6D14();
undefined4 ov99_021E6CF4();
undefined4 func_0x0221eefc() __asm__("sub_0221EEFC");
undefined4 ov99_021E7088();
undefined4 func_0x0221ef80() __asm__("sub_0221EF80");
undefined4 BufferPlayersName();
undefined4 ov99_021E70C8();
undefined4 func_0x0221ecd0() __asm__("sub_0221ECD0");
undefined4 ov99_021E7078();
undefined4 ov99_021E7100();
undefined4 ov99_021E70A8();
undefined4 func_0x0221ec08() __asm__("sub_0221EC08");
undefined4 ov99_021E7124();
undefined4 ov99_021E7098();
undefined4 func_0x0221ebd8() __asm__("sub_0221EBD8");
undefined4 func_0x0221e6f0() __asm__("sub_0221E6F0");
undefined4 ManagedSprite_SetAnim();
undefined4 ManagedSprite_SetPaletteOverride();
undefined4 ov99_021E6C30();
undefined4 ov99_021E6C14();
extern undefined ov99_021E9DAC;
extern undefined ov99_021E9D8C;

void ov99_021E6D34(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  uint uVar12;
  
  uVar1 = ov99_021E70C8(*param_1);
  uVar2 = ov99_021E70B8(*param_1);
  uVar3 = ov99_021E70A8(*param_1);
  uVar4 = ov99_021E70D8(*param_1);
  iVar5 = ov99_021E7088(*param_1);
  iVar6 = ov99_021E7124(param_1);
  ov99_021E7078(*param_1);
  iVar7 = func_0x0221ef80();
  iVar8 = ov99_021E7068(*param_1);
  iVar9 = ov99_021E7100(uVar4);
  uVar12 = iVar9 + iVar8 + iVar6 + iVar7 & 0xff;
  uVar10 = func_0x0221eefc(param_1[4]);
  uVar11 = ov99_021E7098(*param_1);
  BufferPlayersName(uVar10,0,uVar11);
  func_0x0221ec08(param_1[4],0,0xb,1,0);
  func_0x0221ebd8(param_1[4],1,0xc,0);
  func_0x0221ebd8(param_1[4],2,0xd,0);
  func_0x0221ebd8(param_1[4],3,0xe,0);
  func_0x0221ebd8(param_1[4],4,0xf,0);
  func_0x0221ec08(param_1[4],5,0x20,2,0);
  func_0x0221ebec(param_1[4],7,0,1,0,4);
  ov99_021E6CF4(param_1,uVar12);
  func_0x0221ebd8(param_1[4],8,0x10,0);
  func_0x0221ebd8(param_1[4],0xd,0x1f,0);
  func_0x0221ebd8(param_1[4],0xe,1,0);
  func_0x0221ecd0(param_1[4],10,0x1c,uVar1,4,0);
  func_0x0221ecd0(param_1[4],0xb,0x1d,uVar2,4,0);
  func_0x0221ecd0(param_1[4],0xc,0x1e,uVar3,4,0);
  ov99_021E6D14(param_1,iVar9);
  ov99_021E6C14(param_1);
  if (iVar5 == 1) {
    ManagedSprite_SetAnim(param_1[6],1);
    ManagedSprite_SetPaletteOverride(param_1[6],1);
  }
  ov99_021E6C30(param_1,uVar12,1,2,200,0x70,0x20,1);
  ov99_021E6C30(param_1,uVar4,3,4,0x50,0xa0,0x20,0);
  func_0x0221e6f0(param_1[5],param_1 + 6,&ov99_021E9DAC,iVar6,7,0x10,0x28,1);
  func_0x0221e6f0(param_1[5],param_1 + 6,&ov99_021E9DAC,iVar7,0x11,0x10,0x48,1);
  func_0x0221e6f0(param_1[5],param_1 + 6,&ov99_021E9DAC,iVar8,0x1b,0x10,0x68,1);
  func_0x0221e6f0(param_1[5],param_1 + 6,&ov99_021E9DAC,iVar9,0x25,0x10,0x88,1);
  func_0x0221e6f0(param_1[5],param_1 + 6,&ov99_021E9D8C,iVar9,0x39,0x60,0x78,0);
  return;
}

