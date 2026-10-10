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
undefined4 CreateSpriteResourcesHeader();
undefined4 func_0x0200b00c() __asm__("sub_0200B00C");
undefined4 AddCharResObjFromNarc();
undefined4 AddPlttResObjFromNarc();
undefined4 AddCellOrAnimResObjFromNarc();
undefined4 func_0x0200acf0() __asm__("sub_0200ACF0");
extern undefined4 uRam0223d5c0 __asm__("sub_0223D5C0");
extern undefined4 uRam0223d5b4 __asm__("sub_0223D5B4");
extern undefined4 uRam0223d45c __asm__("sub_0223D45C");
extern undefined4 uRam0223d5bc __asm__("sub_0223D5BC");
extern undefined4 uRam0223d5b8 __asm__("sub_0223D5B8");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 Main_SetVBlankIntrCB();
undefined4 GfGfx_EngineBTogglePlanes();

void ov74_02235728(int param_1,int param_2,int param_3,int param_4,int param_5,int param_6)

{
  undefined4 uVar1;
  undefined4 uVar2;
  bool bVar3;
  
  if (param_6 == 0) {
    uVar2 = 1;
  }
  else {
    uVar2 = 2;
  }
  bVar3 = param_1 != 0x12;
  if (param_2 != -1) {
    uVar1 = AddCharResObjFromNarc(uRam0223d5b4,param_1,param_2,bVar3,param_6,uVar2,uRam0223d45c);
    *(undefined4 *)(param_6 * 0x18 + 0x223d5cc) = uVar1;
  }
  if (param_3 != -1) {
    uVar2 = AddPlttResObjFromNarc(uRam0223d5b8,param_1,param_3,0,param_6,uVar2,3,uRam0223d45c);
    *(undefined4 *)(param_6 * 0x18 + 0x223d5d0) = uVar2;
  }
  if (param_4 != -1) {
    uVar2 = AddCellOrAnimResObjFromNarc(uRam0223d5bc,param_1,param_4,bVar3,param_6,2,uRam0223d45c);
    *(undefined4 *)(param_6 * 0x18 + 0x223d5d4) = uVar2;
  }
  if (param_5 != -1) {
    uVar2 = AddCellOrAnimResObjFromNarc(uRam0223d5c0,param_1,param_5,bVar3,param_6,3,uRam0223d45c);
    *(undefined4 *)(param_6 * 0x18 + 0x223d5d8) = uVar2;
  }
  func_0x0200acf0(*(undefined4 *)(param_6 * 0x18 + 0x223d5cc));
  func_0x0200b00c(*(undefined4 *)(param_6 * 0x18 + 0x223d5d0));
  CreateSpriteResourcesHeader
            (param_6 * 0x24 + 0x223d5fc,param_6,param_6,param_6,param_6,0xffffffff,0xffffffff,0,0,
             uRam0223d5b4,uRam0223d5b8,uRam0223d5bc,uRam0223d5c0,0,0);
  if (param_6 == 0) {
    GfGfx_EngineATogglePlanes(0x10,1);
  }
  else {
    GfGfx_EngineBTogglePlanes(0x10,1);
  }
  Main_SetVBlankIntrCB(0x2235a75,0);
  return;
}

