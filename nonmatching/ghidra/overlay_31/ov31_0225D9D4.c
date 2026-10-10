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
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 GfGfxLoader_GetScrnData();
undefined4 func_0x0201c0a8() __asm__("sub_0201C0A8");
undefined4 func_0x0201cb28() __asm__("sub_0201CB28");
undefined4 Heap_Free();

void ov31_0225D9D4(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iStack_14;
  undefined4 uStack_10;
  
  uStack_10 = param_4;
  if (param_2 == 0) {
    uVar1 = GfGfxLoader_GetScrnData(0x3c,0x11,0,&iStack_14,8);
    func_0x0201c0a8(*(undefined4 *)(param_1 + 4),6,iStack_14 + 0xc,*(undefined4 *)(iStack_14 + 8));
    ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 4),6);
    Heap_Free(uVar1);
    GfGfx_EngineBTogglePlanes(2,1);
    return;
  }
  if (param_2 != 1) {
    if (param_2 != 2) {
      return;
    }
    func_0x0201cb28(*(undefined4 *)(param_1 + 4),5,0);
    uVar1 = GfGfxLoader_GetScrnData(0x3c,0x14,0,&iStack_14,8);
    func_0x0201c0a8(*(undefined4 *)(param_1 + 4),6,iStack_14 + 0xc,*(undefined4 *)(iStack_14 + 8));
    ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 4),6);
    Heap_Free(uVar1);
    return;
  }
  func_0x0201cb28(*(undefined4 *)(param_1 + 4),5,0);
  uVar1 = GfGfxLoader_GetScrnData(0x3c,0x13,0,&iStack_14,8);
  func_0x0201c0a8(*(undefined4 *)(param_1 + 4),6,iStack_14 + 0xc,*(undefined4 *)(iStack_14 + 8));
  ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 4),6);
  Heap_Free(uVar1);
  return;
}

