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
undefined4 BufferNatureName();
undefined4 GetWindowWidth();
undefined4 ov83_02244A98();
undefined4 BufferBoxMonSpeciesName();
undefined4 FillWindowPixelBuffer();
undefined4 ov83_02245D08();
undefined4 ov83_02247768();
undefined4 BufferAbilityName();
undefined4 ov83_0224777C();
undefined4 Mon_GetBoxMon();
undefined4 BufferItemName();
undefined4 String_Delete();
undefined4 NewString_ReadMsgData();
undefined4 FontID_String_GetWidth();
undefined4 CopyWindowPixelsToVram_TextMode();
undefined4 ScheduleWindowCopyToVram();
undefined4 StringExpandPlaceholders();
undefined4 BufferMoveName();
undefined4 ov83_02247998();

void ov83_02246114(int param_1,int param_2)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uStack_18;
  
  iVar2 = ov83_0224777C(*(undefined4 *)(param_1 + 700),*(undefined1 *)(param_1 + 9),2);
  iVar3 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),*(undefined1 *)(param_1 + 0xd));
  FillWindowPixelBuffer(param_1 + 0x110,0);
  FillWindowPixelBuffer(param_1 + 0x120,0);
  FillWindowPixelBuffer(param_1 + 0x140,0);
  FillWindowPixelBuffer(param_1 + 0x160,0);
  FillWindowPixelBuffer(param_1 + 0x180,0);
  FillWindowPixelBuffer(param_1 + 0x1a0,0);
  FillWindowPixelBuffer(param_1 + 0x1c0,0);
  FillWindowPixelBuffer(param_1 + 0x1e0,0);
  FillWindowPixelBuffer(param_1 + 0x200,0);
  FillWindowPixelBuffer(param_1 + 0x220,0);
  FillWindowPixelBuffer(param_1 + 0x240,0);
  FillWindowPixelBuffer(param_1 + 0x260,0);
  FillWindowPixelBuffer(param_1 + 0x270,0);
  bVar1 = *(byte *)(param_1 + 0x5c6);
  if (-1 < (int)((uint)bVar1 << 0x18)) {
    if ((bVar1 & 0x7f) == 0) {
      ov83_022479E4(param_1 + 0x120,*(undefined4 *)(param_1 + 0x20),0x40,0,0,0,0x50600,0);
    }
    else if ((bVar1 & 0x7f) == 1) {
      ov83_022479E4(param_1 + 0x120,*(undefined4 *)(param_1 + 0x20),0x41,0,0,0,0x30400,0);
    }
  }
  ov83_02244A98(param_1,0,*(undefined1 *)(param_1 + 0x5c7),3,0);
  ov83_02245D08(param_1,param_1 + 0x140,*(undefined4 *)(param_1 + 0x20),0x48,0,0,0,0x10200,0);
  if (*(char *)(*(int *)(param_1 + 0x54c) + iVar3) == '\0') {
    ov83_022479E4(param_1 + 0x110,*(undefined4 *)(param_1 + 0x20),0x4b,0,0,0,0x10200,0);
    iVar5 = GetWindowWidth(param_1 + 0x1c0);
    ov83_022479E4(param_1 + 0x1c0,*(undefined4 *)(param_1 + 0x20),0x4d,iVar5 << 3,0,0,0x10200,1);
  }
  else {
    uVar4 = Mon_GetBoxMon(*(undefined4 *)(param_1 + 0x5bc));
    BufferBoxMonSpeciesName(*(undefined4 *)(param_1 + 0x24),0,uVar4);
    ov83_02245D08(param_1,param_1 + 0x110,*(undefined4 *)(param_1 + 0x20),0x45,0,0,0,0x10200,0);
    ov83_02244A98(param_1,0,*(undefined2 *)(param_1 + 0x5d0),3,0);
    ov83_02244A98(param_1,1,*(undefined2 *)(param_1 + 0x5d2),3,0);
    iVar5 = GetWindowWidth(param_1 + 0x1c0);
    ov83_02245D08(param_1,param_1 + 0x1c0,*(undefined4 *)(param_1 + 0x20),0x4e,iVar5 << 3,0,0,
                  0x10200,1);
  }
  if (*(char *)(*(int *)(param_1 + 0x554) + iVar3) == '\0') {
    ov83_022479E4(param_1 + 0x160,*(undefined4 *)(param_1 + 0x20),0x4b,0,0,0,0x10200,0);
    ov83_022479E4(param_1 + 0x180,*(undefined4 *)(param_1 + 0x20),0x4b,0,0,0,0x10200,0);
    ov83_022479E4(param_1 + 0x1a0,*(undefined4 *)(param_1 + 0x20),0x4b,0,0,0,0x10200,0);
    iVar5 = GetWindowWidth(param_1 + 0x1e0);
    ov83_022479E4(param_1 + 0x1e0,*(undefined4 *)(param_1 + 0x20),0x4a,iVar5 << 3,0,0,0x10200,1);
    iVar5 = GetWindowWidth(param_1 + 0x200);
    ov83_022479E4(param_1 + 0x200,*(undefined4 *)(param_1 + 0x20),0x4a,iVar5 << 3,0,0,0x10200,1);
    iVar5 = GetWindowWidth(param_1 + 0x220);
    ov83_022479E4(param_1 + 0x220,*(undefined4 *)(param_1 + 0x20),0x4a,iVar5 << 3,0,0,0x10200,1);
    iVar5 = GetWindowWidth(param_1 + 0x240);
    ov83_022479E4(param_1 + 0x240,*(undefined4 *)(param_1 + 0x20),0x4a,iVar5 << 3,0,0,0x10200,1);
    iVar5 = GetWindowWidth(param_1 + 0x260);
    ov83_022479E4(param_1 + 0x260,*(undefined4 *)(param_1 + 0x20),0x4a,iVar5 << 3,0,0,0x10200,1);
  }
  else {
    BufferAbilityName(*(undefined4 *)(param_1 + 0x24),0,*(undefined1 *)(param_1 + 0x5c8));
    ov83_02245D08(param_1,param_1 + 0x160,*(undefined4 *)(param_1 + 0x20),0x35,0,0,0,0x10200,0);
    BufferNatureName(*(undefined4 *)(param_1 + 0x24),0,*(undefined1 *)(param_1 + 0x5c9));
    ov83_02245D08(param_1,param_1 + 0x180,*(undefined4 *)(param_1 + 0x20),0x33,0,0,0,0x10200,0);
    BufferItemName(*(undefined4 *)(param_1 + 0x24),0,*(undefined2 *)(param_1 + 0x5ca));
    ov83_02245D08(param_1,param_1 + 0x1a0,*(undefined4 *)(param_1 + 0x20),0x31,0,0,0,0x10200,0);
    ov83_02244A98(param_1,0,*(undefined2 *)(param_1 + 0x5d4),3,0);
    iVar5 = GetWindowWidth(param_1 + 0x1e0);
    ov83_02245D08(param_1,param_1 + 0x1e0,*(undefined4 *)(param_1 + 0x20),0x37,iVar5 << 3,0,0,
                  0x10200,1);
    ov83_02244A98(param_1,0,*(undefined2 *)(param_1 + 0x5d6),3,0);
    iVar5 = GetWindowWidth(param_1 + 0x200);
    ov83_02245D08(param_1,param_1 + 0x200,*(undefined4 *)(param_1 + 0x20),0x3b,iVar5 << 3,0,0,
                  0x10200,1);
    ov83_02244A98(param_1,0,*(undefined2 *)(param_1 + 0x5d8),3,0);
    iVar5 = GetWindowWidth(param_1 + 0x220);
    ov83_02245D08(param_1,param_1 + 0x220,*(undefined4 *)(param_1 + 0x20),0x39,iVar5 << 3,0,0,
                  0x10200,1);
    ov83_02244A98(param_1,0,*(undefined2 *)(param_1 + 0x5da),3,0);
    iVar5 = GetWindowWidth(param_1 + 0x240);
    ov83_02245D08(param_1,param_1 + 0x240,*(undefined4 *)(param_1 + 0x20),0x3d,iVar5 << 3,0,0,
                  0x10200,1);
    ov83_02244A98(param_1,0,*(undefined2 *)(param_1 + 0x5dc),3,0);
    iVar5 = GetWindowWidth(param_1 + 0x260);
    ov83_02245D08(param_1,param_1 + 0x260,*(undefined4 *)(param_1 + 0x20),0x3f,iVar5 << 3,0,0,
                  0x10200,1);
  }
  if (iVar2 == 1) {
    ov83_022479E4(param_1 + 0x270,*(undefined4 *)(param_1 + 0x20),0x4c,0,0,0,0x10200,0);
  }
  else if (*(char *)(*(int *)(param_1 + 0x558) + iVar3) == '\0') {
    uStack_18 = 0;
    do {
      iVar3 = uStack_18 * 0x10;
      ov83_022479E4(param_1 + 0x270,*(undefined4 *)(param_1 + 0x20),0x4b,0,iVar3,0,0x10200,0);
      uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x20),0x44);
      uVar7 = FontID_String_GetWidth(0,uVar4,0);
      uVar7 = (uVar7 & 0x1ff) >> 1;
      ov83_02247998(param_1 + 0x270,uVar4,0x78,iVar3,0,0x10200,2);
      String_Delete(uVar4);
      uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x20),0x49);
      iVar2 = FontID_String_GetWidth(0,uVar4,0);
      ov83_02247998(param_1 + 0x270,uVar4,(0x78 - uVar7) - iVar2,iVar3,0,0x10200,0);
      String_Delete(uVar4);
      ov83_022479E4(param_1 + 0x270,*(undefined4 *)(param_1 + 0x20),0x49,uVar7 + 0x78,iVar3,0,
                    0x10200,0);
      uStack_18 = uStack_18 + 1 & 0xff;
    } while (uStack_18 < 4);
  }
  else {
    uVar7 = 0;
    do {
      iVar2 = param_1 + uVar7 * 2;
      BufferMoveName(*(undefined4 *)(param_1 + 0x24),uVar7,*(undefined2 *)(iVar2 + 0x5e0));
      ov83_02245D08(param_1,param_1 + 0x270,*(undefined4 *)(param_1 + 0x20),uVar7 + 0x54,0,
                    uVar7 << 4,0,0x10200,0);
      if (*(short *)(iVar2 + 0x5e0) == 0) {
        ov83_022479E4(param_1 + 0x270,*(undefined4 *)(param_1 + 0x20),0x5a,0x78,uVar7 << 4,0,0x10200
                      ,2);
      }
      else {
        uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x20),0x44);
        uVar6 = FontID_String_GetWidth(0,uVar4,0);
        uVar6 = (uVar6 & 0x1ff) >> 1;
        iVar2 = uVar7 << 4;
        ov83_02247998(param_1 + 0x270,uVar4,0x78,iVar2,0,0x10200,2);
        String_Delete(uVar4);
        ov83_02244A98(param_1,0,*(undefined1 *)(param_1 + uVar7 + 0x5e8),2,0);
        uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x20),0x59);
        StringExpandPlaceholders
                  (*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28),uVar4);
        iVar3 = FontID_String_GetWidth(0,*(undefined4 *)(param_1 + 0x28),0);
        ov83_02247998(param_1 + 0x270,*(undefined4 *)(param_1 + 0x28),(0x78 - uVar6) - iVar3,iVar2,0
                      ,0x10200,0);
        String_Delete(uVar4);
        ov83_02244A98(param_1,0,*(undefined1 *)(param_1 + uVar7 + 0x5ec),2,0);
        ov83_02245D08(param_1,param_1 + 0x270,*(undefined4 *)(param_1 + 0x20),0x59,uVar6 + 0x78,
                      iVar2,0,0x10200,0);
      }
      uVar7 = uVar7 + 1 & 0xff;
    } while (uVar7 < 4);
  }
  if (param_2 != 1) {
    CopyWindowPixelsToVram_TextMode(param_1 + 0x110);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x120);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x140);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x160);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x180);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x1a0);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x1c0);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x1e0);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x200);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x220);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x240);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x260);
    CopyWindowPixelsToVram_TextMode(param_1 + 0x270);
    return;
  }
  uVar7 = 0xc;
  do {
    ScheduleWindowCopyToVram(param_1 + 0x50 + uVar7 * 0x10);
    uVar7 = uVar7 + 1 & 0xff;
  } while (uVar7 < 0x23);
  return;
}

