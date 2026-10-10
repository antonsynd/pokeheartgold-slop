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
undefined4 PaletteData_Init();
undefined4 HBlankInterruptDisable();
undefined4 NARC_New();
undefined4 BgConfig_Alloc();
undefined4 PaletteData_AllocBuffers();
undefined4 sub_02026E8C();
undefined4 AllocWindows();
undefined4 Heap_Alloc();
undefined4 OverlayManager_GetData();
undefined4 OverlayManager_GetArgs();
undefined4 MessagePrinter_New();
undefined4 func_0x020d4790() __asm__("sub_020D4790");
undefined4 GetSubBgPlttAddr();
undefined4 ov12_02239644();
undefined4 FontID_Alloc();
undefined4 sub_02026E9C();
undefined4 GF_CreateVramTransferManager();
undefined4 PaletteData_SetAutoTransparent();
undefined4 GetMainBgPlttAddr();
undefined4 ov12_0223BFC0();
undefined4 SpriteSystem_InitManagerWithCapacities();
undefined4 FillWindowPixelBuffer();
undefined4 func_0x0200cf6c() __asm__("sub_0200CF6C");
undefined4 NARC_Delete();
undefined4 BattleInput_NewInit();
undefined4 func_0x02009fe8() __asm__("sub_02009FE8");
undefined4 DrawFrameAndWindow2();
undefined4 SpriteManager_New();
undefined4 SpriteSystem_Init();
undefined4 BattleSystem_GetTrainerGender();
undefined4 func_0x0200a080() __asm__("sub_0200A080");
undefined4 SpriteSystem_Alloc();
undefined4 SpriteSystem_InitSprites();
undefined4 ov12_022387AC();
undefined4 AddWindowParameterized();
extern undefined ov12_0226C018;
extern undefined ov12_0226C060;
extern undefined ov12_0226C02C;
undefined4 ov12_022389B8();
undefined4 BattleSystem_HpBar_Init();
undefined4 NewMsgDataFromNarc();
undefined4 func_0x0200335c() __asm__("sub_0200335C");
undefined4 PokepicManager_SetPlttBaseAddrAndSize();
undefined4 MessageFormat_New();
undefined4 BattleInput_LoadBallGaugeResources();
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 func_0x0221bedc() __asm__("sub_0221BEDC");
undefined4 ov12_022396F0();
undefined4 String_New();
undefined4 sub_020210BC();
undefined4 PokepicManager_Create();
undefined4 sub_02021148();
undefined4 func_0x02003d5c() __asm__("sub_02003D5C");
undefined4 BattleInput_LoadDefaultResources();
undefined4 ov12_0223B52C();
undefined4 BattleInput_ChangeMenu();
undefined4 func_0x020d47b8() __asm__("sub_020D47B8");
undefined4 SysTask_CreateOnMainQueue();
undefined4 sub_020163E0();
undefined4 SysTask_CreateOnVBlankQueue();
undefined4 BattleSystem_GetBagCursor();
undefined4 BagCursor_Battle_Init();
undefined4 func_0x02020654() __asm__("sub_02020654");
undefined4 ov12_0223A620();
undefined4 sub_0201649C();
undefined4 sub_02016EDC();
extern undefined ov12_0226C1C8;

void ov12_02237F18(undefined4 param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  int iVar7;
  int iVar8;

  puVar1 = (undefined4 *)OverlayManager_GetData();
  iVar2 = OverlayManager_GetArgs(param_1);
  uVar3 = sub_02026E8C();
  uVar4 = GetMainBgPlttAddr();
  func_0x020d4790(0,uVar4,uVar3);
  uVar3 = sub_02026E9C();
  uVar4 = GetSubBgPlttAddr();
  func_0x020d4790(0,uVar4,uVar3);
  uVar3 = ov12_02239644();
  *puVar1 = uVar3;
  HBlankInterruptDisable();
  FontID_Alloc(4,5);
  uVar3 = MessagePrinter_New(0xe,2,0xf,5);
  puVar1[0x6a] = uVar3;
  puVar1[0x6b] = puVar1[0x6a];
  uVar3 = PaletteData_Init(5);
  puVar1[10] = uVar3;
  PaletteData_SetAutoTransparent(uVar3,1);
  PaletteData_AllocBuffers(puVar1[10],0,0x200,5);
  PaletteData_AllocBuffers(puVar1[10],1,0x200,5);
  PaletteData_AllocBuffers(puVar1[10],2,0x1c0,5);
  PaletteData_AllocBuffers(puVar1[10],3,0x200,5);
  uVar3 = BgConfig_Alloc(5);
  puVar1[1] = uVar3;
  uVar3 = AllocWindows(5,3);
  puVar1[2] = uVar3;
  iVar8 = 0;
  puVar6 = puVar1;
  do {
    uVar3 = Heap_Alloc(5,0xc80);
    puVar6[0x74] = uVar3;
    iVar8 = iVar8 + 1;
    puVar6 = puVar6 + 4;
  } while (iVar8 < 4);
  GF_CreateVramTransferManager(0x40,5);
  uVar3 = NARC_New(7,5);
  uVar4 = NARC_New(8,5);
  uVar5 = ov12_0223BFC0(puVar1);
  uVar5 = BattleSystem_GetTrainerGender(puVar1,uVar5);
  uVar5 = BattleInput_NewInit(uVar3,uVar4,puVar1,uVar5,puVar1[0x70]);
  puVar1[0x67] = uVar5;
  NARC_Delete(uVar3);
  NARC_Delete(uVar4);
  ov12_022387AC(puVar1,puVar1[1]);
  AddWindowParameterized(puVar1[1],puVar1[2],1,2,0x13,0x1b,4,0xb,0x1f);
  FillWindowPixelBuffer(puVar1[2],0xff);
  DrawFrameAndWindow2(puVar1[2],0,1,10);
  uVar3 = SpriteSystem_Alloc(5);
  puVar1[0x24] = uVar3;
  SpriteSystem_Init(puVar1[0x24],&ov12_0226C060,&ov12_0226C018,0x20);
  func_0x02009fe8(1,0x100010);
  func_0x0200a080(1);
  uVar3 = SpriteManager_New(puVar1[0x24]);
  puVar1[0x25] = uVar3;
  SpriteSystem_InitSprites(puVar1[0x24],puVar1[0x25],0x80);
  SpriteSystem_InitManagerWithCapacities(puVar1[0x24],puVar1[0x25],&ov12_0226C02C);
  uVar3 = func_0x0200cf6c(puVar1[0x24]);
  G2dRenderer_SetSubSurfaceCoords(uVar3,0,0x110000);
  BattleInput_LoadDefaultResources(puVar1[0x67]);
  uVar3 = NARC_New(7,5);
  uVar4 = NARC_New(8,5);
  BattleInput_ChangeMenu(uVar3,uVar4,puVar1[0x67],0,1,0);
  BattleInput_LoadBallGaugeResources(uVar4,puVar1[0x67]);
  NARC_Delete(uVar3);
  NARC_Delete(uVar4);
  uVar3 = PokepicManager_Create(5);
  puVar1[0x22] = uVar3;
  PokepicManager_SetPlttBaseAddrAndSize(puVar1[0x22],0,0xc0);
  BattleSystem_HpBar_Init(puVar1);
  ov12_022396F0();
  uVar3 = func_0x0221bedc(5);
  puVar1[0x23] = uVar3;
  ov12_022389B8(puVar1);
  sub_020210BC();
  sub_02021148(4);
  uVar3 = NewMsgDataFromNarc(1,0x1b,0xc5,5);
  puVar1[3] = uVar3;
  uVar3 = NewMsgDataFromNarc(1,0x1b,3,5);
  puVar1[4] = uVar3;
  uVar3 = MessageFormat_New(5);
  puVar1[5] = uVar3;
  uVar3 = String_New(0x140,5);
  puVar1[6] = uVar3;
  uVar3 = func_0x0200335c(puVar1[10],0);
  func_0x020d47b8(uVar3,puVar1 + 0x88a,0xe0);
  uVar3 = func_0x0200335c(puVar1[10],2);
  func_0x020d47b8(uVar3,puVar1 + 0x8c2,0xe0);
  iVar8 = ov12_0223B52C(puVar1);
  iVar8 = iVar8 * 4;
  func_0x02003d5c(puVar1[10],0,2,*(uint *)(&ov12_0226C1C8 + iVar8 + puVar1[0x901] * 0xc) & 0xffff,0,
                  0x70);
  func_0x02003d5c(puVar1[10],0,2,*(uint *)(&ov12_0226C1C8 + iVar8 + puVar1[0x901] * 0xc) & 0xffff,
                  0xc0,0x100);
  func_0x02003d5c(puVar1[10],2,2,*(uint *)(&ov12_0226C1C8 + iVar8 + puVar1[0x901] * 0xc) & 0xffff,0,
                  0xdf);
  func_0x02003d5c(puVar1[10],0,0,0,0xa0,0xc0);
  func_0x02003d5c(puVar1[10],1,0,0,0,0xff);
  func_0x02003d5c(puVar1[10],3,0,0xffff,0,0xff);
  uVar3 = sub_020163E0(puVar1[10],0,0xb,5);
  puVar1[0x6c] = uVar3;
  sub_0201649C(puVar1[0x6c],1);
  uVar3 = SysTask_CreateOnMainQueue(0x2239811,puVar1,60000);
  puVar1[7] = uVar3;
  uVar3 = SysTask_CreateOnMainQueue(0x2239855,puVar1,50000);
  puVar1[8] = uVar3;
  uVar3 = SysTask_CreateOnVBlankQueue(0x223998d,puVar1,0x4b0);
  puVar1[9] = uVar3;
  puVar1[0x90e] = 0xffffffcd;
  ov12_0223A620(puVar1);
  BattleSystem_GetBagCursor(puVar1);
  BagCursor_Battle_Init();
  uVar3 = sub_02016EDC(5,4,0);
  puVar1[0x72] = uVar3;
  uVar3 = func_0x02020654(4,5);
  puVar1[0x73] = uVar3;
  if ((puVar1[0x903] & 0x10) != 0) {
    iVar8 = 0;
    do {
      iVar7 = iVar8 + 1;
      *(undefined1 *)((int)puVar1 + iVar8 + 0x2484) = *(undefined1 *)(iVar2 + iVar8 + 0x1bc);
      iVar8 = iVar7;
    } while (iVar7 < 4);
  }
  return;
}

