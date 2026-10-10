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
undefined4 func_0x0221c394() __asm__("sub_0221C394");
undefined4 func_0x0221c3c0() __asm__("sub_0221C3C0");
undefined4 sub_0200602C();
undefined4 ov12_02261B80();
undefined4 ov12_022643C8();
undefined4 BattleSystem_GetSpriteSystem();
undefined4 func_0x02233db8() __asm__("sub_02233DB8");
undefined4 ov12_02261CA8();
undefined4 ov12_0223A8DC();
undefined4 BattleSystem_GetPaletteData();
undefined4 Pokepic_StartPaletteFade();
undefined4 func_0x0223494c() __asm__("sub_0223494C");
undefined4 func_0x0221c3b0() __asm__("sub_0221C3B0");
extern undefined ov12_0226D141;
extern undefined ov12_0226D120;
undefined4 func_0x02233e88() __asm__("sub_02233E88");
undefined4 SysTask_Destroy();
undefined4 ov12_0226430C();
undefined4 Pokepic_GetAttr();
undefined4 Pokepic_AddAttr();
undefined4 func_0x02233ecc() __asm__("sub_02233ECC");
undefined4 func_0x02008780() __asm__("sub_02008780");
undefined4 func_0x0200914c() __asm__("sub_0200914C");
undefined4 Pokepic_ResumePaletteFade();
undefined4 Heap_Free();

void ov12_0225C9BC(undefined4 param_1,undefined4 *param_2)

{
  byte bVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 auStack_178 [7];
  undefined4 uStack_15c;
  undefined4 uStack_158;
  uint uStack_154;
  uint uStack_150;
  undefined4 uStack_14c;
  undefined4 uStack_148;
  undefined4 uStack_144;
  undefined4 uStack_140;
  uint auStack_138 [4];
  uint uStack_128;
  undefined4 uStack_124;
  undefined4 uStack_120;
  undefined4 uStack_11c;
  undefined4 uStack_118;
  undefined1 auStack_110 [88];
  undefined1 auStack_b8 [80];
  undefined1 auStack_68 [88];

  uVar2 = ov12_0223A8DC(*param_2);
  switch(*(undefined1 *)((int)param_2 + 0x6b)) {
  case 0:
    if (param_2[0x1c] == 0) {
      *(undefined1 *)((int)param_2 + 0x6b) = 4;
      return;
    }
    ov12_022643C8(*param_2,0,auStack_68,1,0xf,*(undefined1 *)((int)param_2 + 0x69),
                  *(undefined1 *)((int)param_2 + 0x69),0);
    ov12_02261B80(*param_2,param_2[1],uVar2,auStack_68);
    *(char *)((int)param_2 + 0x6b) = *(char *)((int)param_2 + 0x6b) + '\x01';
    return;
  case 1:
  case 3:
    func_0x0221c394();
    iVar3 = func_0x0221c3b0(uVar2);
    if (iVar3 == 0) {
      func_0x0221c3c0(uVar2);
      *(char *)((int)param_2 + 0x6b) = *(char *)((int)param_2 + 0x6b) + '\x01';
      return;
    }
    break;
  case 2:
    ov12_02261CA8(*param_2,param_2 + 4,auStack_b8,*(undefined1 *)((int)param_2 + 0x69));
    func_0x0223494c(auStack_b8,5);
    ov12_022643C8(*param_2,0,auStack_110,1,0x10,*(undefined1 *)((int)param_2 + 0x69),
                  *(undefined1 *)((int)param_2 + 0x69),0);
    ov12_02261B80(*param_2,param_2[1],uVar2,auStack_110);
    *(undefined4 *)(param_2[1] + 0x1a0) = 0;
    *(char *)((int)param_2 + 0x6b) = *(char *)((int)param_2 + 0x6b) + '\x01';
    return;
  case 4:
    bVar1 = *(byte *)((int)param_2 + 0x6a);
    if ((bVar1 & 1) == 0) {
      auStack_178[0] = 0;
      auStack_178[1] = 1;
      auStack_178[2] = 2;
      auStack_178[3] = 3;
      auStack_178[4] = 4;
      auStack_178[5] = 5;
      auStack_178[6] = auStack_178[bVar1];
      uStack_15c = 5;
      uStack_158 = 5;
      uStack_154 = (uint)*(byte *)((int)param_2 + 0x69);
      uStack_150 = (uint)*(ushort *)((int)param_2 + 0x6e);
      uStack_144 = BattleSystem_GetSpriteSystem(*param_2,5,auStack_178 + 6,ov12_0226D141);
      uStack_140 = BattleSystem_GetPaletteData(*param_2);
      uStack_14c = 1;
      uStack_148 = 0;
      uVar2 = func_0x02233db8(auStack_178 + 6);
    }
    else {
      auStack_138[0] = (uint)(byte)(&ov12_0226D120)[bVar1];
      auStack_138[1] = 5;
      auStack_138[2] = 5;
      auStack_138[3] = (uint)*(byte *)((int)param_2 + 0x69);
      uStack_128 = (uint)*(ushort *)((int)param_2 + 0x6e);
      uStack_11c = BattleSystem_GetSpriteSystem(*param_2);
      uStack_118 = BattleSystem_GetPaletteData(*param_2);
      uStack_124 = 1;
      uStack_120 = 0;
      uVar2 = func_0x02233db8(auStack_138);
    }
    param_2[3] = uVar2;
    *(undefined1 *)((int)param_2 + 0x6b) = 5;
    Pokepic_StartPaletteFade
              (param_2[2],0,0x10,0,
               *(undefined2 *)((uint)*(ushort *)((int)param_2 + 0x6e) * 2 + 0x226d15a));
    switch(*(undefined1 *)((int)param_2 + 0x6a)) {
    case 0:
    case 2:
    case 4:
      sub_0200602C(0x706,0xffffff8b);
      return;
    case 1:
    case 3:
    case 5:
      sub_0200602C(0x706,0x75);
      return;
    }
    break;
  case 5:
    iVar3 = Pokepic_ResumePaletteFade(param_2[2]);
    if (iVar3 == 0) {
      *(char *)((int)param_2 + 0x6b) = *(char *)((int)param_2 + 0x6b) + '\x01';
      return;
    }
    break;
  case 6:
    Pokepic_AddAttr(param_2[2],0xc,0xffffffe0);
    Pokepic_AddAttr(param_2[2],0xd,0xffffffe0);
    func_0x0200914c(param_2[2],*(undefined1 *)(param_2 + 0x1b));
    iVar3 = Pokepic_GetAttr(param_2[2],0xc);
    if (iVar3 < 1) {
      func_0x02008780(param_2[2]);
      *(undefined1 *)((int)param_2 + 0x6b) = 7;
      return;
    }
    break;
  case 7:
    iVar3 = func_0x02233e88(param_2[3]);
    if (iVar3 == 0) {
      func_0x02233ecc(param_2[3]);
      *(undefined1 *)((int)param_2 + 0x6b) = 8;
      return;
    }
    break;
  case 8:
    ov12_0226430C(*param_2,*(undefined1 *)((int)param_2 + 0x69),*(undefined1 *)(param_2 + 0x1a));
    Heap_Free(param_2);
    SysTask_Destroy(param_1);
  }
  return;
}

