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
undefined4 G2dRenderer_Init();
undefined4 func_0x020b78d4() __asm__("sub_020B78D4");
undefined4 G2dRenderer_SetSubSurfaceCoords();
undefined4 func_0x0200b150() __asm__("sub_0200B150");
undefined4 Create2DGfxResObjMan();
extern int uRam0223d664 __asm__("sub_0223D664");
extern undefined4 uRam0223d488 __asm__("sub_0223D488");
extern undefined4 uRam0223d45c __asm__("sub_0223D45C");

void ov74_02235690(void)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  
  func_0x020b78d4();
  func_0x0200b150(0,0x7e,0,0x20,0,0x7e,0,0x20,uRam0223d45c);
  uRam0223d488 = G2dRenderer_Init(0x80,0x223d48c,uRam0223d45c);
  G2dRenderer_SetSubSurfaceCoords(0x223d48c,0,0x100000);
  uRam0223d664 = 0xc0000;
  iVar2 = 0;
  iVar3 = 0x223d454;
  do {
    uVar1 = Create2DGfxResObjMan(0x20,iVar2,uRam0223d45c);
    *(undefined4 *)(iVar3 + 0x160) = uVar1;
    iVar2 = iVar2 + 1;
    iVar3 = iVar3 + 4;
  } while (iVar2 < 6);
  return;
}

