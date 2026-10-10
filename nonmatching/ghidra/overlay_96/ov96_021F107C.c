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
undefined4 ov96_021F2EFC();
undefined4 ov96_021E8318();
undefined4 ov96_021EB144();
undefined4 System_GetTouchHeld();
undefined4 ov96_021F46B4();
undefined4 ov96_021F1614();
undefined4 ov96_021E8A20();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_021E65A4();
undefined4 ov96_021E5F24();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 System_GetTouchNew();
undefined4 ov96_021EB63C();
undefined4 ov96_021E8228();
undefined4 ov96_021F30F8();
extern ushort uRam021d116c __asm__("sub_021D116C");
extern ushort uRam021d116e __asm__("sub_021D116E");

undefined4 ov96_021F107C(undefined4 param_1)

{
  byte bVar1;
  undefined1 uVar2;
  undefined2 uVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 uVar7;

  iVar4 = PokeathlonCourse_GetHeapAllocPtr4();
  iVar5 = PokeathlonCourse_GetDataCopyArea(param_1);
  puVar6 = (undefined4 *)ov96_021E8A20();
  *puVar6 = 0;
  iVar5 = ov96_021E8A20(iVar5 + 0xf0);
  uVar7 = 1;
  if ((*(int *)(iVar5 + 0x20) >> 0xc & 1U) != 0) {
    ov96_021EB63C(*(undefined4 *)(iVar4 + 0x18));
    ov96_021EB144(*(undefined4 *)(iVar4 + 0x76c),1);
    ov96_021E65A4(param_1);
    uVar7 = ov96_021F46B4(*(undefined4 *)(iVar4 + 0x774));
    ov96_021E8318(param_1,uVar7);
    ov96_021F2EFC(iVar4,uVar7);
    return 1;
  }
  if (*(char *)(iVar4 + 0x72a) != '\0') {
    bVar1 = *(byte *)(iVar4 + 0x727);
    if (bVar1 == 0) {
      uVar7 = 0;
    }
    else if (2 < bVar1) {
      if (bVar1 < 4) {
        uVar7 = 2;
      }
      else {
        uVar7 = 3;
      }
    }
    uVar3 = ov96_021F30F8(*(ushort *)(iVar4 + 0x732) & 0xff,uVar7);
    *(undefined2 *)(iVar4 + 0x732) = uVar3;
    *(undefined1 *)(iVar4 + 0x72a) = 0;
  }
  iVar4 = System_GetTouchNew();
  if (iVar4 != 0) {
    uVar2 = ov96_021E5F24(param_1);
    ov96_021E8228(param_1,uVar2,3,0,1);
  }
  iVar4 = System_GetTouchHeld();
  if (iVar4 != 0) {
    *(char *)(puVar6 + 1) = (char)uRam021d116c;
    *(char *)((int)puVar6 + 5) = (char)uRam021d116e;
    *puVar6 = 1;
  }
  ov96_021F1614(param_1);
  return 0;
}

