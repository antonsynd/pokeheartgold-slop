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
undefined4 InitWindow(void *);
void * TextOBJ_Create(void *, void *);
undefined4 sub_02013948(void *, int);
undefined4 ReadMsgDataIntoString(void *, int, void *);
undefined4 String_GetLineN(void *, void *, unsigned int);
undefined4 AddTextWindowTopLeftCorner(void *, void *, unsigned char, unsigned char, unsigned short, unsigned char);
undefined4 FontID_String_GetCenterAlignmentX(unsigned char, void *, unsigned int, unsigned int);
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);
undefined4 String_CountLines(void *);
undefined4 sub_020136B4(void *, int, int);
void * String_New(unsigned int, int);
undefined4 TextOBJ_SetSpritesDrawFlag(void *, int);
undefined4 String_Delete(void *);
undefined4 TextOBJ_SetPaletteNum(void *, int);
undefined4 FillWindowPixelBufferText_AssumeTileSize32(void *, unsigned char);
void * FontSystem_NewInit(int, int);
void * sub_02013910(void *, int);
void * NewMsgDataFromNarc(int, int, int, int);
undefined4 sub_02021AC8(unsigned int, int, int, void *);
undefined4 DestroyMsgData(void *);

void ov102_021E91C4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  uint uVar2;
  undefined *puVar3;
  undefined *puVar4;
  uint uVar5;
  uint uVar6;
  undefined *puVar7;
  uint uVar8;
  uint uVar9;
  int iStack_68;
  int iStack_64;
  undefined *puStack_60;
  int iStack_4c;
  undefined4 uStack_48;
  int iStack_44;
  undefined4 uStack_40;
  int iStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  puVar1 = FontSystem_NewInit(2,0x23);
  *(undefined **)(param_1 + 0x1fc) = puVar1;
  InitWindow((undefined *)(param_1 + 0x204));
  AddTextWindowTopLeftCorner(*(undefined **)(param_1 + 0x20),(undefined *)(param_1 + 0x204),9,4,0,0)
  ;
  FillWindowPixelBufferText_AssumeTileSize32((undefined *)(param_1 + 0x204),0);
  puVar1 = sub_02013910((undefined *)(param_1 + 0x204),0x23);
  *(undefined **)(param_1 + 0x200) = puVar1;
  uVar2 = sub_02013948(*(undefined **)(param_1 + 0x200),1);
  uStack_48 = *(undefined4 *)(param_1 + 0x1fc);
  iStack_44 = param_1 + 0x204;
  uStack_40 = *(undefined4 *)(param_1 + 0x24);
  iStack_3c = param_1 + 0x198;
  uStack_28 = 3;
  uStack_20 = 1;
  uStack_24 = 0;
  uStack_30 = 0;
  uStack_2c = 0;
  uStack_1c = 0x23;
  puVar1 = NewMsgDataFromNarc(0,0x1b,0x11b,0x23);
  puVar3 = String_New(0x15,0x23);
  puVar4 = String_New(0x15,0x23);
  iStack_4c = 0;
  puStack_60 = (undefined *)(param_1 + 0x218);
  iStack_68 = 0x18;
  iStack_64 = param_1;
  do {
    sub_02021AC8(uVar2,1,1,puStack_60);
    uStack_34 = *(undefined4 *)(iStack_64 + 0x21c);
    uStack_38 = 0;
    ReadMsgDataIntoString(puVar1,iStack_4c + 0xb,puVar3);
    uVar5 = String_CountLines(puVar3);
    FillWindowPixelBufferText_AssumeTileSize32((undefined *)(param_1 + 0x204),0);
    uVar9 = 0;
    uVar8 = uVar5 * -0x10 + 0x20 >> 1;
    if (uVar5 != 0) {
      do {
        String_GetLineN(puVar4,puVar3,uVar9);
        uVar6 = FontID_String_GetCenterAlignmentX(4,puVar4,0,0x48);
        AddTextPrinterParameterizedWithColor
                  ((undefined *)(param_1 + 0x204),4,puVar4,uVar6,uVar8,0xff,0xe0f00,(undefined *)0x0
                  );
        uVar9 = uVar9 + 1;
        uVar8 = uVar8 + 0x10;
      } while (uVar9 < uVar5);
    }
    puVar7 = TextOBJ_Create((undefined *)&uStack_48,*(undefined **)(param_1 + 0x200));
    *(undefined **)(iStack_64 + 0x214) = puVar7;
    TextOBJ_SetSpritesDrawFlag(*(undefined **)(iStack_64 + 0x214),1);
    TextOBJ_SetPaletteNum(*(undefined **)(iStack_64 + 0x214),0);
    sub_020136B4(*(undefined **)(iStack_64 + 0x214),iStack_68,6);
    puStack_60 = puStack_60 + 0x10;
    iStack_64 = iStack_64 + 0x10;
    iStack_68 = iStack_68 + 0x88;
    iStack_4c = iStack_4c + 1;
  } while (iStack_4c < 2);
  String_Delete(puVar4);
  String_Delete(puVar3);
  DestroyMsgData(puVar1);
  return;
}

