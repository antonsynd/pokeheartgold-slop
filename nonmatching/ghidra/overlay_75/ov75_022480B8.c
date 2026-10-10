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
undefined4 ClearFrameAndWindow2();
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 func_0x02026800() __asm__("sub_02026800");
undefined4 func_0x02026820() __asm__("sub_02026820");
undefined4 func_0x02026860() __asm__("sub_02026860");
undefined4 AddWindowParameterized();
undefined4 FillWindowPixelBuffer();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 CopyWindowToVram();
undefined4 ListMenuCursorNew();
undefined4 String_New();
undefined4 NewString_ReadMsgData();
undefined4 AddTextPrinterParameterized();
undefined4 DrawFrameAndWindow1();
undefined4 PlaySE();
undefined4 String_Delete();
extern uint uRam021d1158 __asm__("sub_021D1158");
extern uint uRam021d1154 __asm__("sub_021D1154");
undefined4 DestroyListMenuCursorObj();
undefined4 ov75_02247D24();
undefined4 sub_0200E5D4();
undefined4 ov75_02248034();
undefined4 ov75_02247C70();
undefined4 RemoveWindow();
undefined4 ov75_02247D0C();
undefined4 BgClearTilemapBufferAndCommit();

undefined4 ov75_022480B8(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;

  iVar3 = *(int *)(param_1 + 0xa8);
  if (iVar3 == 0) {
    uVar1 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x34),0x2c);
    uVar2 = func_0x02026820();
    *(undefined4 *)(param_1 + 0xac) = 0;
    *(undefined4 *)(param_1 + 0xb0) = 0;
    *(undefined4 *)(param_1 + 0xb8) = 0;
    *(undefined4 *)(param_1 + 0xb4) = uVar2;
    AddWindowParameterized(*(undefined4 *)(param_1 + 4),param_1 + 0xc4,2,1,5,0x1e,0xc,0xd,0x94);
    AddWindowParameterized(*(undefined4 *)(param_1 + 4),param_1 + 0xd4,2,1,0x13,0x1e,4,0xd,0x1fc);
    FillWindowPixelBuffer(param_1 + 0xc4,0xf);
    uVar2 = func_0x02026800(uVar1);
    uVar2 = String_New(uVar2,0x74);
    iVar4 = 0;
    iVar3 = 0;
    do {
      func_0x02026860(uVar2,uVar1,iVar4);
      AddTextPrinterParameterized(param_1 + 0xc4,0,uVar2,4,iVar3,0xff,0);
      iVar4 = iVar4 + 1;
      iVar3 = iVar3 + 0x10;
    } while (iVar4 < 6);
    String_Delete(uVar1);
    String_Delete(uVar2);
    DrawFrameAndWindow1(param_1 + 0xc4,1,0x1f,0xb);
    CopyWindowToVram(param_1 + 0xc4);
    FillWindowPixelBuffer(param_1 + 0xd4,0xf);
    DrawFrameAndWindow1(param_1 + 0xd4,1,0x1f,0xb);
    CopyWindowToVram(param_1 + 0xd4);
    uVar1 = ListMenuCursorNew(0x74);
    *(undefined4 *)(param_1 + 0xe4) = uVar1;
    FillWindowPixelBuffer(param_1 + 0x48,0xf);
    ClearFrameAndWindow2(param_1 + 0x48,1);
    ClearWindowTilemapAndCopyToVram(param_1 + 0x48);
    GfGfx_EngineATogglePlanes(8,1);
    *(undefined4 *)(param_1 + 0xbc) = 0;
    *(undefined4 *)(param_1 + 0xc0) = 0;
    *(int *)(param_1 + 0xa8) = *(int *)(param_1 + 0xa8) + 1;
  }
  else if (iVar3 == 1) {
    iVar3 = *(int *)(param_1 + 0xac);
    if ((uRam021d1158 & 0x40) == 0) {
      if ((uRam021d1158 & 0x80) == 0) {
        if ((uRam021d1154 & 2) != 0) {
          PlaySE(0x5dc);
          *(undefined4 *)(param_1 + 0xb8) = 2;
          *(undefined4 *)(param_1 + 0xa8) = 0xff;
        }
      }
      else {
        if (iVar3 + 6 < *(int *)(param_1 + 0xb4)) {
          *(int *)(param_1 + 0xac) = *(int *)(param_1 + 0xac) + 1;
          PlaySE(0x5dc);
        }
        if (*(int *)(param_1 + 0xac) + 6 == *(int *)(param_1 + 0xb4)) {
          ov75_02247C70(param_1);
          *(int *)(param_1 + 0xa8) = *(int *)(param_1 + 0xa8) + 1;
          PlaySE(0x5dc);
        }
      }
    }
    else if (iVar3 != 0) {
      *(int *)(param_1 + 0xac) = *(int *)(param_1 + 0xac) + -1;
      PlaySE(0x5dc);
    }
    if (iVar3 != *(int *)(param_1 + 0xac)) {
      ov75_02248034(param_1);
    }
  }
  else {
    if (iVar3 != 2) {
      sub_0200E5D4(param_1 + 0xc4,0);
      ClearWindowTilemapAndCopyToVram(param_1 + 0xc4);
      RemoveWindow(param_1 + 0xc4);
      sub_0200E5D4(param_1 + 0xd4,0);
      ClearWindowTilemapAndCopyToVram(param_1 + 0xd4);
      RemoveWindow(param_1 + 0xd4);
      DestroyListMenuCursorObj(*(undefined4 *)(param_1 + 0xe4));
      BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 4),3);
      GfGfx_EngineATogglePlanes(8,0);
      *(undefined4 *)(param_1 + 0xa8) = 0;
      return *(undefined4 *)(param_1 + 0xb8);
    }
    if (((uRam021d1154 & 0x10) == 0) && ((uRam021d1154 & 0x20) == 0)) {
      if ((uRam021d1154 & 1) == 0) {
        if ((uRam021d1154 & 2) == 0) {
          if ((uRam021d1154 & 0x40) != 0) {
            ov75_02247D0C();
            PlaySE(0x5dc);
            *(int *)(param_1 + 0xa8) = *(int *)(param_1 + 0xa8) + -1;
            *(int *)(param_1 + 0xac) = *(int *)(param_1 + 0xac) + -1;
            ov75_02248034(param_1);
          }
        }
        else {
          *(undefined4 *)(param_1 + 0xb8) = 2;
          PlaySE(0x5dc);
          *(int *)(param_1 + 0xa8) = *(int *)(param_1 + 0xa8) + 1;
        }
      }
      else {
        *(int *)(param_1 + 0xb8) = 2 - *(int *)(param_1 + 0xb0);
        PlaySE(0x5dc);
        *(int *)(param_1 + 0xa8) = *(int *)(param_1 + 0xa8) + 1;
      }
    }
    else {
      *(uint *)(param_1 + 0xb0) = *(uint *)(param_1 + 0xb0) ^ 1;
      PlaySE(0x5dc);
      ov75_02247C70(param_1);
    }
  }
  ov75_02247D24(param_1);
  return 0;
}

