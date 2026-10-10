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
undefined4 String_Delete();
undefined4 NewMsgDataFromNarc();
undefined4 ReadMsgData_ExpandPlaceholders();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 FillWindowPixelBuffer();
undefined4 MessageFormat_New();
undefined4 AddWindowParameterized();
extern undefined UNK_0223c70c __asm__("sub_0223C70C");
extern undefined UNK_0223c704 __asm__("sub_0223C704");
extern undefined ov74_0223C700;
extern undefined UNK_0223c71c __asm__("sub_0223C71C");
extern undefined UNK_0223c718 __asm__("sub_0223C718");
extern undefined UNK_0223c710 __asm__("sub_0223C710");
extern undefined UNK_0223c720 __asm__("sub_0223C720");
extern undefined UNK_0223c724 __asm__("sub_0223C724");
extern undefined UNK_0223c714 __asm__("sub_0223C714");
extern undefined UNK_0223c708 __asm__("sub_0223C708");
undefined4 DestroyMsgData();
undefined4 DrawFrameAndWindow2();
undefined4 MessageFormat_Delete();
undefined4 DrawFrameAndWindow1();

int ov74_0222F1BC(int param_1,int *param_2,int param_3,uint param_4)

{
  undefined4 uVar1;
  
  param_3 = param_3 * 0x30;
  if (*param_2 == 0) {
    AddWindowParameterized
              (*(undefined4 *)(param_1 + 0x29fc),param_2,2,*(uint *)(&UNK_0223c704 + param_3) & 0xff
               ,*(uint *)(&UNK_0223c708 + param_3) & 0xff,*(uint *)(&UNK_0223c70c + param_3) & 0xff,
               *(uint *)(&UNK_0223c710 + param_3) & 0xff,0xf,param_4 & 0xffff);
  }
  FillWindowPixelBuffer(param_2,*(uint *)(&UNK_0223c71c + param_3) & 0xff);
  if (*(int *)(&UNK_0223c720 + param_3) != 0) {
    uVar1 = NewMsgDataFromNarc(1,0x1b,0xf7,0x55);
    *(undefined4 *)(param_1 + 0x2a04) = uVar1;
    uVar1 = MessageFormat_New(0x55);
    *(undefined4 *)(param_1 + 0x2a00) = uVar1;
  }
  *(uint *)(param_1 + 0x2b98) = param_4;
  *(undefined **)(param_1 + 0x2b9c) = &ov74_0223C700 + param_3;
  (**(code **)(&UNK_0223c724 + param_3))(param_1,param_2,0x10200);
  if (*(int *)(&UNK_0223c720 + param_3) != 0) {
    uVar1 = ReadMsgData_ExpandPlaceholders
                      (*(undefined4 *)(param_1 + 0x2a00),*(undefined4 *)(param_1 + 0x2a04),
                       *(int *)(&UNK_0223c720 + param_3),0x55);
    AddTextPrinterParameterizedWithColor
              (param_2,*(undefined4 *)(&UNK_0223c714 + param_3),uVar1,0,0,0xff,
               *(undefined4 *)(&UNK_0223c718 + param_3),0);
    String_Delete(uVar1);
    DestroyMsgData(*(undefined4 *)(param_1 + 0x2a04));
    MessageFormat_Delete(*(undefined4 *)(param_1 + 0x2a00));
  }
  if (param_2 == (int *)(param_1 + 0x2bc4)) {
    DrawFrameAndWindow2(param_2,0,0x13,10);
  }
  else {
    DrawFrameAndWindow1(param_2,0,10,0xe);
  }
  return param_4 + *(int *)(&UNK_0223c70c + param_3) * *(int *)(&UNK_0223c710 + param_3);
}

