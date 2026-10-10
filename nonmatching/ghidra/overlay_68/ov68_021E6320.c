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
undefined4 ReadMsgDataIntoString(void *, int, void *);
void * NewMsgDataFromNarc(int, int, int, int);
undefined4 BufferBoxMonNickname(void *, unsigned int, void *);
undefined4 StringExpandPlaceholders(void *, void *, void *);
undefined4 ov68_021E7028();
undefined4 BufferBoxMonSpeciesName(void *, unsigned int, void *);
void * Mon_GetBoxMon(void *);
undefined4 DestroyMsgData(void *);
undefined4 ScheduleWindowCopyToVram(void *);
undefined4 GetBoxMonData(void *, int, void *);
undefined4 BufferIntegerAsString(void *, unsigned int, int, unsigned int, int, int);
undefined4 ManagedSprite_SetDrawFlag(void *, int);
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);
void * String_New(unsigned int, int);
undefined4 ov68_021E6234();
undefined4 String_Delete(void *);

void ov68_021E6320(undefined4 *param_1)

{
  char cVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  undefined4 *puVar8;

  ReadMsgDataIntoString((undefined *)param_1[0x3e],0x24,(undefined *)param_1[0x40]);
  ov68_021E6234(param_1,7,0,0x10200,0,4);
  ScheduleWindowCopyToVram((undefined *)(param_1 + 0x1e));
  ReadMsgDataIntoString((undefined *)param_1[0x3e],0x23,(undefined *)param_1[0x40]);
  ov68_021E6234(param_1,8,4,0xf0e00,2,4);
  ReadMsgDataIntoString((undefined *)param_1[0x3e],0x22,(undefined *)param_1[0x40]);
  ov68_021E6234(param_1,9,4,0xf0e00,2,4);
  ScheduleWindowCopyToVram((undefined *)(param_1 + 0x26));
  ReadMsgDataIntoString((undefined *)param_1[0x3e],0x16,(undefined *)param_1[0x40]);
  ov68_021E6234(param_1,0,0,0xf0e00,0,0);
  ScheduleWindowCopyToVram((undefined *)(param_1 + 2));
  ReadMsgDataIntoString((undefined *)param_1[0x3e],0x17,(undefined *)param_1[0x40]);
  ov68_021E6234(param_1,1,0,0xf0e00,0,0);
  ScheduleWindowCopyToVram((undefined *)(param_1 + 6));
  ReadMsgDataIntoString((undefined *)param_1[0x3e],0x18,(undefined *)param_1[0x40]);
  ov68_021E6234(param_1,2,0,0xf0e00,0,0);
  ScheduleWindowCopyToVram((undefined *)(param_1 + 10));
  puVar2 = String_New(0x100,0x42);
  ReadMsgDataIntoString((undefined *)param_1[0x3e],0x27,puVar2);
  puVar3 = Mon_GetBoxMon(*(undefined **)*param_1);
  BufferBoxMonNickname((undefined *)param_1[0x3f],0,puVar3);
  StringExpandPlaceholders((undefined *)param_1[0x3f],(undefined *)param_1[0x40],puVar2);
  ov68_021E6234(param_1,0xc,0,0x10200,0,4);
  ScheduleWindowCopyToVram((undefined *)(param_1 + 0x32));
  puVar3 = NewMsgDataFromNarc(0,0x1b,0x2ee,0x42);
  puVar4 = Mon_GetBoxMon(*(undefined **)*param_1);
  uVar6 = 0;
  cVar1 = '\0';
  uVar7 = 0x10;
  puVar8 = param_1;
  do {
    uVar5 = GetBoxMonData(puVar4,uVar6 + 0x36,(undefined *)0x0);
    uVar5 = uVar5 & 0xffff;
    if (uVar5 == 0) {
      ManagedSprite_SetDrawFlag((undefined *)puVar8[0x51],0);
    }
    else {
      ManagedSprite_SetDrawFlag((undefined *)puVar8[0x51],1);
      ov68_021E7028(param_1,uVar5,uVar6 + 4 & 0xffff);
      ReadMsgDataIntoString(puVar3,uVar5,(undefined *)param_1[0x40]);
      ov68_021E6234(param_1,0xd,0,0xf0e00,0,cVar1);
      AddTextPrinterParameterizedWithColor
                ((undefined *)(param_1 + 0x36),0,(undefined *)param_1[0x41],0x10,uVar7,0xff,0x10200,
                 (undefined *)0x0);
      uVar5 = GetBoxMonData(puVar4,uVar6 + 0x3a,(undefined *)0x0);
      BufferIntegerAsString((undefined *)param_1[0x3f],0,uVar5,2,1,1);
      uVar5 = GetBoxMonData(puVar4,uVar6 + 0x42,(undefined *)0x0);
      BufferIntegerAsString((undefined *)param_1[0x3f],1,uVar5,2,0,1);
      StringExpandPlaceholders
                ((undefined *)param_1[0x3f],(undefined *)param_1[0x40],(undefined *)param_1[0x42]);
      AddTextPrinterParameterizedWithColor
                ((undefined *)(param_1 + 0x36),0,(undefined *)param_1[0x40],0x2d,uVar7,0xff,0x10200,
                 (undefined *)0x0);
    }
    uVar6 = uVar6 + 1;
    cVar1 = cVar1 + ' ';
    puVar8 = puVar8 + 1;
    uVar7 = uVar7 + 0x20;
  } while (uVar6 < 4);
  ScheduleWindowCopyToVram((undefined *)(param_1 + 0x36));
  ReadMsgDataIntoString((undefined *)param_1[0x3e],0x25,puVar2);
  BufferBoxMonSpeciesName((undefined *)param_1[0x3f],0,puVar4);
  StringExpandPlaceholders((undefined *)param_1[0x3f],(undefined *)param_1[0x40],puVar2);
  AddTextPrinterParameterizedWithColor
            ((undefined *)(param_1 + 0x3a),0,(undefined *)param_1[0x40],0,0,0xff,0x10200,
             (undefined *)0x0);
  ReadMsgDataIntoString((undefined *)param_1[0x3e],0x26,puVar2);
  uVar6 = GetBoxMonData(puVar4,0xa1,(undefined *)0x0);
  BufferIntegerAsString((undefined *)param_1[0x3f],0,uVar6,3,1,1);
  StringExpandPlaceholders((undefined *)param_1[0x3f],(undefined *)param_1[0x40],puVar2);
  ov68_021E6234(param_1,0xe,0,0x10200,1,0x10);
  ScheduleWindowCopyToVram((undefined *)(param_1 + 0x3a));
  DestroyMsgData(puVar3);
  String_Delete(puVar2);
  return;
}

