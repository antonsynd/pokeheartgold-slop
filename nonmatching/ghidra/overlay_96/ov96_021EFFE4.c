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
undefined4 TouchscreenHitbox_FindRectAtTouchNew();
undefined4 ov96_021EF924();
undefined4 ov96_021EFD08();
undefined4 GF_AssertFail();
undefined4 ov96_021EFB50();
undefined4 BeginNormalPaletteFade();
undefined4 IsPaletteFadeFinished();
undefined4 PlaySE();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_021EFB20();
extern undefined ov96_0221BA38;

undefined4 ov96_021EFFE4(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;

  iVar2 = PokeathlonCourse_GetHeapAllocPtr4();
  ov96_021EF924();
  cVar1 = *param_2;
  if (cVar1 == '\0') {
    BeginNormalPaletteFade(0,1,1,0x7fff,4,1,*(undefined4 *)(iVar2 + 0xc),param_4);
    *param_2 = *param_2 + '\x01';
  }
  else if (cVar1 != '\x01') {
    if (cVar1 != '\x02') {
      GF_AssertFail();
      return 0;
    }
    iVar2 = ov96_021EFB50(param_1);
    if (iVar2 == 0) {
      return 0;
    }
    ov96_021EFD08(param_1);
    return 0;
  }
  iVar2 = IsPaletteFadeFinished();
  if (iVar2 != 0) {
    iVar2 = TouchscreenHitbox_FindRectAtTouchNew(&ov96_0221BA38);
    if (iVar2 == 0) {
      PlaySE(0x5dc);
      ov96_021EFB20(param_1,2);
      *param_2 = *param_2 + '\x01';
    }
    else if (iVar2 == 1) {
      PlaySE(0x5dc);
      ov96_021EFB20(param_1,1);
      *param_2 = *param_2 + '\x01';
    }
  }
  return 0;
}

