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
undefined4 GfGfxLoader_LoadCharData();
undefined4 Sprite_SetDrawFlag();
undefined4 ov74_02235BD0();
undefined4 ov74_02235C10();
undefined4 func_0x02007a44() __asm__("sub_02007A44");
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 BgTilemapRectChangePalette();
undefined4 func_0x0201c0a8() __asm__("sub_0201C0A8");
undefined4 func_0x020b71d8() __asm__("sub_020B71D8");
undefined4 ov74_02235CE4();
undefined4 ov74_02235AC4();
undefined4 Heap_Free();
extern undefined4 uRam0223d454 __asm__("sub_0223D454");
extern undefined4 uRam0223d45c __asm__("sub_0223D45C");
extern undefined4 uRam0223e2f8 __asm__("sub_0223E2F8");
extern undefined4 uRam0223d660 __asm__("sub_0223D660");
extern undefined4 uRam0223d65c __asm__("sub_0223D65C");

void ov74_02235DC4(undefined4 param_1,undefined2 *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 uVar1;
  char cVar2;
  undefined4 uVar3;
  int iStack_1c;
  undefined4 uStack_18;
  
  uVar1 = *param_2;
  uStack_18 = param_4;
  cVar2 = ov74_02235AC4(uVar1);
  GfGfxLoader_LoadCharData(0x71,0x22,param_1,5,0,0x1400,1,uRam0223d45c);
  uVar3 = func_0x02007a44(0x71,0x23,1,uRam0223d45c,1);
  func_0x020b71d8(uVar3,&iStack_1c);
  func_0x0201c0a8(param_1,5,iStack_1c + 0xc,0x600);
  Heap_Free(uVar3);
  BgTilemapRectChangePalette(param_1,5,0,0,0x20,0x18,cVar2 + '\b');
  ScheduleBgTilemapBufferTransfer(param_1,5);
  uRam0223e2f8 = 0x2235da5;
  uRam0223d454 = param_1;
  switch(uVar1) {
  case 3:
  case 8:
  case 9:
  case 10:
  case 0xc:
  case 0xe:
  case 0xf:
    ov74_02235CE4(0x223d454,uVar1,param_2);
    break;
  case 4:
  case 5:
  case 6:
  case 0xb:
    ov74_02235BD0(0x223d454,uVar1,param_2);
    break;
  case 7:
    uRam0223d660 = 0x78;
  case 1:
  case 2:
  case 0xd:
    ov74_02235C10(0x223d454,uVar1,param_2);
  }
  Sprite_SetDrawFlag(uRam0223d65c,0);
  return;
}

