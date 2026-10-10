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
undefined4 ov18_021F1D98();
undefined4 ov18_021F2424();
undefined4 func_0x0200d740() __asm__("sub_0200D740");
undefined4 ov18_021F1FDC();
undefined4 func_0x0200dd10() __asm__("sub_0200DD10");
undefined4 ov18_021F1E70();
undefined4 ov18_021F17FC();
undefined4 ov18_021F1CB4();
undefined4 func_0x0200d944() __asm__("sub_0200D944");
undefined4 ManagedSprite_SetDrawFlag();
undefined4 func_0x0200dd54() __asm__("sub_0200DD54");
undefined4 ov18_021F1A30();
undefined4 ov18_021F2348();
undefined4 ov18_021F2724();
extern undefined4 ov18_021FAB8C;
extern undefined4 ov18_021FAB58;
extern undefined4 ov18_021FA484;

void ov18_021F3190(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  short *psVar4;
  undefined4 *puVar5;
  short sVar6;
  uint uVar7;
  short asStack_48 [2];
  undefined4 auStack_44 [12];

  psVar4 = asStack_48;
  ov18_021F17FC();
  ov18_021F1CB4(param_1);
  ov18_021F1E70(param_1);
  ov18_021F2724(param_1);
  ov18_021F2348(param_1);
  uVar1 = func_0x0200d740(*(undefined4 *)(param_1 + 0x668),*(undefined4 *)(param_1 + 0x66c),
                          &ov18_021FAB58,0x200000);
  *(undefined4 *)(param_1 + 0x720) = uVar1;
  uVar1 = func_0x0200d740(*(undefined4 *)(param_1 + 0x668),*(undefined4 *)(param_1 + 0x66c),
                          &ov18_021FAB8C,0x200000);
  *(undefined4 *)(param_1 + 0x724) = uVar1;
  ov18_021F1A30(param_1,0x2e);
  ov18_021F1D98(param_1,0x30);
  ov18_021F1FDC(param_1,0x31);
  puVar5 = (undefined4 *)&ov18_021FA484;
  iVar3 = 6;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *(undefined4 *)psVar4 = uVar1;
    *(undefined4 *)((int)psVar4 + 4) = uVar2;
    psVar4 = (short *)((int)psVar4 + 8);
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  sVar6 = 0x4f8;
  *(undefined4 *)psVar4 = *puVar5;
  uVar7 = 0x35;
  iVar3 = param_1 + 0xd4;
  do {
    asStack_48[0] = sVar6 + -0x47c;
    ov18_021F2424(param_1,uVar7,asStack_48);
    uVar1 = func_0x0200d944(*(undefined4 *)(param_1 + 0x66c),0xc55a,2);
    func_0x0200dd10(*(undefined4 *)(iVar3 + 0x670),uVar1);
    uVar7 = uVar7 + 1;
    sVar6 = sVar6 + 0x18;
    iVar3 = iVar3 + 4;
  } while (uVar7 < 0x3b);
  uVar7 = 0x2c;
  param_1 = param_1 + 0xb0;
  do {
    ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x670),0);
    func_0x0200dd54(*(undefined4 *)(param_1 + 0x670),2);
    uVar7 = uVar7 + 1;
    param_1 = param_1 + 4;
  } while (uVar7 < 0x3b);
  return;
}

