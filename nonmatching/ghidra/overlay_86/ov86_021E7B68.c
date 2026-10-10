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
undefined4 ov86_021E668C();
undefined4 BgTilemapRectChangePalette();
undefined4 GetWindowWidth();
undefined4 ov86_021E78B8();
undefined4 ScheduleBgTilemapBufferTransfer();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov86_021E6064();

void ov86_021E7B68(int param_1)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iStack_28;
  
  if (*(short *)(param_1 + 0x25e) == 0) {
    iStack_28 = 5;
  }
  else {
    iStack_28 = 0xd;
  }
  uVar5 = 0;
  uVar2 = (int)*(char *)(param_1 + 0x25c) & 0x1fff;
  iVar6 = param_1 + 0x10;
  do {
    iVar3 = (iStack_28 + uVar5) * 0x10;
    FillWindowPixelBuffer(iVar6 + iVar3,0);
    iVar4 = param_1 + (uint)*(ushort *)(param_1 + 600) * 8;
    bVar1 = *(uint *)(iVar4 + 0x264) <= uVar2 * 8 + uVar5;
    if (!bVar1) {
      ov86_021E668C(param_1,*(undefined2 *)(uVar5 * 2 + uVar2 * 0x10 + *(int *)(iVar4 + 0x260)));
      iVar4 = GetWindowWidth(iVar6 + iVar3);
      ov86_021E6064(param_1,iStack_28 + uVar5,0x13,(iVar4 * 8) / 2,0,4,0xf0100,2);
    }
    ScheduleWindowCopyToVram(iVar6 + iVar3);
    ov86_021E78B8(param_1,uVar5);
    BgTilemapRectChangePalette
              (*(undefined4 *)(param_1 + 0xc),2,*(undefined1 *)(param_1 + 0x250),
               *(undefined1 *)(param_1 + 0x251),*(undefined1 *)(param_1 + 0x252),
               *(undefined1 *)(param_1 + 0x253),bVar1);
    uVar5 = uVar5 + 1 & 0xff;
  } while (uVar5 < 8);
  ScheduleBgTilemapBufferTransfer(*(undefined4 *)(param_1 + 0xc),2);
  *(ushort *)(param_1 + 0x25e) = *(ushort *)(param_1 + 0x25e) ^ 1;
  return;
}

