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
undefined4 ov96_021E87B4();
undefined4 ov96_021E5F24();
undefined4 PokeathlonCourse_SetStateField07();
undefined4 PokeathlonCourse_SetField1F4();
undefined4 ov96_021E9A14();
undefined4 ov96_021E8A20();

undefined4 ov96_021E7190(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined1 *puVar3;
  undefined1 *puVar4;
  code *pcVar5;
  int iVar6;
  
  if (*(int *)(param_1 + 0x3cc) != 0) {
    if (*(int *)(param_1 + 0x3b4) == param_1 + 0x3c4) {
      *(int **)(param_1 + 0x3b4) = (int *)(param_1 + 0x3cc);
      *(undefined4 *)(param_1 + 0x3c0) = 0;
    }
    iVar6 = (uint)*(byte *)(param_1 + 0x3d2) * 4;
    pcVar5 = *(code **)(*(int *)(param_1 + 0x3cc) + iVar6);
    iVar6 = (*pcVar5)(param_1,param_1 + 0x3d1,pcVar5,iVar6,param_4);
    if (iVar6 == 0) {
      iVar6 = ov96_021E5F24(param_1);
      if (iVar6 == 0) {
        uVar2 = ov96_021E9A14();
        ov96_021E87B4(0x1b,param_1 + 0x2b4,uVar2,*(undefined4 *)(param_1 + 0x288));
        puVar3 = (undefined1 *)ov96_021E8A20(param_1 + 0x2dc);
        puVar4 = (undefined1 *)ov96_021E8A20(param_1 + 0x28c);
        iVar6 = 0x28;
        do {
          uVar1 = *puVar4;
          puVar4 = puVar4 + 1;
          *puVar3 = uVar1;
          puVar3 = puVar3 + 1;
          iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
      }
      else {
        uVar2 = ov96_021E9A14();
        ov96_021E87B4(0x1b,param_1 + 0x28c,uVar2,*(undefined4 *)(param_1 + 0x288));
      }
    }
    else {
      PokeathlonCourse_SetField1F4(param_1,0);
      *(int *)(param_1 + 0x3b4) = param_1 + 0x3c4;
      *(undefined4 *)(param_1 + 0x3c0) = 0;
      PokeathlonCourse_SetStateField07(param_1,0x1c);
    }
    return 0;
  }
  PokeathlonCourse_SetStateField07(param_1,0x1c);
  return 0;
}

