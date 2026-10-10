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
undefined4 StringExpandPlaceholders();
undefined4 func_0x0222a844() __asm__("sub_0222A844");
undefined4 FillWindowPixelBuffer();
undefined4 PlayerProfile_GetTrainerGender();
undefined4 CopyWindowToVram();
undefined4 String_New();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 func_0x02028f68() __asm__("sub_02028F68");
undefined4 NewString_ReadMsgData();
undefined4 GF_AssertFail();
undefined4 func_0x0222ec7c() __asm__("sub_0222EC7C");
undefined4 func_0x0222ec68() __asm__("sub_0222EC68");
undefined4 func_0x0222ab28() __asm__("sub_0222AB28");
undefined4 BufferString();
undefined4 String_Delete();
undefined4 Heap_Free();
undefined4 PlayerProfile_New();
undefined4 func_0x0222a578() __asm__("sub_0222A578");

void ov89_0225C724(undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
                  undefined4 param_5)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  
  uVar1 = func_0x0222ec7c(param_5);
  if (uVar1 != 0xffffffff) {
    iVar2 = func_0x0222ec68(param_5);
    if ((iVar2 != -1) && (iVar3 = func_0x0222a578(param_4,iVar2), iVar3 != 0)) {
      if (7 < uVar1) {
        GF_AssertFail();
        return;
      }
      uVar4 = PlayerProfile_New(0x7d);
      func_0x0222a844(iVar3,uVar4,0x7d);
      uVar5 = func_0x02028f68(uVar4,0x7d);
      uVar6 = PlayerProfile_GetTrainerGender(uVar4);
      BufferString(param_2,0,uVar5,uVar6,1,2);
      uVar6 = NewString_ReadMsgData(param_1,0);
      uVar7 = String_New(0x40,0x7d);
      StringExpandPlaceholders(param_2,uVar7,uVar6);
      iVar3 = uVar1 * 0x10;
      FillWindowPixelBuffer(param_3 + iVar3,0);
      iVar2 = func_0x0222ab28(param_4,iVar2);
      if (iVar2 == 1) {
        uVar8 = 0x70800;
      }
      else {
        uVar8 = 0x10200;
      }
      AddTextPrinterParameterizedWithColor(param_3 + iVar3,0,uVar7,0,0,0,uVar8,0);
      CopyWindowToVram(param_3 + iVar3);
      String_Delete(uVar5);
      String_Delete(uVar6);
      String_Delete(uVar7);
      Heap_Free(uVar4);
    }
  }
  return;
}

