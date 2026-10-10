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
undefined4 ov83_022479E4();
undefined4 String_Delete();
undefined4 ov83_02240C48();
undefined4 GetWindowWidth();
undefined4 FillWindowPixelBuffer();
undefined4 StringExpandPlaceholders();
undefined4 BufferMoveName();
undefined4 BufferItemName();
undefined4 ov83_02247998();
undefined4 NewString_ReadMsgData();
undefined4 ov83_02241DD8();
undefined4 BufferNatureName();
undefined4 BufferBoxMonNickname();
undefined4 FontID_String_GetWidth();
undefined4 CopyWindowPixelsToVram_TextMode();
undefined4 BufferAbilityName();
undefined4 Mon_GetBoxMon();
undefined4 ScheduleWindowCopyToVram();

void ov83_022421E0(int param_1,int param_2)

{
  byte bVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  int iStack_2c;
  
  FillWindowPixelBuffer(param_1 + 0x170,0);
  FillWindowPixelBuffer(param_1 + 0x180,0);
  FillWindowPixelBuffer(param_1 + 0x1a0,0);
  FillWindowPixelBuffer(param_1 + 0x1c0,0);
  FillWindowPixelBuffer(param_1 + 0x1e0,0);
  FillWindowPixelBuffer(param_1 + 0x200,0);
  FillWindowPixelBuffer(param_1 + 0x220,0);
  FillWindowPixelBuffer(param_1 + 0x240,0);
  FillWindowPixelBuffer(param_1 + 0x260,0);
  FillWindowPixelBuffer(param_1 + 0x280,0);
  FillWindowPixelBuffer(param_1 + 0x2a0,0);
  FillWindowPixelBuffer(param_1 + 0x2c0,0);
  FillWindowPixelBuffer(param_1 + 0x2d0,0);
  FillWindowPixelBuffer(param_1 + 0x2e0,0);
  FillWindowPixelBuffer(param_1 + 0x2f0,0);
  FillWindowPixelBuffer(param_1 + 0x300,0);
  FillWindowPixelBuffer(param_1 + 0x310,0);
  FillWindowPixelBuffer(param_1 + 800,0);
  FillWindowPixelBuffer(param_1 + 0x330,0);
  FillWindowPixelBuffer(param_1 + 0x340,0);
  uVar2 = Mon_GetBoxMon(*(undefined4 *)(param_1 + 0x804));
  BufferBoxMonNickname(*(undefined4 *)(param_1 + 0x24),0,uVar2);
  ov83_02241DD8(param_1,param_1 + 0x170,*(undefined4 *)(param_1 + 0x20),0x5b,0,0,0,0x10200,0);
  bVar1 = *(byte *)(param_1 + 0x80e);
  if (-1 < (int)((uint)bVar1 << 0x18)) {
    if ((bVar1 & 0x7f) == 0) {
      ov83_022479E4(param_1 + 0x180,*(undefined4 *)(param_1 + 0x20),0x56,0,0,0,0x50600,0);
    }
    else if ((bVar1 & 0x7f) == 1) {
      ov83_022479E4(param_1 + 0x180,*(undefined4 *)(param_1 + 0x20),0x57,0,0,0,0x30400,0);
    }
  }
  ov83_02240C48(param_1,0,*(undefined1 *)(param_1 + 0x80f),3,0);
  ov83_02241DD8(param_1,param_1 + 0x1a0,*(undefined4 *)(param_1 + 0x20),0x5e,0,0,0,0x10200,0);
  BufferAbilityName(*(undefined4 *)(param_1 + 0x24),0,*(undefined1 *)(param_1 + 0x810));
  ov83_02241DD8(param_1,param_1 + 0x1c0,*(undefined4 *)(param_1 + 0x20),0x4b,0,0,0,0x10200,0);
  BufferNatureName(*(undefined4 *)(param_1 + 0x24),0,*(undefined1 *)(param_1 + 0x811));
  ov83_02241DD8(param_1,param_1 + 0x1e0,*(undefined4 *)(param_1 + 0x20),0x49,0,0,0,0x10200,0);
  BufferItemName(*(undefined4 *)(param_1 + 0x24),0,*(undefined2 *)(param_1 + 0x812));
  ov83_02241DD8(param_1,param_1 + 0x200,*(undefined4 *)(param_1 + 0x20),0x47,0,0,0,0x10200,0);
  ov83_02240C48(param_1,0,*(undefined2 *)(param_1 + 0x818),3,0);
  ov83_02240C48(param_1,1,*(undefined2 *)(param_1 + 0x81a),3,0);
  iVar3 = GetWindowWidth(param_1 + 0x220);
  ov83_02241DD8(param_1,param_1 + 0x220,*(undefined4 *)(param_1 + 0x20),0x5f,iVar3 << 3,0,0,0x10200,
                1);
  ov83_02240C48(param_1,0,*(undefined2 *)(param_1 + 0x81c),3,0);
  iVar3 = GetWindowWidth(param_1 + 0x240);
  ov83_02241DD8(param_1,param_1 + 0x240,*(undefined4 *)(param_1 + 0x20),0x4d,iVar3 << 3,0,0,0x10200,
                1);
  ov83_02240C48(param_1,0,*(undefined2 *)(param_1 + 0x81e),3,0);
  iVar3 = GetWindowWidth(param_1 + 0x260);
  ov83_02241DD8(param_1,param_1 + 0x260,*(undefined4 *)(param_1 + 0x20),0x51,iVar3 << 3,0,0,0x10200,
                1);
  ov83_02240C48(param_1,0,*(undefined2 *)(param_1 + 0x820),3,0);
  iVar3 = GetWindowWidth(param_1 + 0x280);
  ov83_02241DD8(param_1,param_1 + 0x280,*(undefined4 *)(param_1 + 0x20),0x4f,iVar3 << 3,0,0,0x10200,
                1);
  ov83_02240C48(param_1,0,*(undefined2 *)(param_1 + 0x822),3,0);
  iVar3 = GetWindowWidth(param_1 + 0x2a0);
  ov83_02241DD8(param_1,param_1 + 0x2a0,*(undefined4 *)(param_1 + 0x20),0x53,iVar3 << 3,0,0,0x10200,
                1);
  ov83_02240C48(param_1,0,*(undefined2 *)(param_1 + 0x824),3,0);
  iVar3 = GetWindowWidth(param_1 + 0x2c0);
  ov83_02241DD8(param_1,param_1 + 0x2c0,*(undefined4 *)(param_1 + 0x20),0x55,iVar3 << 3,0,0,0x10200,
                1);
  uVar7 = 0;
  iVar3 = param_1 + 0x50;
  iStack_2c = param_1;
  do {
    BufferMoveName(*(undefined4 *)(param_1 + 0x24),uVar7,*(undefined2 *)(iStack_2c + 0x828));
    ov83_02241DD8(param_1,iVar3 + (uVar7 + 0x28) * 0x10,*(undefined4 *)(param_1 + 0x20),uVar7 + 0x60
                  ,0,0,0,0x10200,0);
    if (*(short *)(iStack_2c + 0x828) == 0) {
      iVar8 = (uVar7 + 0x2c) * 0x10;
      iVar4 = GetWindowWidth(iVar3 + iVar8);
      ov83_022479E4(iVar3 + iVar8,*(undefined4 *)(param_1 + 0x20),0x66,(iVar4 * 8) / 2,0,0,0x10200,2
                   );
    }
    else {
      uVar2 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x20),0x5a);
      uVar5 = FontID_String_GetWidth(0,uVar2,0);
      uVar5 = (uVar5 & 0x1ffff) >> 1;
      iVar8 = (uVar7 + 0x2c) * 0x10;
      iVar4 = GetWindowWidth(iVar3 + iVar8);
      uVar6 = (iVar4 * 8 - (iVar4 * 8 >> 0x1f) & 0x1ffffU) >> 1;
      ov83_02247998(iVar3 + iVar8,uVar2,uVar6,0,0,0x10200,2);
      String_Delete(uVar2);
      ov83_02240C48(param_1,0,*(undefined1 *)(param_1 + uVar7 + 0x830),2,0);
      uVar2 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x20),0x65);
      StringExpandPlaceholders
                (*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28),uVar2);
      iVar4 = FontID_String_GetWidth(0,*(undefined4 *)(param_1 + 0x28),0);
      ov83_02247998(iVar3 + iVar8,*(undefined4 *)(param_1 + 0x28),(uVar6 - uVar5) - iVar4,0,0,
                    0x10200,0);
      String_Delete(uVar2);
      ov83_02240C48(param_1,0,*(undefined1 *)(param_1 + uVar7 + 0x834),2,0);
      ov83_02241DD8(param_1,iVar3 + iVar8,*(undefined4 *)(param_1 + 0x20),0x65,uVar6 + uVar5,0,0,
                    0x10200,0);
    }
    uVar7 = uVar7 + 1;
    iStack_2c = iStack_2c + 2;
  } while (uVar7 < 4);
  if (param_2 != 1) {
    CopyWindowPixelsToVram_TextMode(param_1 + 0x170);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x180);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x1a0);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x1c0);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x1e0);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x200);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x220);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x240);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x260);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x280);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x2a0);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x2c0);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x2d0);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x2e0);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x2f0);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x300);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x310);
    CopyWindowPixelsToVram_TextMode(param_1 + 800);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x330);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x340);
    return;
  }
  uVar7 = 0x12;
  param_1 = param_1 + 0x170;
  do {
    ScheduleWindowCopyToVram(param_1);
    uVar7 = uVar7 + 1;
    param_1 = param_1 + 0x10;
  } while (uVar7 < 0x30);
  return;
}

