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
undefined4 ov07_0221C514();
undefined4 func_0x02024b34() __asm__("sub_02024B34");
undefined4 ov07_0221FA78();
undefined4 Heap_Alloc();
undefined4 ov07_0221C4E8();
undefined4 ov07_0221BFD0();
undefined4 ov07_0221FA90();
undefined4 ov07_02231E08();
undefined4 func_0x0200e0fc() __asm__("sub_0200E0FC");
undefined4 ov07_0221C468();
undefined4 ov07_0221FA80();
undefined4 ov07_0223192C();
undefined4 func_0x0200dd54() __asm__("sub_0200DD54");
undefined4 ov07_0221FAE8();
undefined4 func_0x02022808() __asm__("sub_02022808");
undefined4 func_0x0200dd68() __asm__("sub_0200DD68");
undefined4 ov07_0221FA48();
undefined4 Pokepic_GetAttr();
extern undefined2 uRam04000052 __asm__("sub_04000052");
undefined4 PaletteData_LoadNarc_CustomTint();
undefined4 ov07_0221C410();

void ov07_02227D1C(undefined4 param_1)

{
  undefined2 uVar1;
  short sVar2;
  undefined4 uVar3;
  undefined1 *puVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  uint uVar8;
  undefined4 uVar9;
  undefined1 *puVar10;
  int iVar11;
  
  uVar3 = ov07_0221BFD0();
  puVar4 = (undefined1 *)Heap_Alloc(uVar3,0xb8);
  puVar4[1] = 0;
  *puVar4 = 0;
  *(undefined4 *)(puVar4 + 0xc) = param_1;
  uVar3 = ov07_0221C468();
  uVar3 = ov07_0221FA48(*(undefined4 *)(puVar4 + 0xc),uVar3);
  *(undefined4 *)(puVar4 + 0x10) = uVar3;
  uVar1 = Pokepic_GetAttr(uVar3,0);
  *(undefined2 *)(puVar4 + 8) = uVar1;
  uVar1 = Pokepic_GetAttr(*(undefined4 *)(puVar4 + 0x10),1);
  *(undefined2 *)(puVar4 + 10) = uVar1;
  sVar2 = Pokepic_GetAttr(*(undefined4 *)(puVar4 + 0x10),0x29);
  *(short *)(puVar4 + 10) = *(short *)(puVar4 + 10) - sVar2;
  uVar3 = ov07_0221C514(*(undefined4 *)(puVar4 + 0xc));
  *(undefined4 *)(puVar4 + 0x14) = uVar3;
  puVar4[4] = 8;
  puVar4[5] = 6;
  ov07_02231E08(*(undefined4 *)(puVar4 + 0xc),0xffffffff,0xffffffff);
  uRam04000052 = *(undefined2 *)(puVar4 + 4);
  uVar3 = ov07_0221C468(*(undefined4 *)(puVar4 + 0xc));
  uVar3 = ov07_0221FA80(*(undefined4 *)(puVar4 + 0xc),uVar3);
  iVar5 = ov07_0221FAE8(*(undefined4 *)(puVar4 + 0xc));
  uVar6 = ov07_0221C468(*(undefined4 *)(puVar4 + 0xc));
  uVar6 = ov07_0221FA90(*(undefined4 *)(puVar4 + 0xc),uVar6);
  iVar11 = 0;
  puVar10 = puVar4;
  do {
    uVar7 = ov07_0221C4E8(*(undefined4 *)(puVar4 + 0xc),iVar11);
    *(undefined4 *)(puVar10 + 0x18) = uVar7;
    func_0x0200e0fc(uVar7,1);
    iVar11 = iVar11 + 1;
    puVar10 = puVar10 + 4;
  } while (iVar11 < 4);
  uVar7 = ov07_0221C468(*(undefined4 *)(puVar4 + 0xc));
  iVar11 = ov07_0223192C(*(undefined4 *)(puVar4 + 0xc),uVar7);
  if (iVar11 == 3) {
    func_0x0200dd68(*(undefined4 *)(puVar4 + 0x18),10);
    func_0x0200dd68(*(undefined4 *)(puVar4 + 0x1c),10);
    func_0x0200dd68(*(undefined4 *)(puVar4 + 0x20),0x14);
    func_0x0200dd68(*(undefined4 *)(puVar4 + 0x24),0x14);
    func_0x0200dd54(*(undefined4 *)(puVar4 + 0x18),iVar5);
    func_0x0200dd54(*(undefined4 *)(puVar4 + 0x1c),iVar5);
    func_0x0200dd54(*(undefined4 *)(puVar4 + 0x20),iVar5);
    func_0x0200dd54(*(undefined4 *)(puVar4 + 0x24),iVar5);
    uVar7 = func_0x02024b34(**(undefined4 **)(puVar4 + 0x18));
    uVar8 = func_0x02022808(uVar7,1);
    uVar7 = ov07_0221FA78(*(undefined4 *)(puVar4 + 0xc));
    uVar9 = ov07_0221BFD0(param_1);
    PaletteData_LoadNarc_CustomTint
              (uVar7,uVar6,uVar3,uVar9,2,0x20,(uVar8 & 0xfff) << 4,0x80,0x80,0x80);
    uVar7 = func_0x02024b34(**(undefined4 **)(puVar4 + 0x20));
    uVar8 = func_0x02022808(uVar7,1);
    uVar7 = ov07_0221FA78(*(undefined4 *)(puVar4 + 0xc));
    uVar9 = ov07_0221BFD0(param_1);
    PaletteData_LoadNarc_CustomTint
              (uVar7,uVar6,uVar3,uVar9,2,0x20,(uVar8 & 0xfff) << 4,0xc4,0xc4,0xc4);
  }
  else {
    func_0x0200dd68(*(undefined4 *)(puVar4 + 0x18),0x14);
    func_0x0200dd68(*(undefined4 *)(puVar4 + 0x1c),0x14);
    func_0x0200dd68(*(undefined4 *)(puVar4 + 0x20),10);
    func_0x0200dd68(*(undefined4 *)(puVar4 + 0x24),10);
    func_0x0200dd54(*(undefined4 *)(puVar4 + 0x18),iVar5 + 1);
    func_0x0200dd54(*(undefined4 *)(puVar4 + 0x1c),iVar5 + 1);
    func_0x0200dd54(*(undefined4 *)(puVar4 + 0x20),iVar5 + 1);
    func_0x0200dd54(*(undefined4 *)(puVar4 + 0x24),iVar5 + 1);
    func_0x0200dd54(*(undefined4 *)(puVar4 + 0x18),iVar5);
    func_0x0200dd54(*(undefined4 *)(puVar4 + 0x1c),iVar5);
    func_0x0200dd54(*(undefined4 *)(puVar4 + 0x20),iVar5);
    func_0x0200dd54(*(undefined4 *)(puVar4 + 0x24),iVar5);
    uVar7 = func_0x02024b34(**(undefined4 **)(puVar4 + 0x18));
    uVar8 = func_0x02022808(uVar7,1);
    uVar7 = ov07_0221FA78(*(undefined4 *)(puVar4 + 0xc));
    uVar9 = ov07_0221BFD0(param_1);
    PaletteData_LoadNarc_CustomTint
              (uVar7,uVar6,uVar3,uVar9,2,0x20,(uVar8 & 0xfff) << 4,0xc4,0xc4,0xc4);
    uVar7 = func_0x02024b34(**(undefined4 **)(puVar4 + 0x20));
    uVar8 = func_0x02022808(uVar7,1);
    uVar7 = ov07_0221FA78(*(undefined4 *)(puVar4 + 0xc));
    uVar9 = ov07_0221BFD0(param_1);
    PaletteData_LoadNarc_CustomTint
              (uVar7,uVar6,uVar3,uVar9,2,0x20,(uVar8 & 0xfff) << 4,0x80,0x80,0x80);
  }
  ov07_0221C410(*(undefined4 *)(puVar4 + 0xc),0x2227b59,puVar4);
  return;
}

