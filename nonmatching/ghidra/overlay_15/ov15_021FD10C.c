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
undefined4 ov15_021FA074();
undefined4 YesNoPrompt_HandleInput();
undefined4 NewString_ReadMsgData();
undefined4 ClearWindowTilemapAndScheduleTransfer();
undefined4 String_Delete();
undefined4 sub_0200E5D4();
undefined4 ov15_021FED3C();
undefined4 ov15_021FEF48();
undefined4 BufferItemName();
undefined4 ScheduleWindowCopyToVram();
undefined4 ov15_02200140();
undefined4 func_0x0200c134() __asm__("sub_0200C134");
undefined4 BufferIntegerAsString();
undefined4 ov15_021FE868();
undefined4 ov15_021FB518();
undefined4 StringExpandPlaceholders();
undefined4 ClearFrameAndWindow2();
undefined4 ov15_02200458();
undefined4 ov15_021FD788();

undefined8 ov15_021FD10C(int param_1)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 extraout_r1;
  
  iVar2 = YesNoPrompt_HandleInput(*(undefined4 *)(param_1 + 0x804));
  if (iVar2 == 1) {
    ov15_021FF058(param_1);
    uVar3 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x2f0),0x4f);
    if (*(short *)(param_1 + 0x680) < 2) {
      BufferItemName(*(undefined4 *)(param_1 + 0x2f4),0,
                     *(undefined2 *)(*(int *)(param_1 + 0x234) + 0x66));
    }
    else {
      func_0x0200c134(*(undefined4 *)(param_1 + 0x2f4),0,
                      *(undefined2 *)(*(int *)(param_1 + 0x234) + 0x66));
    }
    BufferIntegerAsString
              (*(undefined4 *)(param_1 + 0x2f4),1,
               (int)*(short *)(param_1 + 0x680) * *(int *)(param_1 + 0x684),6,0,1);
    StringExpandPlaceholders
              (*(undefined4 *)(param_1 + 0x2f4),*(undefined4 *)(param_1 + 0x5e4),uVar3);
    String_Delete(uVar3);
    uVar1 = ov15_021FEF48(param_1,0);
    *(undefined1 *)(param_1 + 0x616) = uVar1;
    return 0x61600000017;
  }
  if (iVar2 != 2) {
    return 0xffffffff00000016;
  }
  ov15_021FF058(param_1);
  *(undefined4 *)(param_1 + 0x684) = 0;
  sub_0200E5D4(param_1 + 0x214,1);
  ClearFrameAndWindow2(param_1 + 0x34,1);
  ClearWindowTilemapAndScheduleTransfer(param_1 + 0x34);
  ScheduleWindowCopyToVram(param_1 + 4);
  iVar2 = *(int *)(param_1 + 0x234);
  uVar3 = ov15_021FA074(param_1);
  ov15_02200140(param_1,iVar2 + 4 + (uint)*(byte *)(iVar2 + 100) * 0xc,uVar3,0);
  ov15_021FE868(param_1);
  ov15_021FED3C(param_1);
  ov15_021FB518(param_1);
  ov15_02200458(param_1,1);
  ov15_021FD788(param_1,1);
  return CONCAT44(extraout_r1,0x10);
}

