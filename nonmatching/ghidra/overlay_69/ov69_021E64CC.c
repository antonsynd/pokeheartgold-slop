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
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc(void *, int, void *, int, unsigned int, unsigned int, int, int);
undefined4 Options_GetFrame(void *);
undefined4 BG_ClearCharDataRange(unsigned char, unsigned int, unsigned int, int);
undefined4 LoadUserFrameGfx2(void *, int, unsigned short, unsigned char, unsigned char, int);
undefined4 BG_SetMaskColor(unsigned char, unsigned short);
undefined4 AddWindow(void *, void *, void *);
undefined4 DrawFrameAndWindow2(void *, int, unsigned short, unsigned char);
undefined4 GfGfxLoader_GXLoadPalFromOpenNarc(void *, int, int, int, unsigned int, int);
undefined4 BgClearTilemapBufferAndCommit(void *, unsigned char);
undefined4 LoadUserFrameGfx1(void *, int, unsigned short, unsigned char, unsigned char, int);
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc(void *, int, void *, int, unsigned int, unsigned int, int, int);
undefined4 LoadFontPal0(int, int, int);
undefined4 InitBgFromTemplate(void *, unsigned char, void *, unsigned char);
undefined4 FillWindowPixelRect(void *, unsigned char, unsigned short, unsigned short, unsigned short, unsigned short);
extern undefined ov69_021E766C;
extern undefined ov69_021E76CC;
extern undefined ov69_021E76B0;
undefined4 ReadMsgDataIntoString(void *, int, void *);
undefined4 FontID_Release(unsigned char);
undefined4 BG_LoadPlttData(unsigned int, void *, unsigned short, unsigned short);
undefined4 String_Delete(void *);
undefined4 FontID_Alloc(unsigned char, int);
void * String_New(unsigned int, int);
unsigned char AddTextPrinterParameterized(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, void *);
extern undefined ov69_021E765C;
extern undefined ov69_021E7654;

void ov69_021E64CC(int *param_1,undefined *param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  undefined *puVar2;
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined2 uStack_14;
  undefined2 uStack_12;
  undefined4 uStack_10;

  uStack_10 = param_4;
  InitBgFromTemplate((undefined *)param_1[0x3004],6,&ov69_021E76B0,0);
  BgClearTilemapBufferAndCommit((undefined *)param_1[0x3004],6);
  InitBgFromTemplate((undefined *)param_1[0x3004],7,&ov69_021E76CC,0);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_2,5,(undefined *)param_1[0x3004],7,0,0,0,*param_1);
  GfGfxLoader_GXLoadPalFromOpenNarc(param_2,6,4,0,0x80,*param_1);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,7,(undefined *)param_1[0x3004],7,0,0,0,*param_1);
  uVar1 = Options_GetFrame((undefined *)param_1[2]);
  LoadUserFrameGfx2((undefined *)param_1[0x3004],6,0x1e2,6,(byte)uVar1,*param_1);
  LoadUserFrameGfx1((undefined *)param_1[0x3004],6,0x1d9,7,0,*param_1);
  LoadFontPal0(4,0x80,*param_1);
  BG_ClearCharDataRange(6,0x20,0,*param_1);
  BG_SetMaskColor(6,0x4753);
  AddWindow((undefined *)param_1[0x3004],(undefined *)(param_1 + 0x3005),&ov69_021E766C);
  FillWindowPixelRect((undefined *)(param_1 + 0x3005),0xf,0,0,0xd8,0x20);
  DrawFrameAndWindow2((undefined *)(param_1 + 0x3005),0,0x1e2,6);
  param_1[0x301d] = 0;
  InitBgFromTemplate((undefined *)param_1[0x3004],2,&ov69_021E76B0,0);
  BgClearTilemapBufferAndCommit((undefined *)param_1[0x3004],2);
  InitBgFromTemplate((undefined *)param_1[0x3004],3,&ov69_021E76CC,0);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_2,5,(undefined *)param_1[0x3004],3,0,0,0,*param_1);
  GfGfxLoader_GXLoadPalFromOpenNarc(param_2,6,0,0,0x80,*param_1);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,7,(undefined *)param_1[0x3004],3,0,0,0,*param_1);
  LoadUserFrameGfx1((undefined *)param_1[0x3004],2,0x1d9,7,0,*param_1);
  LoadFontPal0(0,0x80,*param_1);
  LoadFontPal0(0,0x1e0,*param_1);
  BG_ClearCharDataRange(2,0x20,0,*param_1);
  BG_SetMaskColor(2,0);
  puVar2 = String_New(0x10,*param_1);
  FontID_Alloc(4,*param_1);
  uStack_12 = 0x7fff;
  uStack_14 = 0x1ce7;
  uStack_16 = 0x4e72;
  uStack_18 = 0x7fff;
  BG_LoadPlttData(2,(undefined *)&uStack_12,2,0x1e2);
  BG_LoadPlttData(2,(undefined *)&uStack_14,2,0x1e4);
  BG_LoadPlttData(2,(undefined *)&uStack_16,2,0x1e6);
  BG_LoadPlttData(2,(undefined *)&uStack_18,2,0x1fe);
  AddWindow((undefined *)param_1[0x3004],(undefined *)(param_1 + 0x300d),&ov69_021E765C);
  FillWindowPixelRect((undefined *)(param_1 + 0x300d),0xf,0,0,0xd8,0x20);
  ReadMsgDataIntoString((undefined *)param_1[0x301c],0x10,puVar2);
  AddTextPrinterParameterized((undefined *)(param_1 + 0x300d),4,puVar2,0,0,0xff,(undefined *)0x0);
  AddWindow((undefined *)param_1[0x3004],(undefined *)(param_1 + 0x3011),&ov69_021E7654);
  FillWindowPixelRect((undefined *)(param_1 + 0x3011),0xf,0,0,0xd8,0x20);
  ReadMsgDataIntoString((undefined *)param_1[0x301c],0xd,puVar2);
  AddTextPrinterParameterized((undefined *)(param_1 + 0x3011),4,puVar2,0,0,0xff,(undefined *)0x0);
  String_Delete(puVar2);
  FontID_Release(4);
  return;
}

