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
undefined4 FillWindowPixelBuffer();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 ClearWindowTilemapAndScheduleTransfer();
undefined4 func_0x02236dd4() __asm__("sub_02236DD4");
undefined4 ov81_0224093C();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov81_02240AD8();

void ov81_02241144(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;

  iVar1 = func_0x02236dd4(*(undefined1 *)(param_1 + 9));
  if ((*(byte *)(param_1 + 0x13) & 0x3f) >> 5 == 1) {
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0x60);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0xa0);
    ClearWindowTilemapAndScheduleTransfer(param_1 + 0xb0);
    GfGfx_EngineATogglePlanes(4,0);
    return;
  }
  if (*(char *)(param_1 + 0x463) == '\x01') {
    iVar3 = 0;
    if (0 < iVar1) {
      iVar5 = param_1 + 0x50;
      iVar4 = param_1;
      do {
        iVar2 = (iVar3 + 5) * 0x10;
        FillWindowPixelBuffer(iVar5 + iVar2,0);
        if (iVar3 < (int)(uint)*(byte *)(param_1 + 0x18)) {
          ov81_02240AD8(param_1,iVar5 + iVar2,0,0,0xf,2,0,0,*(undefined2 *)(iVar4 + 0x45a),
                        *(ushort *)(iVar4 + 0x45e) & 0xff,iVar1,iVar2,param_4);
        }
        ScheduleWindowCopyToVram(iVar5 + iVar2);
        iVar3 = iVar3 + 1;
        iVar4 = iVar4 + 2;
      } while (iVar3 < iVar1);
    }
    ov81_0224093C(param_1,param_1 + 0x60,0,0,0);
    GfGfx_EngineATogglePlanes(4,1);
  }
  *(undefined1 *)(param_1 + 0x463) = 0;
  return;
}

