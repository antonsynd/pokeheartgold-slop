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
undefined4 HBlankInterruptDisable(void);
void * OverlayManager_GetArgs(void *);
undefined4 sub_02016EDC();
undefined4 Heap_Create(int, int, unsigned int);
undefined4 GfGfx_DisableEngineAPlanes(void);
void * memset(void *, int, unsigned int);
undefined4 GfGfx_DisableEngineBPlanes(void);
void * BgConfig_Alloc(int);
undefined4 FontID_SetAccessDirect(unsigned char, int);
undefined4 Main_SetVBlankIntrCB(void *, void *);
undefined4 SetKeyRepeatTimers(int, int);
void * OverlayManager_CreateAndGetData(void *, unsigned int, int);
void * NARC_New(int, int);
extern uint  uRam04000000 __asm__("sub_04000000");
extern unsigned short uRam04000050 __asm__("sub_04000050");
extern unsigned short uRam04001050 __asm__("sub_04001050");
extern uint  uRam04001000 __asm__("sub_04001000");
undefined4 sub_02088610();
undefined4 sub_0208B2C0();
undefined4 sub_0208DE40(void);
undefined4 sub_0208BECC();
undefined4 FontID_Alloc(unsigned char, int);
undefined4 sub_020889D0();
undefined4 sub_0208B1AC();
undefined4 sub_0208B4EC();
undefined4 sub_020887C4();
undefined4 sub_02088894();
undefined4 sub_02021148(int);
undefined4 sub_0208C3E4();
undefined4 sub_0208E3AC(void *);
undefined4 sub_02088630();
undefined4 sub_0208887C();
undefined4 sub_02089CB4();
undefined4 sub_020210BC(void);
undefined4 sub_0208B48C();
undefined4 sub_020897C0();
undefined4 NARC_Delete(void *);
undefined4 GfGfx_BothDispOn(void);
undefined4 sub_0208DF2C(void *);
undefined4 sub_0203A964(void);
undefined4 Sound_SetSceneAndPlayBGM(unsigned char, unsigned short, int);
extern unsigned short uRam04000304 __asm__("sub_04000304");

undefined4 PokemonSummary_Init(undefined *param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 *puVar3;
  undefined *puVar4;
  undefined4 uVar5;

  Main_SetVBlankIntrCB((undefined *)0x0,(undefined *)0x0);
  HBlankInterruptDisable();
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffffe0ff;
  uRam04001000 = uRam04001000 & 0xffffe0ff;
  uRam04000000 = uRam04000000 & 0xffff1fff;
  uRam04001000 = uRam04001000 & 0xffff1fff;
  uRam04000050 = 0;
  uRam04001050 = 0;
  SetKeyRepeatTimers(4,8);
  Heap_Create(3,0x13,0x45000);
  puVar1 = NARC_New(0x27,0x13);
  puVar2 = NARC_New(0xa2,0x13);
  puVar3 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x7d8,0x13);
  memset((undefined *)puVar3,0,0x7d8);
  puVar4 = OverlayManager_GetArgs(param_1);
  puVar3[0x8b] = puVar4;
  puVar4 = BgConfig_Alloc(0x13);
  *puVar3 = puVar4;
  *(undefined4 *)(puVar3[0x8b] + 0x38) = 0;
  uVar5 = sub_02016EDC(0x13,1,1);
  puVar3[0xb3] = uVar5;
  puVar4 = NARC_New(0xb4,0x13);
  puVar3[0x1ee] = puVar4;
  FontID_SetAccessDirect(0,0x13);
  sub_020210BC();
  sub_02021148(4);
  sub_02088610();
  sub_02088630(*puVar3);
  sub_020887C4(puVar3,puVar1,puVar2);
  sub_0208887C();
  sub_0208DE40();
  FontID_Alloc(4,0x13);
  sub_02088894(puVar3);
  sub_020889D0(puVar3,puVar2);
  sub_020897C0(puVar3);
  sub_0208B1AC(puVar3);
  sub_0208B2C0(puVar3);
  sub_0208E3AC((undefined *)puVar3);
  sub_0208B48C(puVar3);
  sub_0208B4EC(puVar3);
  sub_0208BECC(puVar3);
  sub_0208C3E4(puVar3);
  sub_02089CB4(puVar3);
  sub_0208DF2C((undefined *)puVar3);
  Main_SetVBlankIntrCB((undefined *)0x20885dd,(undefined *)puVar3);
  uRam04000304 = uRam04000304 | 0x8000;
  GfGfx_BothDispOn();
  Sound_SetSceneAndPlayBGM(0x3d,0,0);
  sub_0203A964();
  NARC_Delete(puVar2);
  NARC_Delete(puVar1);
  return 1;
}

