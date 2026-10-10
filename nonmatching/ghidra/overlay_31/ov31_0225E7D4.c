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
undefined4 Options_GetTextFrameDelay();
undefined4 NewString_ReadMsgData();
undefined4 DrawFrameAndWindow2();
undefined4 FillWindowPixelBuffer();
undefined4 ov31_0225E4EC();
undefined4 String_Delete();
undefined4 GetItemAttr();
undefined4 ov31_0225E4BC();
undefined4 AddTextPrinterParameterized();
undefined4 BufferPocketName();
undefined4 StringExpandPlaceholders();

void ov31_0225E7D4(int param_1)

{
  ushort uVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  
  iVar5 = *(int *)(param_1 + 0x14);
  if (*(short *)(iVar5 + 0x286) < 2) {
    ov31_0225E4BC(*(undefined1 *)(iVar5 + 0x283),*(undefined4 *)(param_1 + 0x154),
                  *(undefined2 *)(iVar5 + 0x284),0);
  }
  else {
    ov31_0225E4EC(*(undefined1 *)(iVar5 + 0x283),*(undefined4 *)(param_1 + 0x154),
                  *(undefined2 *)(iVar5 + 0x284),0);
  }
  switch(*(undefined1 *)(*(int *)(param_1 + 0x14) + 0x283)) {
  case 0:
    uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x158),0xf);
    uVar3 = GetItemAttr(*(undefined2 *)(*(int *)(param_1 + 0x14) + 0x284),5,0xb);
    BufferPocketName(*(undefined4 *)(param_1 + 0x154),1,uVar3);
    break;
  case 1:
    uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x158),0x15);
    break;
  default:
    uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x158),0x17);
    break;
  case 3:
    uVar1 = *(ushort *)(*(int *)(param_1 + 0x14) + 0x284);
    if ((uVar1 < 0x1e5) || (0x1eb < uVar1)) {
      uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x158),0xf);
      uVar3 = GetItemAttr(*(undefined2 *)(*(int *)(param_1 + 0x14) + 0x284),5,0xb);
      BufferPocketName(*(undefined4 *)(param_1 + 0x154),1,uVar3);
    }
    else {
      uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x158),0x31);
    }
    break;
  case 4:
    uVar4 = NewString_ReadMsgData(*(undefined4 *)(param_1 + 0x158),0x31);
  }
  StringExpandPlaceholders(*(undefined4 *)(param_1 + 0x154),*(undefined4 *)(param_1 + 0x188),uVar4);
  String_Delete(uVar4);
  FillWindowPixelBuffer(param_1 + 0x44,0xf);
  DrawFrameAndWindow2(param_1 + 0x44,1,0x1b5,5);
  uVar4 = Options_GetTextFrameDelay(*(undefined4 *)(param_1 + 0x164));
  uVar2 = AddTextPrinterParameterized
                    (param_1 + 0x44,1,*(undefined4 *)(param_1 + 0x188),0,0,uVar4,0x225e949);
  *(undefined1 *)(*(int *)(param_1 + 0x14) + 0x280) = uVar2;
  return;
}

