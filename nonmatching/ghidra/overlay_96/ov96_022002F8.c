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
undefined4 GfGfxLoader_GXLoadPal();
undefined4 ov96_021EB588();
undefined4 ov96_021EB52C();
undefined4 NARC_New();
undefined4 func_0x020b70f4() __asm__("sub_020B70F4");
undefined4 Heap_AllocAtEnd();
undefined4 ov96_022004B4();
undefined4 NARC_Delete();
undefined4 GetMonIconPaletteEx();
undefined4 GetMonIconNaixEx();
undefined4 sub_02074490();
undefined4 NARC_ReadWholeMember();

void ov96_022002F8(undefined4 *param_1,undefined2 *param_2)

{
  ushort uVar1;
  undefined2 uVar2;
  char cVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  uint uVar7;
  int iVar8;
  undefined4 *puStack_28;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uVar4 = NARC_New(0x14,*param_1);
  uVar5 = sub_02074490();
  GfGfxLoader_GXLoadPal(0x14,uVar5,5,0x20,0x60,*param_1);
  puStack_28 = param_1 + 0x3b;
  iVar8 = 0;
  puVar6 = param_1;
  do {
    uVar5 = Heap_AllocAtEnd(*param_1,0x1000);
    puVar6[0x2f] = uVar5;
    uVar1 = param_2[1];
    uVar2 = *param_2;
    uVar5 = GetMonIconNaixEx(uVar2,0,uVar1 & 0xff);
    NARC_ReadWholeMember(uVar4,uVar5,puVar6[0x2f]);
    func_0x020b70f4(puVar6[0x2f],puStack_28);
    cVar3 = GetMonIconPaletteEx(uVar2,uVar1 & 0xff,0);
    *(char *)((int)param_1 + iVar8 + 0x11c) = cVar3 + '\x01';
    iVar8 = iVar8 + 1;
    puStack_28 = puStack_28 + 1;
    puVar6 = puVar6 + 1;
    param_2 = param_2 + 2;
  } while (iVar8 < 0xc);
  NARC_Delete(uVar4);
  uVar7 = 0;
  puVar6 = param_1;
  do {
    ov96_022004B4(param_1,uVar7 & 0xff,0);
    ov96_021EB52C(puVar6[0x12],1,1);
    ov96_021EB52C(puVar6[0x15],1,1);
    uStack_18 = 0;
    uStack_20 = 0xa0000;
    uStack_1c = 0x2b0000;
    ov96_021EB588(puVar6[0x12],&uStack_20);
    ov96_021EB588(puVar6[0x15],&uStack_20);
    uVar7 = uVar7 + 1;
    puVar6 = puVar6 + 8;
  } while ((int)uVar7 < 4);
  return;
}

