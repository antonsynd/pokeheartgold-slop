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
undefined4 ov07_0221FA78(undefined4);
undefined4 func_0x0200df98(undefined4, undefined4) __asm__("sub_0200DF98");
undefined4 ov07_0221FAA0(undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 func_0x0200e0cc(undefined4, undefined4, undefined4) __asm__("sub_0200E0CC");
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_0221C514(undefined4);
undefined4 func_0x0200dd68(undefined4, undefined4) __asm__("sub_0200DD68");
undefined4 ManagedSprite_SetPositionXY(undefined4, undefined4, undefined4);
undefined4 ManagedSprite_SetDrawFlag(undefined4, undefined4);
undefined4 func_0x0200e0fc(undefined4, undefined4) __asm__("sub_0200E0FC");
undefined4 ov07_0221FB78(undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 func_0x0200dd54(undefined4, undefined4) __asm__("sub_0200DD54");
undefined4 ov07_0221C470(undefined4);
undefined4 ov07_0221C4E8(undefined4, undefined4);

void ov07_0222F848(undefined4 param_1)

{
  short sVar1;
  short sVar2;
  short sVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  
  puVar4 = (undefined4 *)ov07_022324D8(param_1,0xd0);
  *puVar4 = param_1;
  uVar5 = ov07_0221C514(param_1);
  puVar4[1] = uVar5;
  uVar5 = ov07_0221FA78(*puVar4);
  puVar4[0x31] = uVar5;
  uVar5 = ov07_0221C468(param_1);
  uVar5 = ov07_0221FA48(*puVar4,uVar5);
  sVar1 = Pokepic_GetAttr(uVar5,0);
  sVar2 = Pokepic_GetAttr(uVar5,1);
  iVar6 = Pokepic_GetAttr(uVar5,0x29);
  iVar7 = (sVar2 - iVar6) * 0x10000 >> 0x10;
  uVar5 = ov07_0221C470(param_1);
  uVar5 = ov07_0221FA48(*puVar4,uVar5);
  sVar2 = Pokepic_GetAttr(uVar5,0);
  sVar3 = Pokepic_GetAttr(uVar5,1);
  iVar6 = Pokepic_GetAttr(uVar5,0x29);
  puVar4[5] = iVar7;
  uVar5 = ov07_0221C468(*puVar4);
  uVar5 = ov07_0221FAA0(*puVar4,uVar5);
  puVar4[4] = uVar5;
  uVar5 = ov07_0221C4E8(*puVar4,0);
  puVar4[6] = uVar5;
  func_0x0200dd68(uVar5,100);
  func_0x0200dd54(puVar4[6],1);
  ManagedSprite_SetPositionXY(puVar4[6],(int)sVar1,iVar7);
  ManagedSprite_SetDrawFlag(puVar4[6],0);
  func_0x0200e0fc(puVar4[6],1);
  func_0x0200df98(puVar4[6],2);
  uVar5 = ov07_0221C4E8(*puVar4,1);
  puVar4[7] = uVar5;
  func_0x0200dd68(uVar5,100);
  func_0x0200dd54(puVar4[7],1);
  ManagedSprite_SetPositionXY(puVar4[7],(int)sVar2,(sVar3 - iVar6) * 0x10000 >> 0x10);
  ManagedSprite_SetDrawFlag(puVar4[7],0);
  func_0x0200e0fc(puVar4[7],1);
  func_0x0200df98(puVar4[7],2);
  func_0x0200e0cc(puVar4[7],0,0x28);
  uVar5 = ov07_0221FB78(*puVar4,0);
  puVar4[0x32] = uVar5;
  uVar5 = ov07_0221FB78(*puVar4,1);
  puVar4[0x33] = uVar5;
  uVar5 = ov07_0221C4E8(*puVar4,2);
  puVar4[8] = uVar5;
  uVar5 = ov07_0221C4E8(*puVar4,3);
  puVar4[9] = uVar5;
  ManagedSprite_SetDrawFlag(puVar4[8],0);
  ManagedSprite_SetDrawFlag(puVar4[9],0);
  ov07_0221C410(*puVar4,0x222f765,puVar4);
  return;
}

