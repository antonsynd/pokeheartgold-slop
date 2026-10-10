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
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc();
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc();
undefined4 NARC_New();
undefined4 func_0x0200d68c() __asm__("sub_0200D68C");
undefined4 SpriteSystem_LoadAnimResObjFromOpenNarc();
undefined4 NARC_Delete();

void ov92_0225E3C4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  uVar1 = *(undefined4 *)(param_1 + 0x48);
  uVar2 = *(undefined4 *)(param_1 + 0x54);
  uVar3 = *(undefined4 *)(param_1 + 0x50);
  uVar4 = *(undefined4 *)(param_1 + 0x5c);
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar3,uVar2,uVar1,0x54,0,2,9000);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar3,uVar2,uVar1,0x53,0,9000);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar3,uVar2,uVar1,0x52,0,9000);
  func_0x0200d68c(uVar4,3,uVar3,uVar2,uVar1,0x55,0,0xd,2,9000,param_4);
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar3,uVar2,uVar1,0x1d,0,1,0x232b);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar3,uVar2,uVar1,0x1c,0,0x232b);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar3,uVar2,uVar1,0x1b,0,0x232b);
  func_0x0200d68c(uVar4,2,uVar3,uVar2,uVar1,0x1e,0,1,1,0x232b);
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar3,uVar2,uVar1,0xd,0,1,0x232c);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar3,uVar2,uVar1,0xc,0,0x232c);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar3,uVar2,uVar1,0xb,0,0x232c);
  func_0x0200d68c(uVar4,2,uVar3,uVar2,uVar1,0xe,0,1,1,0x232c);
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar3,uVar2,uVar1,0x15,0,1,0x232d);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar3,uVar2,uVar1,0x14,0,0x232d);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar3,uVar2,uVar1,0x13,0,0x232d);
  func_0x0200d68c(uVar4,2,uVar3,uVar2,uVar1,0x16,0,1,1,0x232d);
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar3,uVar2,uVar1,0x11,0,1,0x232e);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar3,uVar2,uVar1,0x10,0,0x232e);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar3,uVar2,uVar1,0xf,0,0x232e);
  func_0x0200d68c(uVar4,2,uVar3,uVar2,uVar1,0x12,0,1,1,0x232e);
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar3,uVar2,uVar1,0x19,0,1,0x232a);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar3,uVar2,uVar1,0x18,0,0x232a);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar3,uVar2,uVar1,0x17,0,0x232a);
  func_0x0200d68c(uVar4,2,uVar3,uVar2,uVar1,0x1a,0,3,1,0x232a);
  uVar1 = NARC_New(200,0x71);
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar3,uVar2,uVar1,0x15,0,1,0x232f);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar3,uVar2,uVar1,0x16,0,0x232f);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar3,uVar2,uVar1,0x17,0,0x232f);
  func_0x0200d68c(uVar4,2,uVar3,uVar2,uVar1,0x14,0,2,1,0x232f);
  NARC_Delete(uVar1);
  return;
}

