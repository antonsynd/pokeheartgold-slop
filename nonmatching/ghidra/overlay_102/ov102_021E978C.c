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
undefined4 FontID_Alloc();
undefined4 InitBgFromTemplate();
undefined4 GfGfx_SetBanks();
undefined4 func_0x020cd9fc() __asm__("sub_020CD9FC");
undefined4 BgClearTilemapBufferAndCommit();
undefined4 SetBothScreensModesAndDisable();
extern ushort uRam04000304 __asm__("sub_04000304");

void ov102_021E978C(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  int iVar2;
  
  iVar2 = *param_1;
  uRam04000304 = uRam04000304 & 0x7fff;
  func_0x020cd9fc(1,0,1,param_4,param_4);
  GfGfx_SetBanks(0x21ec760);
  SetBothScreensModesAndDisable(0x21ec6a8);
  InitBgFromTemplate(*(undefined4 *)(iVar2 + 0x20),0,0x21ec728,0);
  InitBgFromTemplate(*(undefined4 *)(iVar2 + 0x20),1,0x21ec6d4,0);
  InitBgFromTemplate(*(undefined4 *)(iVar2 + 0x20),2,0x21ec6b8,0);
  InitBgFromTemplate(*(undefined4 *)(iVar2 + 0x20),3,0x21ec70c,0);
  InitBgFromTemplate(*(undefined4 *)(iVar2 + 0x20),4,0x21ec744,0);
  InitBgFromTemplate(*(undefined4 *)(iVar2 + 0x20),5,0x21ec6f0,0);
  uVar1 = 0;
  do {
    BgClearTilemapBufferAndCommit(*(undefined4 *)(iVar2 + 0x20),uVar1 & 0xff);
    uVar1 = uVar1 + 1;
  } while ((int)uVar1 < 6);
  FontID_Alloc(2,0x23);
  return;
}

