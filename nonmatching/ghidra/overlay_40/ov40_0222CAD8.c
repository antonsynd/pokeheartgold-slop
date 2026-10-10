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
undefined4 SpriteSystem_LoadAnimResObjFromOpenNarc();
undefined4 SpriteSystem_LoadCharResObjFromOpenNarc();
undefined4 SpriteSystem_LoadCellResObjFromOpenNarc();

void ov40_0222CAD8(undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  
  uVar1 = param_1[5];
  uVar6 = param_1[7];
  uVar2 = param_1[6];
  switch(*param_1) {
  case 0:
    uVar5 = 0x3f;
    uVar3 = 0x18;
    uVar4 = 0x19;
    break;
  default:
    uVar5 = 0x30;
    uVar3 = 0x16;
    uVar4 = 0x17;
    break;
  case 2:
    uVar5 = 0x11;
    uVar3 = 0x12;
    uVar4 = 0x13;
    break;
  case 3:
    uVar5 = 0xe;
    uVar3 = 0xf;
    uVar4 = 0x10;
    break;
  case 4:
    uVar5 = 0xb;
    uVar3 = 0xc;
    uVar4 = 0xd;
    break;
  case 5:
  case 6:
    uVar5 = 8;
    uVar3 = 9;
    uVar4 = 10;
  }
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar2,uVar6,uVar1,uVar5,0,1,0x2711);
  SpriteSystem_LoadCharResObjFromOpenNarc(uVar2,uVar6,uVar1,uVar5,0,2,0x2712);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar2,uVar6,uVar1,uVar3,0,0x2711);
  SpriteSystem_LoadCellResObjFromOpenNarc(uVar2,uVar6,uVar1,uVar3,0,0x2712);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar2,uVar6,uVar1,uVar4,0,0x2711);
  SpriteSystem_LoadAnimResObjFromOpenNarc(uVar2,uVar6,uVar1,uVar4,0,0x2712);
  return;
}

