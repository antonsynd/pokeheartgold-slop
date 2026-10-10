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
undefined4 FontID_String_GetWidth(unsigned int, void *, unsigned int);
void * NewMsgDataFromNarc(int, int, int, int);
void * SpriteManager_GetSpriteList(void *);
undefined4 String_Delete(void *);
undefined4 DestroyMsgData(void *);
void * NewString_ReadMsgData(void *, int);
undefined4 RemoveWindow(void *);
void * SpriteManager_FindPlttResourceProxy(void *, int);
undefined4 sub_02013688(void *, int, int);
undefined4 sub_020138E0(void *, int);
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);
undefined4 sub_02021AC8(unsigned int, int, int, void *);
undefined4 InitWindow(void *);
void * sub_020135D8(void *);
undefined4 AddTextWindowTopLeftCorner(void *, void *, unsigned char, unsigned char, unsigned short, unsigned char);

void ov57_022387E0(int param_1,int param_2,int param_3,int param_4,int param_5)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  undefined *puVar4;
  undefined auStack_54 [16];
  undefined4 uStack_44;
  undefined *puStack_40;
  undefined *puStack_3c;
  undefined *puStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  int iStack_2c;
  int iStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  puVar1 = NewMsgDataFromNarc(0,0x1b,0xb,0x34);
  puVar2 = NewString_ReadMsgData(puVar1,param_2 + 5);
  InitWindow(auStack_54);
  AddTextWindowTopLeftCorner(*(undefined **)(param_1 + 0xe4),auStack_54,10,2,0,0);
  AddTextPrinterParameterizedWithColor(auStack_54,2,puVar2,0,0,0xff,0xf0d02,(undefined *)0x0);
  uVar3 = sub_02013688(auStack_54,2,0x34);
  sub_02021AC8(uVar3,1,2,(undefined *)(param_1 + 0x268 + param_2 * 0xc));
  uStack_44 = *(undefined4 *)(param_1 + 0x25c);
  puStack_40 = auStack_54;
  puStack_3c = SpriteManager_GetSpriteList(*(undefined **)(param_1 + 0xe0));
  puStack_38 = SpriteManager_FindPlttResourceProxy(*(undefined **)(param_1 + 0xe0),30000);
  uStack_34 = 0;
  uStack_30 = *(undefined4 *)(param_1 + param_2 * 0xc + 0x26c);
  uVar3 = FontID_String_GetWidth(2,puVar2,0);
  iStack_28 = param_4 + 0xc0;
  iStack_2c = param_3 - (uVar3 >> 1);
  uStack_24 = 1;
  uStack_20 = 0x28;
  uStack_1c = 2;
  uStack_18 = 0x34;
  puVar4 = sub_020135D8((undefined *)&uStack_44);
  *(undefined **)(param_1 + 0x260 + param_2 * 4) = puVar4;
  sub_020138E0(*(undefined **)(param_1 + 0x260 + param_2 * 4),param_5);
  String_Delete(puVar2);
  DestroyMsgData(puVar1);
  RemoveWindow(auStack_54);
  return;
}

