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
undefined4 PokeathlonCourse_SetStateTransitionType();
undefined4 ov96_021EB588();
undefined4 ov96_021EB52C();
undefined4 ov96_021FEAEC();
undefined4 ov96_021FFB44();
undefined4 BeginNormalPaletteFade();
undefined4 ov96_021EB564();
undefined4 IsPaletteFadeFinished();
undefined4 PokeathlonCourse_SetStateField07();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();

undefined4 ov96_021FD2E0(undefined4 param_1,char *param_2)

{
  char cVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  int iStack_2c;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  iVar2 = PokeathlonCourse_GetHeapAllocPtr4();
  cVar1 = *param_2;
  if (cVar1 == '\0') {
    iStack_24 = 0;
    iVar5 = iVar2 + 0x4d4;
    iVar4 = iVar2;
    iStack_2c = iVar2;
    do {
      uVar3 = *(uint *)(iStack_2c + 0x45c);
      if ((uVar3 & 0xff) != 0) {
        *(undefined4 *)(iVar4 + 0x4d4) = 1;
        *(char *)(iVar4 + 0x4df) = (char)uVar3;
        *(short *)(iVar4 + 0x4dc) = (short)(uVar3 >> 0x10);
        *(char *)(iVar4 + 0x4de) = (char)(uVar3 >> 8);
        ov96_021EB564(*(undefined4 *)(iVar4 + 0x4d8),(uVar3 & 0xff) - 1);
        ov96_021EB52C(*(undefined4 *)(iVar4 + 0x4d8),1,1);
        uStack_18 = 0;
        iStack_20 = (((int)uVar3 >> 0x10 & 0xffffU) + 0x50) * 0x1000;
        iStack_1c = (((int)uVar3 >> 8 & 0xffU) + 0x20) * 0x1000;
        ov96_021EB588(*(undefined4 *)(iVar4 + 0x4d8),&iStack_20);
        ov96_021FFB44(iVar5);
      }
      iVar4 = iVar4 + 0xc;
      iStack_2c = iStack_2c + 4;
      iVar5 = iVar5 + 0xc;
      iStack_24 = iStack_24 + 1;
    } while (iStack_24 < 0x1e);
    ov96_021FEAEC(iVar2,0);
    *param_2 = *param_2 + '\x01';
    PokeathlonCourse_SetStateTransitionType(param_1,0x12);
  }
  else if (cVar1 == '\x01') {
    BeginNormalPaletteFade(2,3,3,0,6,1,*(undefined4 *)(iVar2 + 0x14));
    *param_2 = *param_2 + '\x01';
  }
  else if ((cVar1 == '\x02') && (iVar2 = IsPaletteFadeFinished(), iVar2 != 0)) {
    PokeathlonCourse_SetStateField07(param_1,1);
  }
  return 0;
}

