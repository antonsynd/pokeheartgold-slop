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
undefined4 ov96_021EB144();
undefined4 System_GetTouchHeld();
undefined4 ov96_02217820();
undefined4 ov96_021E8A20();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_021E5F24();
undefined4 ov96_0221964C();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 System_GetTouchNew();
undefined4 ov96_021E8228();
undefined4 ov96_021E8324();
extern ushort uRam021d116c __asm__("sub_021D116C");
extern ushort uRam021d116e __asm__("sub_021D116E");

undefined4 ov96_02216234(undefined4 param_1)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  uint *puVar4;
  uint uVar5;
  uint uVar6;
  
  iVar2 = PokeathlonCourse_GetHeapAllocPtr4();
  iVar3 = PokeathlonCourse_GetDataCopyArea(param_1);
  puVar4 = (uint *)ov96_021E8A20();
  iVar3 = ov96_021E8A20(iVar3 + 0xf0);
  if (*(int *)(iVar3 + 0x20) < 0) {
    ov96_02217820(iVar2 + 0x43c);
    ov96_021EB144(*(undefined4 *)(iVar2 + 0x1c),1);
    ov96_0221964C(*(undefined4 *)(iVar2 + 0x180));
    ov96_021E8324(param_1,0x2216201);
    return 1;
  }
  iVar2 = System_GetTouchNew();
  if (iVar2 != 0) {
    uVar1 = ov96_021E5F24(param_1);
    ov96_021E8228(param_1,uVar1,3,0,1);
  }
  iVar2 = System_GetTouchHeld();
  if (iVar2 == 0) {
    uVar5 = *puVar4 & 0xfffeffff;
  }
  else {
    uVar6 = *puVar4;
    uVar5 = (uint)uRam021d116c;
    *puVar4 = uVar6 & 0xffffff00 | uVar5 & 0xff;
    uVar5 = uVar6 & 0xffff0000 | uVar5 & 0xff | (uRam021d116e & 0xff) << 8 | 0x10000;
  }
  *puVar4 = uVar5;
  return 0;
}

