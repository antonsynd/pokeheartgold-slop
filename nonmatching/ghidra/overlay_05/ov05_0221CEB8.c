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
typedef void code(void);
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
undefined4 ScheduleSetBgPosText(undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x0201bc8c(undefined4, undefined4, undefined4, undefined4) __asm__("sub_0201BC8C");
undefined4 SetBothScreensModesAndDisable(undefined4, undefined4, undefined4, undefined4);
undefined4 InitBgFromTemplate(undefined4, undefined4, undefined4, undefined4);
undefined4 BgClearTilemapBufferAndCommit(undefined4, undefined4);
undefined4 GfGfx_EngineATogglePlanes(undefined4, undefined4);

void ov05_0221CEB8(int param_1,int param_2,int param_3,undefined4 param_4)

{
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  *(int *)(param_1 + 0xba8) = param_2;
  uStack_28 = 1;
  uStack_24 = 0;
  uStack_20 = 0;
  iStack_1c = param_2;
  uStack_18 = param_4;
  SetBothScreensModesAndDisable(&uStack_28,1,&uStack_28,&uStack_18);
  uStack_44 = 0;
  uStack_40 = 0;
  uStack_3c = 0x1000;
  uStack_38 = 0;
  uStack_34 = 0x41e0003;
  uStack_30 = 0x301;
  uStack_2c = 0;
  InitBgFromTemplate(*(undefined4 *)(param_1 + 0xc),3,&uStack_44,0);
  BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0xc),3);
  ScheduleSetBgPosText(*(undefined4 *)(param_1 + 0xc),3,0,0x100);
  uStack_60 = 0;
  uStack_5c = 0;
  uStack_58 = 0x1000;
  uStack_54 = 0;
  uStack_50 = 0x41c0003;
  uStack_4c = 0x201;
  uStack_48 = 0;
  InitBgFromTemplate(*(undefined4 *)(param_1 + 0xc),2,&uStack_60,0);
  BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0xc),2);
  ScheduleSetBgPosText(*(undefined4 *)(param_1 + 0xc),2,0,0xffffff00);
  uStack_7c = 0;
  uStack_78 = 0;
  uStack_74 = 0x800;
  uStack_70 = 0;
  uStack_6c = 0x41b0001;
  uStack_68 = 0x100;
  uStack_64 = 0;
  InitBgFromTemplate(*(undefined4 *)(param_1 + 0xc),1,&uStack_7c,0);
  BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0xc),1);
  GfGfx_EngineATogglePlanes(2,0);
  if (param_3 == 1) {
    func_0x0201bc8c(*(undefined4 *)(param_1 + 0xc),1,3,0x18);
  }
  if (param_2 == 0) {
    uStack_98 = 0;
    uStack_94 = 0;
    uStack_90 = 0x800;
    uStack_8c = 0;
    uStack_88 = 0x6000001;
    uStack_84 = 0;
    uStack_80 = 0;
    InitBgFromTemplate(*(undefined4 *)(param_1 + 0xc),0,&uStack_98,0);
    BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0xc),0);
    if (*(int *)(param_1 + 0xbc8) == 1) {
      GfGfx_EngineATogglePlanes(1,1);
      return;
    }
    GfGfx_EngineATogglePlanes(1,0);
  }
  return;
}

