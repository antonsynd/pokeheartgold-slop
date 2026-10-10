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
undefined4 Main_SetHBlankIntrCB();
undefined4 func_0x02006ff8() __asm__("sub_02006FF8");
undefined4 Heap_Create();
undefined4 NARC_New();
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 PokeathlonCourse_AllocPtr4FromHeap();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 BgConfig_Alloc();
undefined4 PokeathlonCourse_GetCurrentParticipantIndex();
undefined4 ov96_021EF2A0();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 Main_SetVBlankIntrCB();
undefined4 PokeathlonCourse_GetMode();
undefined4 ov96_021EF260();
extern uint uRam04000000 __asm__("sub_04000000");
extern uint uRam04001000 __asm__("sub_04001000");
undefined4 sub_0200FC20();
undefined4 GfGfx_SwapDisplay();
undefined4 ov96_021EF2AC();
extern undefined1 uRam021d1175 __asm__("sub_021D1175");

void ov96_021EF2C0(undefined4 param_1)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  
  PokeathlonCourse_GetHeapAllocPtr4();
  Heap_Create(0x5c,0x88,0x40000);
  func_0x02006ff8(0x62,2);
  Main_SetVBlankIntrCB(0,0);
  Main_SetHBlankIntrCB(0,0);
  GfGfx_DisableEngineAPlanes();
  GfGfx_DisableEngineBPlanes();
  uRam04000000 = uRam04000000 & 0xffffe0ff;
  uRam04001000 = uRam04001000 & 0xffffe0ff;
  ov96_021EF260();
  puVar2 = (undefined4 *)PokeathlonCourse_AllocPtr4FromHeap(param_1,0x48);
  func_0x020d4994(puVar2,0,0x48);
  uVar3 = NARC_New(0xdd,0x88);
  puVar2[2] = uVar3;
  uVar3 = BgConfig_Alloc(0x88);
  puVar2[1] = uVar3;
  uVar1 = ov96_021EF2A0(param_1);
  *(undefined1 *)(puVar2 + 8) = uVar1;
  uVar1 = PokeathlonCourse_GetCurrentParticipantIndex(param_1);
  *(undefined1 *)((int)puVar2 + 0x22) = uVar1;
  iVar4 = PokeathlonCourse_GetMode(param_1);
  puVar2[9] = (uint)(iVar4 == 1);
  *puVar2 = param_1;
  puVar2[3] = 0x88;
  Main_SetVBlankIntrCB(0x21ef23d,puVar2);
  uRam021d1175 = 1;
  GfGfx_SwapDisplay();
  sub_0200FC20(0x7fff);
  if (puVar2[9] != 0) {
    puVar2[10] = 0;
    return;
  }
  uVar3 = ov96_021EF2AC(param_1);
  puVar2[10] = uVar3;
  return;
}

