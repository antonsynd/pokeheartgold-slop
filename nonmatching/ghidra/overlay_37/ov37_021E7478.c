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
undefined4 FillWindowPixelRect();
undefined4 func_0x02028f58() __asm__("sub_02028F58");
undefined4 sub_0203769C();
undefined4 ov37_021E75E8();
undefined4 CopyWindowToVram();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 Sprite_SetDrawFlag();

void ov37_021E7478(int param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uStack_18;
  
  iVar1 = sub_0203769C();
  iVar2 = ov37_021E75E8(param_4);
  if (iVar2 != 0) {
    uStack_18 = 0;
    iVar2 = param_4;
    iVar3 = param_4;
    do {
      if (*(int *)(iVar3 + 0x334) == 0) {
        Sprite_SetDrawFlag(*(undefined4 *)(iVar2 + 0x210),0);
      }
      else {
        Sprite_SetDrawFlag(*(undefined4 *)(iVar2 + 0x210),1);
      }
      iVar3 = iVar3 + 8;
      uStack_18 = uStack_18 + 1;
      iVar2 = iVar2 + 4;
    } while (uStack_18 < 5);
    iVar3 = 0;
    iVar2 = param_1;
    do {
      FillWindowPixelRect(iVar2,0,0,0,0x50,0x10);
      iVar3 = iVar3 + 1;
      iVar2 = iVar2 + 0x10;
    } while (iVar3 < 5);
    iVar3 = 0;
    iVar2 = param_4;
    do {
      if (*(int *)(iVar2 + 0x334) != 0) {
        func_0x02028f58(*(int *)(iVar2 + 0x334),*(undefined4 *)(param_4 + 0x14));
        if (iVar1 == iVar3) {
          AddTextPrinterParameterizedWithColor
                    (param_1,1,*(undefined4 *)(param_4 + 0x14),0,0,0xff,0x3040f,0);
        }
        else {
          AddTextPrinterParameterizedWithColor
                    (param_1,1,*(undefined4 *)(param_4 + 0x14),0,0,0xff,param_3,0);
        }
      }
      CopyWindowToVram(param_1);
      iVar3 = iVar3 + 1;
      iVar2 = iVar2 + 8;
      param_4 = param_4 + 4;
      param_1 = param_1 + 0x10;
    } while (iVar3 < 5);
  }
  return;
}

