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
undefined4 Pokepic_ResumePaletteFade();
undefined4 ov81_02242D88();
undefined4 FillWindowPixelBuffer();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 ov81_02242170();
undefined4 ClearFrameAndWindow2();
undefined4 func_0x02236dd4() __asm__("sub_02236DD4");
undefined4 ov81_02241FC0();
undefined4 Pokepic_StartPaletteFadeAll();
undefined4 ov81_0224300C();
undefined4 ov81_02242DE4();
undefined4 ClearWindowTilemapAndScheduleTransfer();
undefined4 ov81_02242D74();
undefined4 sub_0201980C();
undefined4 ov81_02242DD8();
undefined4 ScheduleWindowCopyToVram();
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 func_0x02008780() __asm__("sub_02008780");
undefined4 ov81_02240728();
undefined4 ov81_02241398();
undefined4 ov81_022404B4();
undefined4 ov81_022406E0();
undefined4 ov81_02240564();
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 ov81_0223EBE4();
undefined4 ov81_02241E68();
undefined4 ov81_02242EA4();
undefined4 ov81_02241EDC();
undefined4 func_0x02237254() __asm__("sub_02237254");
undefined4 ov81_02242F94();
undefined4 PlaySE();
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 ov81_02242F60();
undefined4 ov81_02241144();

undefined4 ov81_0223FC74(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;

  func_0x02236dd4(*(undefined1 *)(param_1 + 9));
  switch(*(undefined1 *)(param_1 + 8)) {
  case 0:
    *(byte *)(param_1 + 0x13) = *(byte *)(param_1 + 0x13) | 0x20;
    ClearWindowTilemapAndCopyToVram(param_1 + 0x60);
    ClearWindowTilemapAndCopyToVram(param_1 + 0xa0);
    ClearWindowTilemapAndCopyToVram(param_1 + 0xb0);
    FillWindowPixelBuffer(param_1 + 0x50,0);
    ScheduleWindowCopyToVram(param_1 + 0x50);
    ClearWindowTilemapAndCopyToVram(param_1 + 0x70);
    ClearWindowTilemapAndCopyToVram(param_1 + 0x80);
    ClearWindowTilemapAndCopyToVram(param_1 + 0x90);
    ClearWindowTilemapAndCopyToVram(param_1 + 0xd0);
    sub_0201980C(*(undefined4 *)(param_1 + 0x474),0);
    ClearFrameAndWindow2(param_1 + 0xc0,1);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0xc0);
    ov81_0224300C(param_1 + 0x50);
    Pokepic_StartPaletteFadeAll(*(undefined4 *)(param_1 + 0x1a8),0,0x10,0,0xffff);
    GfGfx_EngineATogglePlanes(4,0);
    *(undefined1 *)(param_1 + 0x19) = 0;
    *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    break;
  case 1:
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    if (1 < *(byte *)(param_1 + 0x19)) {
      uVar3 = 0;
      iVar2 = param_1;
      if (*(int *)(param_1 + 0x47c) != 0) {
        do {
          func_0x02008780(*(undefined4 *)(iVar2 + 0x1ac));
          uVar3 = uVar3 + 1;
          iVar2 = iVar2 + 4;
        } while (uVar3 < *(uint *)(param_1 + 0x47c));
      }
      ov81_02242D74(*(undefined4 *)(param_1 + 0x388));
      ov81_02242D74(*(undefined4 *)(param_1 + 0x38c));
      ov81_02242D74(*(undefined4 *)(param_1 + 0x390));
      ov81_02242D74(*(undefined4 *)(param_1 + 0x394));
      ov81_02242D74(*(undefined4 *)(param_1 + 0x398));
      ov81_02241FC0(param_1);
      ov81_02242170(param_1);
      ov81_02242DE4(*(undefined4 *)(param_1 + 0x380),2);
      *(undefined1 *)(param_1 + 0x19) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 2:
    Pokepic_ResumePaletteFade(*(undefined4 *)(param_1 + 0x1ac));
    iVar2 = ov81_02242DD8(*(undefined4 *)(param_1 + 0x380));
    if (iVar2 != 1) {
      ov81_02242D88(*(undefined4 *)(param_1 + 0x380),0);
      ov81_02240728(param_1,6);
      ov81_022406E0(param_1,2);
      func_0x0201bc8c(*(undefined4 *)(param_1 + 0x4c),6,0,*(undefined4 *)(param_1 + 0xc));
      PlaySE(0x611);
      *(undefined1 *)(param_1 + 0x19) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 3:
    iVar2 = ov81_02240564(param_1);
    if (iVar2 == 1) {
      func_0x02006154(0x611,0);
      PlaySE(0x678);
      *(undefined4 *)(param_1 + 0x14) = 8;
      iVar4 = 0;
      iVar2 = param_1;
      if (*(char *)(param_1 + 0x12) != '\0') {
        do {
          uVar1 = ov81_02242EA4(*(undefined4 *)(iVar2 + 0x360));
          *(undefined4 *)(iVar2 + 0x360) = uVar1;
          *(undefined4 *)(iVar2 + 0x360) = 0;
          iVar4 = iVar4 + 1;
          iVar2 = iVar2 + 4;
        } while (iVar4 < (int)(uint)*(byte *)(param_1 + 0x12));
      }
      iVar2 = func_0x02237254(*(undefined1 *)(param_1 + 9));
      if (iVar2 == 1) {
        if (*(char *)(param_1 + 0x12) == '\x02') {
          *(undefined1 *)(param_1 + 0x12) = 4;
        }
        else {
          *(undefined1 *)(param_1 + 0x12) = 2;
        }
      }
      ov81_0223EBE4(param_1);
      iVar4 = 0;
      iVar2 = param_1;
      if (*(char *)(param_1 + 0x12) != '\0') {
        do {
          ov81_02242F60(*(undefined4 *)(iVar2 + 0x360));
          iVar4 = iVar4 + 1;
          iVar2 = iVar2 + 4;
        } while (iVar4 < (int)(uint)*(byte *)(param_1 + 0x12));
      }
      PlaySE(0x611);
      *(undefined1 *)(param_1 + 0x19) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 4:
    iVar2 = ov81_022404B4(param_1);
    if (iVar2 == 1) {
      func_0x02006154(0x611,0);
      PlaySE(0x678);
      iVar4 = 0;
      iVar2 = param_1;
      if (*(char *)(param_1 + 0x12) != '\0') {
        do {
          ov81_02242F94(*(undefined4 *)(iVar2 + 0x360),4);
          iVar4 = iVar4 + 1;
          iVar2 = iVar2 + 4;
        } while (iVar4 < (int)(uint)*(byte *)(param_1 + 0x12));
      }
      *(undefined4 *)(param_1 + 0x14) = 8;
      ov81_02242D88(*(undefined4 *)(param_1 + 0x380),1);
      ov81_02242DE4(*(undefined4 *)(param_1 + 0x380),1);
      *(undefined1 *)(param_1 + 0x19) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 5:
    iVar2 = ov81_02242DD8(*(undefined4 *)(param_1 + 0x380));
    if (iVar2 != 1) {
      *(undefined1 *)(param_1 + 0x19) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 6:
    if (*(char *)(param_1 + 0x19) == '\0') {
      GfGfx_EngineATogglePlanes(2,0);
      if ((int)((uint)*(byte *)(param_1 + 0x13) << 0x1d) < 0) {
        uVar3 = 0;
        if (*(int *)(param_1 + 0x47c) != 0) {
          do {
            if (uVar3 == *(ushort *)(param_1 + 0x3c8)) {
              ov81_02241EDC(param_1,uVar3,0,0);
            }
            else {
              ov81_02241E68(param_1,uVar3,uVar3,1,param_4);
            }
            uVar3 = uVar3 + 1;
          } while (uVar3 < *(uint *)(param_1 + 0x47c));
        }
      }
      else {
        uVar3 = 0;
        if (*(int *)(param_1 + 0x47c) != 0) {
          do {
            ov81_02241E68(param_1,uVar3,uVar3,1,param_4);
            uVar3 = uVar3 + 1;
          } while (uVar3 < *(uint *)(param_1 + 0x47c));
        }
      }
      Pokepic_StartPaletteFadeAll(*(undefined4 *)(param_1 + 0x1a8),0x10,0,1,0xffff);
    }
    Pokepic_ResumePaletteFade(*(undefined4 *)(param_1 + 0x1ac));
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    if (0x14 < *(byte *)(param_1 + 0x19)) {
      ov81_02241398(param_1);
      *(byte *)(param_1 + 0x13) = *(byte *)(param_1 + 0x13) & 0xdf;
      iVar2 = func_0x02237254(*(undefined1 *)(param_1 + 9));
      if (iVar2 == 1) {
        *(undefined1 *)(param_1 + 0x463) = 1;
        ov81_02241144(param_1);
      }
      *(undefined1 *)(param_1 + 0x19) = 0;
      return 1;
    }
  }
  return 0;
}

