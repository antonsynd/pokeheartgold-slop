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
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ManagedSprite_SetAnimateFlag();
undefined4 func_0x0200d740() __asm__("sub_0200D740");
undefined4 func_0x0200dd68() __asm__("sub_0200DD68");
undefined4 func_0x0200df98() __asm__("sub_0200DF98");
undefined4 func_0x0200dd10() __asm__("sub_0200DD10");
undefined4 ov112_021EA984();
undefined4 SpriteSystem_NewSprite();
undefined4 func_0x0200dd54() __asm__("sub_0200DD54");
extern undefined ov112_021FEC88;

void ov112_021EA3C0(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  undefined *puVar4;
  int iStack_18;
  
  puVar4 = &ov112_021FEC88;
  uVar3 = 0;
  iStack_18 = 0x21fed1c;
  iVar2 = param_1;
  do {
    uVar1 = func_0x0200d740(*(undefined4 *)(param_1 + 0x1e528),*(undefined4 *)(param_1 + 0x1e52c),
                            iStack_18,0x100000);
    *(undefined4 *)(iVar2 + 0x1e530) = uVar1;
    func_0x0200dd10(*(undefined4 *)(iVar2 + 0x1e530),*puVar4);
    ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar2 + 0x1e530),0);
    uVar3 = uVar3 + 1;
    iStack_18 = iStack_18 + 0x34;
    iVar2 = iVar2 + 4;
    puVar4 = puVar4 + 1;
  } while (uVar3 < 0x11);
  func_0x0200dd54(*(undefined4 *)(param_1 + 0x1e534),2);
  if (uVar3 < 0x75) {
    iVar2 = param_1 + uVar3 * 4;
    do {
      uVar1 = SpriteSystem_NewSprite
                        (*(undefined4 *)(param_1 + 0x1e528),*(undefined4 *)(param_1 + 0x1e52c),
                         0x21ff028);
      *(undefined4 *)(iVar2 + 0x1e530) = uVar1;
      func_0x0200dd10(*(undefined4 *)(iVar2 + 0x1e530),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar2 + 0x1e530),0);
      func_0x0200dd54(*(undefined4 *)(iVar2 + 0x1e530),2);
      uVar3 = uVar3 + 1;
      iVar2 = iVar2 + 4;
    } while (uVar3 < 0x75);
  }
  if (uVar3 < 0xd9) {
    iVar2 = param_1 + uVar3 * 4;
    do {
      uVar1 = func_0x0200d740(*(undefined4 *)(param_1 + 0x1e528),*(undefined4 *)(param_1 + 0x1e52c),
                              0x21ff05c,0x100000);
      *(undefined4 *)(iVar2 + 0x1e530) = uVar1;
      func_0x0200dd10(*(undefined4 *)(iVar2 + 0x1e530),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar2 + 0x1e530),0);
      func_0x0200dd54(*(undefined4 *)(iVar2 + 0x1e530),2);
      uVar3 = uVar3 + 1;
      iVar2 = iVar2 + 4;
    } while (uVar3 < 0xd9);
  }
  ov112_021EA984(param_1);
  func_0x0200dd68(*(undefined4 *)(param_1 + 0x1e550),2);
  func_0x0200df98(*(undefined4 *)(param_1 + 0x1e550),1);
  ManagedSprite_SetAnimateFlag(*(undefined4 *)(param_1 + 0x1e53c),1);
  ManagedSprite_SetAnimateFlag(*(undefined4 *)(param_1 + 0x1e540),1);
  return;
}

