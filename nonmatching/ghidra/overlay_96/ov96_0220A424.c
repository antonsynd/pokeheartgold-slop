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
undefined4 ov96_0220B774();
undefined4 ov96_0220B730();
undefined4 ov96_0220B79C();
undefined4 ov96_021E8A20();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_0220B758();
undefined4 ov96_0220AD4C();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 ov96_0220B7B4();

void ov96_0220A424(undefined4 param_1)

{
  int iVar1;
  uint *puVar2;
  uint *puVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;

  iVar1 = PokeathlonCourse_GetHeapAllocPtr4();
  PokeathlonCourse_GetDataCopyArea(param_1);
  puVar2 = (uint *)ov96_021E8A20();
  puVar3 = (uint *)ov96_0220B758(*(undefined4 *)(iVar1 + 0x4c));
  iVar4 = ov96_0220B730(*(undefined4 *)(iVar1 + 0x4c));
  uVar5 = ov96_0220AD4C(*(undefined4 *)(iVar1 + 0x40));
  uVar6 = *puVar2;
  *puVar2 = uVar6 & 0xffffff00 | uVar5 & 0xff;
  *puVar2 = uVar6 & 0xffff0000 | uVar5 & 0xff | ((*puVar3 & 0x3ffffff) >> 0x12) << 8;
  uVar5 = ov96_0220B79C(*(undefined4 *)(iVar1 + 0x4c));
  *puVar2 = (uVar5 & 0xff) << 0x10 | *puVar2 & 0xff00ffff;
  uVar5 = ov96_0220B774(*(undefined4 *)(iVar1 + 0x4c));
  *puVar2 = (uVar5 & 1) << 0x1a | *puVar2 & 0xfbffffff;
  *puVar2 = (uint)(iVar4 == 3) << 0x1c | *puVar2 & 0xefffffff;
  uVar5 = ov96_0220B7B4(*(undefined4 *)(iVar1 + 0x4c));
  *puVar2 = (uVar5 & 3) << 0x18 | *puVar2 & 0xfcffffff;
  return;
}

