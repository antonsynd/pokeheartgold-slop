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
undefined4 ov81_022404B4();
undefined4 Pokepic_SetAttr();
undefined4 func_0x02037bec() __asm__("sub_02037BEC");
undefined4 BeginNormalPaletteFade();
undefined4 ov81_02242F30();
undefined4 func_0x02237254() __asm__("sub_02237254");
undefined4 PlaySE();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 sub_02037AC0();
undefined4 ov81_02242DD8();
undefined4 sub_02037B38();
undefined4 ov81_02242F94();
undefined4 ov81_02240658();
undefined4 IsPaletteFadeFinished();
undefined4 ov81_02242F60();
undefined4 Pokepic_ResumePaletteFade();
undefined4 ov81_02240F08();
undefined4 ov81_02241398();
undefined4 Pokepic_StartPaletteFadeAll();

undefined4 ov81_0223E318(int param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;

  switch(*(undefined1 *)(param_1 + 8)) {
  case 0:
    iVar1 = func_0x02237254(*(undefined1 *)(param_1 + 9));
    if (iVar1 == 1) {
      func_0x02037bec();
      sub_02037AC0(0xed);
    }
    *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    break;
  case 1:
    iVar1 = func_0x02237254(*(undefined1 *)(param_1 + 9));
    if (iVar1 == 1) {
      iVar1 = sub_02037B38(0xed);
      if (iVar1 == 1) {
        func_0x02037bec();
        *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
      }
    }
    else {
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 2:
    iVar2 = 0;
    iVar1 = param_1;
    if (*(char *)(param_1 + 0x12) != '\0') {
      do {
        ov81_02242F30(*(undefined4 *)(iVar1 + 0x360));
        ov81_02242F60(*(undefined4 *)(iVar1 + 0x360));
        iVar2 = iVar2 + 1;
        iVar1 = iVar1 + 4;
      } while (iVar2 < (int)(uint)*(byte *)(param_1 + 0x12));
    }
    func_0x0201bc8c(*(undefined4 *)(param_1 + 0x4c),6,0,0x108);
    Pokepic_SetAttr(*(undefined4 *)(param_1 + 0x1ac),6,1);
    BeginNormalPaletteFade(0,1,1,0,6,3,100);
    *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    break;
  case 3:
    iVar1 = IsPaletteFadeFinished();
    if (iVar1 != 0) {
      PlaySE(0x611);
      *(undefined1 *)(param_1 + 0x19) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 4:
    iVar1 = ov81_022404B4();
    if (iVar1 == 1) {
      func_0x02006154(0x611,0);
      PlaySE(0x678);
      iVar2 = 0;
      iVar1 = param_1;
      if (*(char *)(param_1 + 0x12) != '\0') {
        do {
          ov81_02242F94(*(undefined4 *)(iVar1 + 0x360),4);
          iVar2 = iVar2 + 1;
          iVar1 = iVar1 + 4;
        } while (iVar2 < (int)(uint)*(byte *)(param_1 + 0x12));
      }
      ov81_02240658(param_1,0);
      *(undefined4 *)(param_1 + 0x14) = 8;
      *(undefined1 *)(param_1 + 0x19) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 5:
    iVar1 = ov81_02242DD8(*(undefined4 *)(param_1 + 0x380));
    if (iVar1 != 1) {
      *(undefined1 *)(param_1 + 0x19) = 0;
      *(char *)(param_1 + 8) = *(char *)(param_1 + 8) + '\x01';
    }
    break;
  case 6:
    if (*(char *)(param_1 + 0x19) == '\0') {
      GfGfx_EngineATogglePlanes(2,0);
      iVar1 = ov81_02240F08(param_1,0);
      if (iVar1 == 1) {
        Pokepic_SetAttr(*(undefined4 *)(param_1 + 0x1ac),6,0);
        Pokepic_StartPaletteFadeAll(*(undefined4 *)(param_1 + 0x1a8),0x10,0,1,0xffff);
      }
      else {
        uVar3 = 0;
        iVar1 = param_1;
        if (*(int *)(param_1 + 0x47c) != 0) {
          do {
            Pokepic_SetAttr(*(undefined4 *)(iVar1 + 0x1ac),6,0);
            uVar3 = uVar3 + 1;
            iVar1 = iVar1 + 4;
          } while (uVar3 < *(uint *)(param_1 + 0x47c));
        }
        Pokepic_StartPaletteFadeAll(*(undefined4 *)(param_1 + 0x1a8),0x10,0,1,0xffff);
      }
    }
    Pokepic_ResumePaletteFade(*(undefined4 *)(param_1 + 0x1ac));
    *(char *)(param_1 + 0x19) = *(char *)(param_1 + 0x19) + '\x01';
    if (1 < *(byte *)(param_1 + 0x19)) {
      *(undefined1 *)(param_1 + 0x19) = 0;
      ov81_02241398(param_1);
      return 1;
    }
  }
  return 0;
}

