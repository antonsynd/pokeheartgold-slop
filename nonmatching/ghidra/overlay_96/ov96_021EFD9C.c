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
undefined4 ov96_021EF280();
undefined4 ov96_021EF924();
undefined4 PlayBGM();
undefined4 ov96_021EFACC();
undefined4 GF_AssertFail();
undefined4 IsPaletteFadeFinished();
undefined4 BeginNormalPaletteFade();
undefined4 ManagedSprite_SetAnimateFlag();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 PokeathlonCourse_SetStateField07();
undefined4 ov96_021EFA3C();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();

undefined4 ov96_021EFD9C(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;

  iVar1 = PokeathlonCourse_GetHeapAllocPtr4();
  ov96_021EF924();
  switch(*param_2) {
  case '\0':
    PlayBGM(0x470);
    *param_2 = *param_2 + '\x01';
    break;
  case '\x01':
    iVar2 = ov96_021EF280(0,0);
    if (iVar2 != 0) {
      BeginNormalPaletteFade(4,1,1,0x7fff,1,1,*(undefined4 *)(iVar1 + 0xc),param_4);
      *param_2 = *param_2 + '\x01';
    }
    break;
  case '\x02':
    iVar2 = ov96_021EF280(0,1);
    if (iVar2 != 0) {
      ov96_021EFA3C(iVar1);
      *param_2 = *param_2 + '\x01';
    }
    break;
  case '\x03':
    if (*(int *)(iVar1 + 0x2c) == 0) {
      iVar2 = ov96_021EF280(0,3);
      if (iVar2 != 0) {
        BeginNormalPaletteFade(3,1,1,0x7fff,0xc,1,*(undefined4 *)(iVar1 + 0xc),param_4);
        ManagedSprite_SetAnimateFlag(*(undefined4 *)(iVar1 + 0x40),1);
        ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar1 + 0x44),*(int *)(iVar1 + 0x24) == 0);
        *param_2 = *param_2 + '\x01';
      }
    }
    else {
      ov96_021EFACC(iVar1);
    }
    break;
  case '\x04':
    iVar2 = IsPaletteFadeFinished();
    if (iVar2 != 0) {
      if (*(int *)(iVar1 + 0x24) == 0) {
        PokeathlonCourse_SetStateField07(param_1,1);
      }
      else {
        *(undefined4 *)(iVar1 + 0x1c) = 0;
        *param_2 = *param_2 + '\x01';
      }
    }
    break;
  case '\x05':
    iVar2 = *(int *)(iVar1 + 0x1c) + 1;
    *(int *)(iVar1 + 0x1c) = iVar2;
    if (0xb3 < iVar2) {
      PokeathlonCourse_SetStateField07(param_1,4);
    }
    break;
  default:
    GF_AssertFail();
  }
  return 0;
}

