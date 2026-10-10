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
undefined4 ov81_02240F08();
undefined4 OverlayManager_FreeData();
undefined4 func_0x02006f7c() __asm__("sub_02006F7C");
undefined4 OverlayManager_GetData();
undefined4 Heap_Destroy();
undefined4 ov81_02240BB0();
undefined4 Main_SetVBlankIntrCB();
undefined4 TextFlags_SetCanTouchSpeedUpPrint();
undefined4 ov81_02240F18();
undefined4 PaletteData_GetSelectedBuffersBitmask();
undefined4 ov81_02241BC8();
undefined4 ov81_02243220();
undefined4 PaletteData_ScheduleFadeTaskEndIfNoSelectedBuffers();

undefined4 ov81_0223E234(undefined4 param_1)

{
  undefined2 *puVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;

  iVar2 = OverlayManager_GetData();
  iVar3 = PaletteData_GetSelectedBuffersBitmask(*(undefined4 *)(iVar2 + 0x1a0));
  if (iVar3 == 0) {
    iVar3 = ov81_02240F08(iVar2,0);
    if (iVar3 == 1) {
      iVar6 = 0;
      iVar3 = ov81_02240F18(*(undefined1 *)(iVar2 + 9));
      if (0 < iVar3) {
        iVar5 = 0;
        iVar3 = iVar2;
        do {
          puVar1 = (undefined2 *)(iVar3 + 0x3c8);
          iVar3 = iVar3 + 2;
          *(undefined2 *)(*(int *)(iVar2 + 0x3d4) + iVar5) = *puVar1;
          iVar5 = iVar5 + 2;
          iVar6 = iVar6 + 1;
          iVar4 = ov81_02240F18(*(undefined1 *)(iVar2 + 9));
        } while (iVar6 < iVar4);
      }
    }
    else {
      iVar5 = 0;
      iVar6 = 0;
      iVar3 = iVar2;
      do {
        iVar5 = iVar5 + 1;
        *(undefined2 *)(*(int *)(iVar2 + 0x3d4) + iVar6) = *(undefined2 *)(iVar3 + 0x3c8);
        iVar3 = iVar3 + 2;
        iVar6 = iVar6 + 2;
      } while (iVar5 < 2);
      if (-1 < (int)((uint)*(byte *)(iVar2 + 0x13) << 0x1c)) {
        **(undefined2 **)(iVar2 + 0x3d4) = 0xff;
        *(undefined2 *)(*(int *)(iVar2 + 0x3d4) + 2) = 0xff;
      }
    }
    TextFlags_SetCanTouchSpeedUpPrint(0);
    ov81_02241BC8(*(undefined4 *)(iVar2 + 0x46c));
    ov81_02243220(*(undefined4 *)(iVar2 + 0x464));
    ov81_02240BB0(iVar2);
    OverlayManager_FreeData(param_1);
    Main_SetVBlankIntrCB(0,0);
    Heap_Destroy(100);
    func_0x02006f7c(0x50);
    return 1;
  }
  PaletteData_ScheduleFadeTaskEndIfNoSelectedBuffers(*(undefined4 *)(iVar2 + 0x1a0));
  *(undefined4 *)(iVar2 + 0x478) = 0xff;
  return 0;
}

