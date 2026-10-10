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
undefined4 Sprite_SetDrawFlag();
undefined4 Bg_GetYpos();
undefined4 thunk_Sprite_SetPaletteOverride();
undefined4 ScheduleSetBgPosText();
undefined4 Sprite_SetPriority();
undefined4 sub_0208AB58();
undefined4 ClearWindowTilemapAndScheduleTransfer();

undefined4 sub_0208A9C4(undefined4 *param_1)

{
  char cVar1;
  int iVar2;

  cVar1 = *(char *)((int)param_1 + 0x7be);
  if (cVar1 == '\0') {
    ScheduleSetBgPosText(*param_1,5,0,0);
    ScheduleSetBgPosText(*param_1,5,3,0);
    Sprite_SetPriority(param_1[0x10a],3);
    thunk_Sprite_SetPaletteOverride(param_1[0x10a],0);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0x75);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0x5d);
    ClearWindowTilemapAndScheduleTransfer(param_1[0x89]);
    *(undefined1 *)((int)param_1 + 0x7c5) = 0;
    *(undefined1 *)((int)param_1 + 0x7be) = 1;
  }
  else if (cVar1 == '\x01') {
    iVar2 = Bg_GetYpos(*param_1,5);
    if (iVar2 < 0x48) {
      ScheduleSetBgPosText(*param_1,5,4,0x24);
    }
    else {
      ScheduleSetBgPosText(*param_1,5,3,0x48);
      *(undefined1 *)((int)param_1 + 0x7be) = 2;
    }
  }
  else if (cVar1 == '\x02') {
    Sprite_SetDrawFlag(param_1[0x140],1);
    Sprite_SetDrawFlag(param_1[0x143],1);
    sub_0208AB58(param_1,0);
    *(undefined1 *)((int)param_1 + 0x7be) = 0;
    return 1;
  }
  return 0;
}

