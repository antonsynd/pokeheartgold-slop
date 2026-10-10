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
undefined4 ManagedSprite_SetAnimateFlag(undefined4, undefined4);
undefined4 func_0x0200df98(undefined4, undefined4) __asm__("sub_0200DF98");
undefined4 func_0x0200e0fc(undefined4, undefined4) __asm__("sub_0200E0FC");
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_02222004(undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_0222202C(undefined4, undefined4);
undefined4 ov07_02222508(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_02222268(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x0200dd54(undefined4, undefined4) __asm__("sub_0200DD54");
undefined4 func_0x020cf15c(undefined4, undefined4, undefined4, undefined4, undefined4) __asm__("sub_020CF15C");
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 func_0x0200dd68(undefined4, undefined4) __asm__("sub_0200DD68");

void ov07_0222DD20(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  undefined2 uVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  int iVar6;
  uint uVar7;
  
  puVar4 = (undefined4 *)ov07_022324D8(param_1,0xb8);
  *puVar4 = param_1;
  puVar4[1] = param_2;
  puVar4[2] = param_3;
  uVar5 = ov07_0221C468(*puVar4);
  sVar1 = ov07_02222004(*puVar4,uVar5);
  uVar5 = ov07_0221C468(*puVar4);
  iVar6 = ov07_0222202C(*puVar4,uVar5);
  uVar5 = ov07_0221C468(param_1);
  uVar5 = ov07_0221FA48(*puVar4,uVar5);
  puVar4[4] = uVar5;
  sVar2 = Pokepic_GetAttr(uVar5,0);
  uVar3 = Pokepic_GetAttr(puVar4[4],1);
  ov07_02222508(puVar4 + 5,10,10,0xf,0xc);
  puVar4[0xf] = param_4;
  ManagedSprite_SetAnimateFlag(param_4,1);
  func_0x0200df98(puVar4[0xf],2);
  func_0x0200e0fc(puVar4[0xf],1);
  func_0x0200dd68(puVar4[0xf],100);
  func_0x0200dd54(puVar4[0xf],1);
  *(short *)(puVar4 + 0x2d) = sVar2 + sVar1 * 0x20;
  *(undefined2 *)((int)puVar4 + 0xb6) = uVar3;
  if (iVar6 < 0) {
    uVar7 = 7;
  }
  else {
    uVar7 = 0x17;
  }
  ov07_02222268(puVar4 + 0x1a,0,0,0,(int)(iVar6 * ~uVar7 * 0x10000) >> 0x10,0x20);
  ov07_02222508(puVar4 + 0x11,5,10,0xc,0x20);
  func_0x020cf15c(0x4000050,0,0x3f,0x1f,0x1a);
  ov07_0221C410(*puVar4,0x222dcd9,puVar4);
  return;
}

