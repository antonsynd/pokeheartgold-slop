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
undefined4 ov15_021FF058();
undefined4 NewString_ReadMsgData();
undefined4 YesNoPrompt_HandleInput();
undefined4 ov15_021FF004();
undefined4 FillWindowPixelBuffer();
undefined4 MoveIsHM();
undefined4 String_Delete();
undefined4 sub_020880CC();
undefined4 TextPrinterCheckActive();
undefined4 ReadMsgDataIntoString();
undefined4 BufferMoveName();
undefined4 TMHMGetMove();
undefined4 ov15_021FED3C();
undefined4 ov15_021FEF48();
undefined4 StringExpandPlaceholders();
extern uint uRam021d1154 __asm__("sub_021D1154");
extern short sRam021d1170 __asm__("sub_021D1170");
undefined4 ov15_02200294();
undefined4 ov15_021FA074();
undefined4 ClearWindowTilemapAndScheduleTransfer();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov15_021FD788();
undefined4 ov15_02200140();
undefined4 ov15_021FE868();
undefined4 ov15_021FB518();
undefined4 ClearFrameAndWindow2();

undefined4 ov15_021FB830(int param_1)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  
  switch(*(undefined1 *)(param_1 + 0x67b)) {
  case 0:
    uVar3 = TMHMGetMove(*(undefined2 *)(*(int *)(param_1 + 0x234) + 0x66));
    BufferMoveName(*(undefined4 *)(param_1 + 0x2f4),0,uVar3);
    iVar2 = MoveIsHM(uVar3);
    if (iVar2 == 1) {
      ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x2f0),0x3c,*(undefined4 *)(param_1 + 0x5e4));
    }
    else {
      ReadMsgDataIntoString(*(undefined4 *)(param_1 + 0x2f0),0x3b,*(undefined4 *)(param_1 + 0x5e4));
    }
    uVar1 = ov15_021FEF48(param_1,0);
    *(undefined1 *)(param_1 + 0x616) = uVar1;
    *(undefined1 *)(param_1 + 0x67b) = 1;
    break;
  case 1:
    iVar2 = TextPrinterCheckActive(*(undefined1 *)(param_1 + 0x616));
    if ((iVar2 == 0) && (((uRam021d1154 & 3) != 0 || (sRam021d1170 != 0)))) {
      uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x2f0),0x3d);
      FillWindowPixelBuffer(param_1 + 0x34,0xf);
      StringExpandPlaceholders
                (*(undefined4 *)(param_1 + 0x2f4),*(undefined4 *)(param_1 + 0x5e4),uVar3);
      String_Delete(uVar3);
      uVar1 = ov15_021FEF48(param_1,0);
      *(undefined1 *)(param_1 + 0x616) = uVar1;
      *(undefined1 *)(param_1 + 0x67b) = 2;
    }
    break;
  case 2:
    iVar2 = TextPrinterCheckActive(*(undefined1 *)(param_1 + 0x616));
    if (iVar2 == 0) {
      ov15_021FF004(param_1);
      *(undefined1 *)(param_1 + 0x67b) = 3;
    }
    break;
  case 3:
    iVar2 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x804));
    if (iVar2 == 1) {
      ov15_021FF058(param_1);
      sub_020880CC(1,6);
      *(undefined2 *)(*(int *)(param_1 + 0x234) + 0x68) = 0;
      return 0x25;
    }
    if (iVar2 == 2) {
      ov15_021FF058(param_1);
      ov15_021FED3C(param_1);
      ClearFrameAndWindow2(param_1 + 0x34,1);
      ClearWindowTilemapAndScheduleTransfer(param_1 + 0x34);
      ScheduleWindowCopyToVram(param_1 + 4);
      iVar2 = *(int *)(param_1 + 0x234);
      uVar3 = ov15_021FA074(param_1);
      ov15_02200140(param_1,iVar2 + 4 + (uint)*(byte *)(iVar2 + 100) * 0xc,uVar3,0);
      ov15_021FE868(param_1);
      ov15_02200294(param_1);
      ov15_021FB518(param_1);
      ov15_021FD788(param_1,1);
      return 1;
    }
  }
  return 0xd;
}

