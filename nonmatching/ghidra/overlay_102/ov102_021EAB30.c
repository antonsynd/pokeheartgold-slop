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
undefined4 ov102_021E8F90();
undefined4 String_Delete();
undefined4 ov102_021E8FA8();
undefined4 ov102_021EAD70();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 ov102_021EAC70();
undefined4 ov102_021EAC7C();
undefined4 FontID_String_GetWidth();
undefined4 ov102_021EAC44();
undefined4 ov102_021EAD98();

int ov102_021EAB30(int param_1,undefined4 param_2)

{
  bool bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iStack_24;

  uVar2 = ov102_021E8FA8(*(undefined4 *)(param_1 + 4),0x23);
  iVar5 = 0;
  bVar1 = true;
  iStack_24 = 0;
  iVar6 = 0;
  ov102_021EAC44(param_1 + 0x94,param_1);
  iVar7 = param_1 + 0x84;
  iVar8 = param_1;
  do {
    uVar3 = ov102_021EAC7C(param_1 + 0x94,uVar2);
    switch(uVar3) {
    case 0:
      AddTextPrinterParameterizedWithColor(param_2,1,uVar2,iVar6,iVar5,0xff,0x3040d,0);
      iVar4 = FontID_String_GetWidth(1,uVar2,0);
      iVar6 = iVar6 + iVar4;
      break;
    case 1:
      *(short *)(iVar8 + 0x84) = (short)iVar6 + 0x32;
      *(short *)(iVar8 + 0x86) = (short)iVar5 + 8;
      ov102_021EAD70(param_2,iVar7);
      iVar4 = ov102_021E8F90(*(undefined4 *)(param_1 + 4),iStack_24);
      if (iVar4 != 0xffff) {
        ov102_021EAD98(param_1,param_2,iVar7);
      }
      iVar8 = iVar8 + 4;
      iStack_24 = iStack_24 + 1;
      iVar7 = iVar7 + 4;
      iVar6 = iVar6 + 100;
      break;
    case 2:
      iVar5 = iVar5 + 0x10;
      iVar6 = 0;
      break;
    case 3:
      bVar1 = false;
    }
  } while (bVar1);
  ov102_021EAC70();
  String_Delete(uVar2);
  return iStack_24;
}

