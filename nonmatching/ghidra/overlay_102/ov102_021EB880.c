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
undefined4 ov102_021EC4A4();
undefined4 GF_AssertFail();
undefined4 PutWindowTilemap();
undefined4 String_Delete();
undefined4 sub_02091C74();
undefined4 AddWindowParameterized();
undefined4 ov102_021EC4A8();
undefined4 CopyWindowPixelsToVram_TextMode();
undefined4 ov102_021EC4CC();
undefined4 FillWindowPixelBuffer();
undefined4 RemoveWindow();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 String_New();

void ov102_021EB880(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined4 uStack_30;
  int iStack_2c;
  undefined1 auStack_28 [16];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  if (0x337 < param_3) {
    GF_AssertFail();
  }
  AddWindowParameterized(param_2,auStack_28,1,0x22,10,0x19,8,0xb,param_3 & 0xffff);
  uVar1 = String_New(4,0x23);
  FillWindowPixelBuffer(auStack_28,0xf);
  uVar2 = ov102_021EC4A4();
  uVar5 = 0;
  if (uVar2 != 0) {
    do {
      ov102_021EC4A8(uVar5,uVar1);
      ov102_021EC4CC(uVar5,&iStack_2c,&uStack_30);
      iVar3 = sub_02091C74(*(undefined4 *)(param_1 + 8),uVar5);
      if (iVar3 == 0) {
        uVar4 = 0x3040f;
      }
      else {
        uVar4 = 0x1020f;
      }
      AddTextPrinterParameterizedWithColor(auStack_28,0,uVar1,iStack_2c + 3,uStack_30,0xff,uVar4,0);
      uVar5 = uVar5 + 1;
    } while (uVar5 < uVar2);
  }
  CopyWindowPixelsToVram_TextMode(auStack_28);
  PutWindowTilemap(auStack_28);
  String_Delete(uVar1);
  RemoveWindow(auStack_28);
  return;
}

