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
undefined4 GF_DestroyVramTransferManager();
undefined4 func_0x02022608() __asm__("sub_02022608");
undefined4 func_0x0202168c() __asm__("sub_0202168C");
undefined4 GF_3DVramMan_Delete();
undefined4 func_0x0202067c() __asm__("sub_0202067C");
undefined4 FreeBgTilemapBuffer();
undefined4 Heap_Free();
undefined4 func_0x0200b244() __asm__("sub_0200B244");
undefined4 SpriteList_Delete();
undefined4 Destroy2DGfxResObjMan();
extern undefined ov49_02269734;

void ov49_0225A7D0(undefined4 *param_1)

{
  int iVar1;
  uint *puVar2;
  undefined4 *puVar3;

  GF_DestroyVramTransferManager();
  puVar2 = (uint *)&ov49_02269734;
  iVar1 = 0;
  do {
    FreeBgTilemapBuffer(*param_1,*puVar2 & 0xff);
    iVar1 = iVar1 + 1;
    puVar2 = puVar2 + 1;
  } while (iVar1 < 4);
  Heap_Free(*param_1);
  func_0x0202067c(param_1[0x50]);
  iVar1 = 0;
  param_1[0x50] = 0;
  puVar3 = param_1;
  do {
    Destroy2DGfxResObjMan(puVar3[0x4c]);
    iVar1 = iVar1 + 1;
    puVar3 = puVar3 + 1;
  } while (iVar1 < 4);
  SpriteList_Delete(param_1[1]);
  func_0x0202168c();
  func_0x02022608();
  func_0x0200b244();
  GF_3DVramMan_Delete(param_1[0x51]);
  return;
}

