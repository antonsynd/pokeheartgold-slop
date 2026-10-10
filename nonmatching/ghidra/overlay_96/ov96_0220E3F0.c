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
undefined4 PokeathlonCourse_IncrementField1ED();
undefined4 Heap_Create();
undefined4 GfGfx_DisableEngineBPlanes();
undefined4 PokeathlonCourse_AllocPtr4FromHeap();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 GfGfx_DisableEngineAPlanes();
undefined4 BgConfig_Alloc();
undefined4 ov96_021E6670();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_0220E868();
undefined4 Main_SetVBlankIntrCB();
undefined4 GfGfx_SwapDisplay();
undefined4 PokeathlonCourse_GetField1ED();
extern uint uRam04000000 __asm__("sub_04000000");
extern uint uRam04001000 __asm__("sub_04001000");
extern undefined1 uRam021d1175 __asm__("sub_021D1175");
undefined4 SpriteManager_GetSpriteList();
undefined4 ov96_0220F3FC();
undefined4 ov96_021E5F24();
undefined4 ov96_021E61D8();
undefined4 ov96_0220EA08();
undefined4 ov96_0220EB3C();
undefined4 PokeathlonCourse_SetField1F4();
undefined4 Sprite_SetDrawPriority();
undefined4 sub_0203A994();
undefined4 PokeathlonCourse_SetVBlankIntrCB();
undefined4 ov96_022107F0();
undefined4 ov96_0221007C();
undefined4 ov96_0220D420();
undefined4 ov96_0221022C();
undefined4 ov96_021E64B8();
undefined4 ov96_021EAA00();
undefined4 ov96_02210240();
undefined4 ov96_0220EE8C();
undefined4 ov96_0220ED9C();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov96_0220F4A0();
undefined4 ov96_021E8A20();
undefined4 GF_AssertFail();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_0220FF64();
undefined4 ov96_0220FA18();
undefined4 func_0x020f2998() __asm__("sub_020F2998");

undefined4 ov96_0220E3F0(undefined4 param_1)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  
  puVar2 = (undefined4 *)PokeathlonCourse_GetHeapAllocPtr4();
  uVar3 = PokeathlonCourse_GetField1ED(param_1);
  switch(uVar3) {
  case 0:
    Heap_Create(0x5c,0x8e,0x60000);
    Main_SetVBlankIntrCB(0,0);
    Main_SetHBlankIntrCB(0,0);
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    uRam04000000 = uRam04000000 & 0xffffe0ff;
    uRam04001000 = uRam04001000 & 0xffffe0ff;
    ov96_0220E868();
    uRam021d1175 = 1;
    GfGfx_SwapDisplay();
    puVar2 = (undefined4 *)PokeathlonCourse_AllocPtr4FromHeap(param_1,0x6bc);
    func_0x020d4994(puVar2,0,0x6bc);
    *puVar2 = 0x8e;
    puVar2[1] = param_1;
    puVar2[0x143] = 0x708;
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 1:
    uVar3 = BgConfig_Alloc(*puVar2);
    puVar2[2] = uVar3;
    ov96_021E6670(param_1,4);
    ov96_0220ED9C(puVar2);
    ov96_0220EE8C(puVar2);
    ov96_0221022C(puVar2);
    sub_0203A994(2);
    ov96_0220EA08(puVar2);
    ov96_0220F3FC(puVar2);
    PokeathlonCourse_IncrementField1ED(param_1);
    break;
  case 2:
    iVar4 = ov96_021EAA00(puVar2[8]);
    if (iVar4 != 0) {
      ov96_0220EB3C(puVar2);
      uVar3 = SpriteManager_GetSpriteList(puVar2[4]);
      puVar2 = (undefined4 *)ov96_021E61D8(param_1,0,puVar2[7],uVar3);
      Sprite_SetDrawPriority(*puVar2,0);
      PokeathlonCourse_IncrementField1ED(param_1);
    }
    break;
  case 3:
    uVar1 = ov96_021E5F24(param_1);
    uVar3 = ov96_02210240(puVar2[3],puVar2[4],puVar2[2],puVar2[6],puVar2[5],uVar1,*puVar2,param_1);
    puVar2[0x31] = uVar3;
    ov96_0221007C(puVar2 + 0x144,puVar2[3],puVar2[4],puVar2[0x31]);
    uVar3 = ov96_022107F0(param_1,*puVar2);
    puVar2[0x32] = uVar3;
    ov96_021E64B8(param_1);
    ov96_0220D420(puVar2 + 0x1aa,puVar2[2],puVar2[3]);
    PokeathlonCourse_SetVBlankIntrCB(puVar2[2]);
    PokeathlonCourse_SetField1F4(param_1,1);
    ov96_0220F4A0(puVar2);
    iVar4 = ov96_021E5F24(param_1);
    if (iVar4 == 0) {
      iVar4 = PokeathlonCourse_GetDataCopyArea(param_1);
      iVar4 = ov96_021E8A20(iVar4 + 0x28);
      uVar5 = func_0x020f2998(puVar2[0x143] + 0x1e,0x1e);
      *(uint *)(iVar4 + 0x1c) = (uVar5 & 0x3f) << 0x18 | *(uint *)(iVar4 + 0x1c) & 0xc0ffffff;
      ov96_0220FA18(puVar2 + 0x33,param_1);
    }
    ov96_0220FF64(puVar2 + 0x13b,puVar2 + 0x57);
    GfGfx_EngineATogglePlanes(0x10,1);
    GfGfx_EngineBTogglePlanes(0x10,1);
    return 1;
  default:
    GF_AssertFail();
  }
  return 0;
}

