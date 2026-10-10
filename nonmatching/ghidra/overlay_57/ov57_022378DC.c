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
undefined4 SealCase_inventory_Get();
undefined4 OverlayManager_CreateAndGetData();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 ov57_0223BB5C();
undefined4 BgConfig_Alloc();
undefined4 GetMonData();
undefined4 Heap_Create();
undefined4 PaletteData_Init();
undefined4 ov57_02237CA8();
undefined4 PaletteData_SetAutoTransparent();
undefined4 func_0x020183f0() __asm__("sub_020183F0");
undefined4 AllocMonZeroed();
undefined4 ov57_02238B28();
undefined4 OverlayManager_GetArgs();
undefined4 SealCase_CountUniqueSeals();
undefined4 GF_CreateVramTransferManager();
undefined4 NARC_New();
undefined4 SealCase_GetCapsuleI();
undefined4 ov57_02237E78();
undefined4 Options_GetFrame();
undefined4 ov57_02237CEC();
undefined4 PaletteData_AllocBuffers();
undefined4 ov57_02239670();
undefined4 ov57_022386F0();
undefined4 ov57_022395B8();
undefined4 ov57_02239058();
undefined4 ov57_02238BCC();
undefined4 ov57_0223BB84();
undefined4 PokepicManager_Create();
undefined4 sub_02016EDC();
undefined4 sub_020210BC();
undefined4 Main_SetVBlankIntrCB();
undefined4 sub_02021148();

undefined4
ov57_022378DC(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  int *piVar7;

  Heap_Create(3,0x34,0x80000,param_4,param_4);
  piVar2 = (int *)OverlayManager_CreateAndGetData(param_1,0x460,0x34);
  func_0x020e5b44(piVar2,0,0x460);
  iVar3 = OverlayManager_GetArgs(param_1);
  *piVar2 = iVar3;
  iVar3 = NARC_New(0xb4,0x34);
  piVar2[0x117] = iVar3;
  iVar3 = func_0x020183f0(*(undefined4 *)(*piVar2 + 0x2c));
  piVar2[0x103] = iVar3;
  iVar3 = AllocMonZeroed(0x34);
  piVar2[0x116] = iVar3;
  piVar2[0x35] = 0xff;
  piVar2[0x112] = 0;
  iVar3 = SealCase_CountUniqueSeals(*(undefined4 *)(*piVar2 + 0x20));
  uVar1 = iVar3 >> 0x1f;
  iVar4 = SealCase_CountUniqueSeals(*(undefined4 *)(*piVar2 + 0x20));
  piVar2[0x113] =
       (uint)((iVar3 * 0x20000000 + uVar1 >> 0x1d | uVar1 << 3) != uVar1) +
       ((int)(iVar4 + ((uint)(iVar4 >> 2) >> 0x1d)) >> 3);
  if (10 < piVar2[0x113]) {
    piVar2[0x113] = 10;
  }
  iVar3 = ov57_02237E78(*piVar2);
  piVar2[0xfb] = iVar3;
  iVar3 = ov57_02237E78(*piVar2);
  piVar2[0xfc] = iVar3;
  iVar3 = SealCase_inventory_Get(*(undefined4 *)(*piVar2 + 0x20));
  piVar2[0x19] = iVar3;
  iVar3 = 0;
  piVar7 = piVar2;
  do {
    iVar4 = SealCase_GetCapsuleI(*(undefined4 *)(*piVar2 + 0x20),iVar3);
    piVar7[1] = 0xff;
    piVar7[2] = iVar4;
    iVar3 = iVar3 + 1;
    piVar7 = piVar7 + 2;
  } while (iVar3 < 0xc);
  iVar3 = 0;
  iVar4 = 0;
  do {
    iVar5 = *(int *)(*piVar2 + iVar4 + 4);
    if ((iVar5 != 0) && (iVar5 = GetMonData(iVar5,0xa2,0), iVar5 != 0)) {
      piVar2[iVar5 * 2 + -1] = iVar3;
    }
    iVar3 = iVar3 + 1;
    iVar4 = iVar4 + 4;
  } while (iVar3 < 6);
  ov57_02237CA8(0x34);
  ov57_0223BB5C();
  iVar3 = ov57_02238B28();
  piVar2[0x96] = iVar3;
  iVar3 = BgConfig_Alloc(0x34);
  piVar2[0x39] = iVar3;
  GF_CreateVramTransferManager(0x40,0x34);
  iVar3 = PaletteData_Init(0x34);
  piVar2[0x3a] = iVar3;
  PaletteData_SetAutoTransparent(piVar2[0x3a],1);
  PaletteData_AllocBuffers(piVar2[0x3a],0,0x200,0x34);
  PaletteData_AllocBuffers(piVar2[0x3a],1,0x200,0x34);
  PaletteData_AllocBuffers(piVar2[0x3a],2,0x200,0x34);
  PaletteData_AllocBuffers(piVar2[0x3a],3,0x200,0x34);
  ov57_02237CEC(piVar2[0x39]);
  ov57_02238BCC();
  iVar3 = PokepicManager_Create(0x34);
  piVar2[0x71] = iVar3;
  iVar3 = sub_02016EDC(0x34,1,0);
  piVar2[0xa1] = iVar3;
  uVar6 = Options_GetFrame(*(undefined4 *)(*piVar2 + 0x24));
  ov57_022395B8(piVar2[0x39],piVar2[0x3a],uVar6);
  ov57_02239670(piVar2[0x39],piVar2[0x3a],uVar6);
  ov57_02239058(piVar2 + 0x35);
  sub_020210BC();
  sub_02021148(4);
  ov57_0223BB84(piVar2);
  Main_SetVBlankIntrCB(0x2237e39,piVar2);
  ov57_022386F0(piVar2);
  return 1;
}

