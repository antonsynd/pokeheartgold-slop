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
undefined4 ov96_021EAA04();
undefined4 ov96_022164EC();
undefined4 ov96_021E8BB4();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov96_021E8BB0();
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");
undefined4 TintPalette_GrayScale();
undefined4 ov96_021EAA20();

void ov96_02217544(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6)

{
  char cVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  char cVar5;
  int iVar6;
  undefined4 *puStack_30;
  int iStack_1c;

  *param_1 = param_4;
  param_1[1] = param_2;
  param_1[2] = param_3;
  uVar2 = ov96_022164EC(param_2,param_3,0x80,0x10,3,1);
  param_1[3] = uVar2;
  iStack_1c = 0;
  puStack_30 = param_1 + 4;
  cVar1 = '\0';
  do {
    uVar2 = ov96_021EAA04(param_5,cVar1);
    iVar6 = 0;
    *puStack_30 = uVar2;
    puVar3 = puStack_30 + 7;
    puVar4 = puStack_30 + 0xf;
    cVar5 = cVar1;
    do {
      ov96_021EAA04(param_5,cVar5);
      ov96_021EAA20();
      uVar2 = ov96_021E8BB0();
      ov96_021E8BB4(uVar2,param_6,puVar3);
      func_0x020d4a50(puVar3,puVar4,0x20);
      TintPalette_GrayScale(puVar4,0x10);
      iVar6 = iVar6 + 1;
      cVar5 = cVar5 + '\x01';
      puVar3 = puVar3 + 0x10;
      puVar4 = puVar4 + 0x10;
    } while (iVar6 < 3);
    uVar2 = ov96_022164EC(param_2,param_3,0,0,7,3);
    puStack_30[5] = uVar2;
    ManagedSprite_SetDrawFlag(uVar2,0);
    uVar2 = ov96_022164EC(param_2,param_3,0,0,1,5);
    puStack_30[2] = uVar2;
    ManagedSprite_SetDrawFlag(uVar2,0);
    uVar2 = ov96_022164EC(param_2,param_3,0,0,0xb,4);
    puStack_30[1] = uVar2;
    ManagedSprite_SetDrawFlag(uVar2,0);
    uVar2 = ov96_022164EC(param_2,param_3,0,0,0x15,6);
    puStack_30[3] = uVar2;
    ManagedSprite_SetDrawFlag(uVar2,0);
    uVar2 = ov96_022164EC(param_2,param_3,0,0,8,2);
    puStack_30[4] = uVar2;
    ManagedSprite_SetDrawFlag(uVar2,0);
    puStack_30 = puStack_30 + 0x3a;
    cVar1 = cVar1 + '\x03';
    iStack_1c = iStack_1c + 1;
  } while (iStack_1c < 4);
  return;
}

