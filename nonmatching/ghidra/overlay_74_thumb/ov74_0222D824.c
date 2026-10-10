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
undefined4 ov74_0222DB70();
undefined4 MessageFormat_Delete();
undefined4 MessageFormat_New();
undefined4 CopyWindowToVram();
undefined4 String_Delete();
undefined4 GetFontAttribute();
undefined4 AddTextPrinterParameterizedWithColor();
undefined4 FillWindowPixelBuffer();
undefined4 RemoveWindow();
undefined4 DestroyMsgData();
undefined4 ClearWindowTilemapAndCopyToVram();
undefined4 NewMsgDataFromNarc();
undefined4 FontID_String_GetCenterAlignmentX();
undefined4 ov74_0222DCD4();
undefined4 ReadMsgData_ExpandPlaceholders();
undefined4 AddWindowParameterized();
extern undefined ov74_0223C340;

void ov74_0222D824(undefined4 *param_1,undefined4 param_2,int param_3)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  uint uStack_30;
  undefined4 *puStack_2c;
  undefined4 *puStack_28;
  undefined4 *puStack_24;
  uint uStack_1c;
  uint uStack_18;

  piVar4 = (int *)&ov74_0223C340;
  uVar1 = NewMsgDataFromNarc(1,0x1b,0xf7,*param_1);
  param_1[0xa81] = uVar1;
  uVar1 = MessageFormat_New(*param_1);
  param_1[0xa80] = uVar1;
  param_1[0xaf1] = param_3;
  ov74_0222DB70(param_1,param_3);
  uStack_18 = 0;
  piVar6 = (int *)&ov74_0223C340;
  puVar5 = param_1 + 0xa82;
  puStack_2c = param_1;
  do {
    if (((param_3 != *piVar6) && (*piVar6 != 2)) && (puStack_2c[0xa82] != 0)) {
      ClearWindowTilemapAndCopyToVram(puVar5);
      RemoveWindow(puVar5);
    }
    piVar6 = piVar6 + 0xc;
    puStack_2c = puStack_2c + 4;
    puVar5 = puVar5 + 4;
    uStack_18 = uStack_18 + 1;
  } while (uStack_18 < 0x13);
  uStack_1c = 0x31;
  uStack_30 = 0;
  puVar5 = param_1 + 0xa82;
  puStack_28 = param_1;
  puStack_24 = param_1;
  do {
    if (param_3 == *piVar4) {
      if (puStack_24[0xa82] == 0) {
        puStack_28[0xad2] = uStack_1c;
        AddWindowParameterized
                  (param_1[0xa7f],puVar5,0,piVar4[1] & 0xff,piVar4[2] & 0xff,piVar4[3] & 0xff,
                   piVar4[4] & 0xff,0xf,uStack_1c & 0xffff);
      }
      uVar1 = GetFontAttribute(piVar4[5] & 0xff,piVar4[7] & 0xff);
      FillWindowPixelBuffer(puVar5,uVar1);
      iVar2 = piVar4[6];
      iVar3 = (*(code *)piVar4[9])(param_1,puVar5,iVar2);
      if ((iVar3 == 1) && (piVar4[8] != 0)) {
        uVar1 = ReadMsgData_ExpandPlaceholders(param_1[0xa80],param_1[0xa81],piVar4[8],*param_1);
        iVar3 = piVar4[10];
        if (iVar3 == -1) {
          iVar3 = FontID_String_GetCenterAlignmentX(piVar4[5],uVar1,0,piVar4[3] << 3);
        }
        AddTextPrinterParameterizedWithColor(puVar5,piVar4[5],uVar1,iVar3,piVar4[0xb],0xff,iVar2,0);
        String_Delete(uVar1);
      }
      CopyWindowToVram(puVar5);
      uStack_1c = uStack_1c + piVar4[4] * piVar4[3];
    }
    piVar4 = piVar4 + 0xc;
    puStack_24 = puStack_24 + 4;
    puVar5 = puVar5 + 4;
    puStack_28 = puStack_28 + 1;
    uStack_30 = uStack_30 + 1;
  } while (uStack_30 < 0x13);
  DestroyMsgData(param_1[0xa81]);
  MessageFormat_Delete(param_1[0xa80]);
  if (param_3 == 0) {
    ov74_0222DCD4(param_1);
  }
  return;
}

