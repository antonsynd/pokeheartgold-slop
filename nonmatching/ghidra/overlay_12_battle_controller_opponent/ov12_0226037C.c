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
typedef void code(void);
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
undefined4 ov12_0226430C(undefined4, undefined4, undefined4);
undefined4 BattleSystem_GetPokepicManager(undefined4);
undefined4 BattleSystem_GetMessageIcon(undefined4);
undefined4 PaletteData_GetSelectedBuffersBitmask(undefined4);
undefined4 BattleSystem_GetPaletteData(undefined4);
undefined4 sub_0201649C(undefined4, undefined4);
undefined4 func_0x02005f50(undefined4, undefined4) __asm__("sub_02005F50");
undefined4 Heap_Free(undefined4);
undefined4 SysTask_Destroy(undefined4);
undefined4 PaletteData_BeginPaletteFade(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Pokepic_StartPaletteFadeAll(undefined4, undefined4, undefined4, undefined4, undefined4);

void ov12_0226037C(undefined4 param_1,undefined4 *param_2)

{
  char cVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;

  uVar2 = BattleSystem_GetPaletteData(*param_2);
  uVar3 = BattleSystem_GetPokepicManager(*param_2);
  cVar1 = *(char *)((int)param_2 + 6);
  if (cVar1 == '\0') {
    uVar4 = BattleSystem_GetMessageIcon(*param_2);
    sub_0201649C(uVar4,1);
    PaletteData_BeginPaletteFade(uVar2,0xf,0xffff,1,0,0x10,0);
    Pokepic_StartPaletteFadeAll(uVar3,0,0x10,0,0);
    func_0x02005f50(0,0x10);
    *(char *)((int)param_2 + 6) = *(char *)((int)param_2 + 6) + '\x01';
  }
  else if (cVar1 != '\x01') {
    if (cVar1 == '\x02') {
      ov12_0226430C(*param_2,*(undefined1 *)((int)param_2 + 5),*(undefined1 *)(param_2 + 1));
      Heap_Free(param_2);
      SysTask_Destroy(param_1);
      return;
    }
    return;
  }
  iVar5 = PaletteData_GetSelectedBuffersBitmask(uVar2);
  if (iVar5 != 0) {
    return;
  }
  *(char *)((int)param_2 + 6) = *(char *)((int)param_2 + 6) + '\x01';
  return;
}

