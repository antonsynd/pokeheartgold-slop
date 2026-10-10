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
undefined4 ov97_0221EEA4();
undefined4 ov97_0221E7F4();
undefined4 sub_02093440();
undefined4 BgConfig_Alloc();
undefined4 sub_0203A994();
undefined4 FontID_Alloc();
undefined4 OverlayManager_CreateAndGetData();
undefined4 LoadFontPal0();
undefined4 OverlayManager_GetArgs();
undefined4 ov97_0221E864();
undefined4 ResetAllTextPrinters();
undefined4 SaveArray_PCStorage_Get();
undefined4 ov97_0221E814();
undefined4 ov97_0221E834();
undefined4 ov97_0221EE84();
undefined4 sub_020932E0();
undefined4 Main_SetVBlankIntrCB();
undefined4 SaveArray_Party_Get();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");

undefined4 ov97_0221E700(undefined4 param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 *puVar6;

  piVar1 = (int *)OverlayManager_GetArgs();
  puVar6 = (undefined4 *)*piVar1;
  puVar2 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x34,0x5c);
  func_0x020e5b44(puVar2,0,0x34);
  uVar3 = BgConfig_Alloc(0x5c);
  *puVar2 = uVar3;
  puVar2[0xb] = *puVar6;
  puVar2[0xc] = piVar1[0x21];
  ov97_0221E7F4();
  uVar3 = sub_020932E0(0x5c,3,0x13);
  puVar2[2] = uVar3;
  uVar3 = ov97_0221EE84(0x5c);
  puVar2[3] = uVar3;
  ov97_0221E814(*puVar2);
  ov97_0221E834();
  ov97_0221E864(puVar2);
  iVar4 = *(int *)(*piVar1 + 4);
  uVar3 = SaveArray_PCStorage_Get(*puVar6);
  uVar5 = SaveArray_Party_Get(*puVar6);
  sub_02093440(puVar2[2],*puVar2,uVar3,uVar5,0,0,iVar4 == 0,0x12,0x221e91d,0x221e97d,puVar2 + 4,
               0x221ec15,puVar2);
  sub_0203A994(2);
  ov97_0221EEA4(puVar2[3],*puVar2,puVar2[0xc] & 0xff,*(undefined1 *)((int)puVar6 + 0xf));
  Main_SetVBlankIntrCB(0x221e88d,puVar2);
  puVar2[1] = 0;
  ResetAllTextPrinters();
  LoadFontPal0(0,0x1e0,0x5c);
  FontID_Alloc(2,0x5c);
  return 1;
}

