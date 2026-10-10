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
undefined4 ManagedSprite_SetPositionXY(undefined4, undefined4, undefined4);
undefined4 func_0x0200e0c0(undefined4, undefined4) __asm__("sub_0200E0C0");
undefined4 ov07_0221F9E8(undefined4, undefined4);
undefined4 func_0x0200ded0(undefined4, undefined4, undefined4) __asm__("sub_0200DED0");
undefined4 func_0x0200dd30(undefined4) __asm__("sub_0200DD30");
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 LCRandom(void);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 func_0x0200dd68(undefined4, undefined4) __asm__("sub_0200DD68");
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_0223192C(undefined4, undefined4);
undefined4 ov07_02231FE4(undefined4, undefined4);
undefined4 SpriteSystem_NewSprite(undefined4, undefined4, undefined4);

void ov07_0222ACAC(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iStack_50;
  undefined1 auStack_4c [52];
  undefined4 uStack_18;

  uStack_18 = param_4;
  iVar2 = ov07_022324D8(param_1,0x5c);
  *(undefined2 *)(iVar2 + 0x20) = 10;
  ov07_02231FE4(param_1,iVar2);
  ov07_0221F9E8(auStack_4c,*(undefined4 *)(iVar2 + 4));
  *(undefined4 *)(iVar2 + 0x2c) = param_4;
  *(undefined2 *)(iVar2 + 0x22) = 0;
  iStack_50 = 1;
  sVar1 = 5;
  iVar5 = iVar2;
  iVar6 = iVar2;
  do {
    iVar3 = LCRandom();
    *(ushort *)(iVar6 + 0x24) =
         sVar1 + (((ushort)((uint)(iVar3 * 0x40000000 + (iVar3 >> 0x1f)) >> 0x1e) |
                  (ushort)((iVar3 >> 0x1f) << 2)) - (short)(iVar3 >> 0x1f));
    uVar4 = SpriteSystem_NewSprite
                      (*(undefined4 *)(iVar2 + 8),*(undefined4 *)(iVar2 + 0x10),auStack_4c);
    *(undefined4 *)(iVar5 + 0x30) = uVar4;
    sVar1 = sVar1 + 5;
    iStack_50 = iStack_50 + 1;
    iVar5 = iVar5 + 4;
    iVar6 = iVar6 + 2;
  } while (iStack_50 < 4);
  func_0x0200e0c0(*(undefined4 *)(iVar2 + 0x30),1);
  func_0x0200e0c0(*(undefined4 *)(iVar2 + 0x34),1);
  uVar4 = ov07_0221C468(param_1);
  uVar4 = ov07_0221FA48(param_1,uVar4);
  sVar1 = Pokepic_GetAttr(uVar4,0);
  Pokepic_GetAttr(uVar4,1);
  Pokepic_GetAttr(uVar4,0x29);
  uVar4 = ov07_0221C468(param_1);
  iVar5 = ov07_0223192C(param_1,uVar4);
  if (iVar5 == 3) {
    uVar4 = 0x8c;
  }
  else {
    uVar4 = 0x54;
  }
  iVar6 = 0;
  iVar5 = iVar2;
  do {
    ManagedSprite_SetPositionXY(*(undefined4 *)(iVar5 + 0x2c),(int)sVar1,uVar4);
    iVar6 = iVar6 + 1;
    iVar5 = iVar5 + 4;
  } while (iVar6 < 4);
  uVar4 = ov07_0221C468(param_1);
  iVar5 = ov07_0223192C(param_1,uVar4);
  if (iVar5 == 3) {
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x2c),10);
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x34),10);
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x30),0x12);
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x38),0x12);
  }
  else {
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x2c),0x12);
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x34),0x12);
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x30),10);
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x38),10);
  }
  func_0x0200ded0(*(undefined4 *)(iVar2 + 0x2c),0xffffffe0,0);
  func_0x0200ded0(*(undefined4 *)(iVar2 + 0x38),0xffffffd8,4);
  func_0x0200ded0(*(undefined4 *)(iVar2 + 0x34),0x20,0);
  func_0x0200ded0(*(undefined4 *)(iVar2 + 0x30),0x28,4);
  uVar4 = func_0x0200dd30(*(undefined4 *)(iVar2 + 0x2c));
  *(undefined4 *)(iVar2 + 0x1c) = uVar4;
  ov07_0221C410(*(undefined4 *)(iVar2 + 4),0x222aa21,iVar2);
  return;
}

