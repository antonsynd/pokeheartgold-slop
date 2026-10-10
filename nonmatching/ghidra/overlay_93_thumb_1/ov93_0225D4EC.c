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
undefined4 ov93_0225E3C4();
undefined4 sub_0203769C();
undefined4 func_0x022588a4() __asm__("sub_022588A4");
undefined4 FontID_String_GetWidth();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 Heap_Free();
undefined4 func_0x022588cc() __asm__("sub_022588CC");
undefined4 func_0x02028f68() __asm__("sub_02028F68");
extern undefined ov93_02262A68;

void ov93_0225D4EC(int *param_1)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  undefined4 uVar7;

  uVar1 = sub_0203769C();
  for (iVar6 = 0; iVar6 < (int)(uint)*(byte *)(*param_1 + 0x30); iVar6 = iVar6 + 1) {
    if (uVar1 != *(byte *)(*param_1 + iVar6 + 0x2c)) {
      uVar2 = func_0x022588cc();
      uVar2 = func_0x02028f68(uVar2,0x75);
      iVar3 = ov93_0225E3C4(param_1,*(undefined1 *)(*param_1 + iVar6 + 0x2c));
      iVar4 = func_0x022588a4(*param_1,*(undefined1 *)(*param_1 + iVar6 + 0x2c));
      if (iVar4 == 1) {
        uVar7 = 0x7080f;
      }
      else {
        uVar7 = 0x1020f;
      }
      uVar5 = FontID_String_GetWidth(0,uVar2,0);
      iVar4 = -((int)uVar5 / 2) + 0x28;
      if ((uVar5 & 1) != 0) {
        iVar4 = -((int)uVar5 / 2) + 0x27;
      }
      AddTextPrinterParameterizedWithColor
                (param_1 + (uint)(byte)(&ov93_02262A68)
                                       [iVar3 + (uint)*(byte *)(*param_1 + 0x30) * 4] * 4 + 0xc,0,
                 uVar2,iVar4,0,0,uVar7,0);
      Heap_Free(uVar2);
    }
  }
  return;
}

