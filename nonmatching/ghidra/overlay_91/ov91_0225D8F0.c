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
undefined4 SetWindowX(void *, unsigned char);
undefined4 InitWindow(void *);
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc(void *, int, int, int, unsigned int, int);
undefined4 AddWindowParameterized(void *, void *, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, unsigned short);
undefined4 ReadMsgDataIntoString(void *, int, void *);
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc(void *, int, void *, int, unsigned int, unsigned int, int, int);
undefined4 FillWindowPixelBuffer(void *, unsigned char);
undefined4 BgTilemapRectChangePalette(void *, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char);
undefined4 GfGfx_EngineATogglePlanes(unsigned char, unsigned char);
void * String_New(unsigned int, int);
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc(void *, int, void *, int, unsigned int, unsigned int, int, int);
undefined4 FontID_String_GetWidth(unsigned int, void *, unsigned int);
undefined4 String_Delete(void *);
undefined4 RemoveWindow(void *);
undefined4 SetWindowY(void *, unsigned char);
undefined4 FillWindowPixelRect(void *, unsigned char, unsigned short, unsigned short, unsigned short, unsigned short);
undefined4 PlayerName_FlatToString(void *, void *);
extern undefined ov91_02261DAC;

void ov91_0225D8F0(undefined1 *param_1,undefined4 *param_2,int param_3,uint param_4,uint param_5,
                  undefined *param_6,int param_7)

{
  ushort uVar1;
  undefined *puVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  undefined1 *puVar6;
  uint uVar7;
  undefined *puVar8;
  undefined4 uVar9;
  uint uStack_38;
  undefined auStack_28 [10];
  ushort uStack_1e;
  uint uStack_18;

  iVar5 = 0x1c;
  puVar6 = param_1;
  do {
    *puVar6 = 0;
    puVar6 = puVar6 + 1;
    iVar5 = iVar5 + -1;
  } while (iVar5 != 0);
  uStack_18 = param_4;
  AddWindowParameterized((undefined *)*param_2,param_1 + 0xc,1,2,0x13,0x1c,4,5,10);
  FillWindowPixelRect(param_1 + 0xc,0xf,0,0,0xe0,0x20);
  puVar2 = String_New(0x80,param_7);
  ReadMsgDataIntoString((undefined *)param_2[2],0,puVar2);
  AddTextPrinterParameterizedWithColor(param_1 + 0xc,0,puVar2,0,0,0xff,0x1020f,(undefined *)0x0);
  String_Delete(puVar2);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_6,0x12,(undefined *)*param_2,2,0,0,0,param_7);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_6,param_4 + 0x12,(undefined *)*param_2,2,0,0,0,param_7)
  ;
  GfGfxLoader_GXLoadPalFromOpenNarc(param_6,0x13,0,0,0x80,param_7);
  InitWindow(auStack_28);
  AddWindowParameterized((undefined *)*param_2,auStack_28,2,0,0,8,2,5,0x100);
  uVar1 = 0x100;
  puVar2 = String_New(0x80,param_7);
  uVar7 = 0;
  if (param_4 != 0) {
    puVar8 = &ov91_02261DAC + param_4 * 0x20 + param_5 * 0x80;
    do {
      if (uVar7 != param_5) {
        uVar3 = *(undefined4 *)(puVar8 + -0x20);
        uVar9 = *(undefined4 *)(puVar8 + -0x1c);
        BgTilemapRectChangePalette
                  ((undefined *)*param_2,2,(byte)uVar3 - 1,(byte)uVar9 - 1,10,4,(byte)uVar7);
        FillWindowPixelBuffer(auStack_28,0xf);
        if (*(int *)(param_3 + 0x18) == 1) {
          uStack_38 = 0x5060f;
        }
        else {
          uStack_38 = 0x1020f;
        }
        PlayerName_FlatToString(*(undefined **)(param_3 + 8),puVar2);
        SetWindowX(auStack_28,(byte)uVar3);
        SetWindowY(auStack_28,(byte)uVar9);
        uStack_1e = uVar1 & 0x7fff | uStack_1e & 0x8000;
        uVar4 = FontID_String_GetWidth(0,puVar2,0);
        AddTextPrinterParameterizedWithColor
                  (auStack_28,0,puVar2,0x40 - uVar4 >> 1,0,0,uStack_38,(undefined *)0x0);
        uVar1 = uVar1 + 0x10;
      }
      uVar7 = uVar7 + 1;
      puVar8 = puVar8 + 8;
      param_3 = param_3 + 4;
    } while (uVar7 < param_4);
  }
  String_Delete(puVar2);
  RemoveWindow(auStack_28);
  *(undefined4 *)(param_1 + 4) = 0;
  GfGfx_EngineATogglePlanes(2,0);
  GfGfx_EngineATogglePlanes(4,0);
  return;
}

