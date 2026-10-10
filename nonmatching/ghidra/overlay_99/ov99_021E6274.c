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
undefined4 func_0x0221e8a8() __asm__("sub_0221E8A8");
undefined4 func_0x0221e5c0() __asm__("sub_0221E5C0");
undefined4 SpriteSystem_LoadPlttResObjFromOpenNarc();
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc();
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc();
undefined4 SpriteSystem_LoadAnimResObjFromOpenNarc();
undefined4 func_0x0221e5d0() __asm__("sub_0221E5D0");
undefined4 ov99_021E6400();
extern undefined ov99_021E9554;

void ov99_021E6274(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  
  uVar1 = func_0x0221e5c0(*(undefined4 *)(param_1 + 0x14));
  uVar2 = func_0x0221e5d0(*(undefined4 *)(param_1 + 0x14));
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),0x15,1,1,0);
  SpriteSystem_LoadPlttResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),0x14,0,1,1,0);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),0x16,1,0);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),0x17,1,0);
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),1,1,1,1);
  SpriteSystem_LoadPlttResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),0,0,1,1,1);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),2,1,1);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),3,1,1);
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),5,1,1,2);
  SpriteSystem_LoadPlttResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),4,0,5,1,2);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),6,1,2);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),7,1,2);
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),9,1,2,6);
  SpriteSystem_LoadPlttResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),8,0,1,2,3);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),10,1,3);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar1,uVar2,*(undefined4 *)(param_1 + 8),0xb,1,3);
  ov99_021E6400(param_1);
  func_0x0221e8a8(*(undefined4 *)(param_1 + 0x14),&ov99_021E9554,3,0,1);
  return;
}

