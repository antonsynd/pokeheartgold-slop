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
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 func_0x020f1b90() __asm__("sub_020F1B90");
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 IsPaletteFadeFinished();
undefined4 ov96_021FBDEC();
undefined4 ov96_021E5F24();
undefined4 func_0x020f1cc8() __asm__("sub_020F1CC8");
undefined4 PokeathlonCourse_SetField5E0_AtIndex();
undefined4 PokeathlonCourse_GetHeapAllocPtr4();
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 func_0x020f1acc() __asm__("sub_020F1ACC");
undefined4 PokeathlonCourse_GetParticipantCount();

undefined4 ov96_021F9380(undefined4 param_1,char *param_2)

{
  undefined2 uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;
  ushort *puVar7;
  int iVar8;
  int iVar9;
  undefined4 uVar10;
  char cVar11;
  undefined1 uVar12;
  bool bVar13;
  int iStack_2c;
  int iStack_24;

  iVar2 = PokeathlonCourse_GetHeapAllocPtr4();
  if (*param_2 != '\0') {
    uVar3 = ov96_021E5F24(param_1);
    iVar4 = 0;
    iVar8 = 0;
    iVar9 = iVar2;
    do {
      puVar7 = (ushort *)(iVar9 + 0xe2);
      iVar8 = iVar8 + 1;
      iVar9 = iVar9 + 0x6c;
      iVar4 = iVar4 + (uint)*puVar7;
    } while (iVar8 < 3);
    uVar1 = ov96_021FBDEC(iVar4);
    PokeathlonCourse_SetField5E0_AtIndex(param_1,uVar3 & 0xff,uVar1);
    if (uVar3 == 0) {
      uVar5 = PokeathlonCourse_GetParticipantCount(param_1);
      for (uVar3 = uVar5; (int)uVar3 < 4; uVar3 = uVar3 + 1) {
        iStack_2c = 0;
        iStack_24 = 0;
        iVar9 = (uVar3 - uVar5) * 3;
        do {
          iVar4 = iVar2 + iVar9 * 0x28;
          if (*(int *)(iVar4 + 0x250) == 0) {
            uVar10 = *(undefined4 *)(iVar4 + 0x240);
            cVar11 = '\0';
            func_0x020f1b90(uVar10,*(undefined4 *)(iVar4 + 0x248));
            if (cVar11 == '\0') {
              uVar10 = *(undefined4 *)(iVar4 + 0x248);
            }
            uVar6 = func_0x020f2178(0x1000 - *(int *)(iVar4 + 600));
            uVar10 = func_0x020f1cc8(uVar6,uVar10);
            iVar8 = func_0x020f2104();
            uVar6 = func_0x020f2178();
            uVar12 = 0;
            func_0x020f24c8(uVar10,uVar6);
            bVar13 = true;
            func_0x020f1acc();
            if ((bool)uVar12 && !bVar13) {
              iVar8 = iVar8 + 1;
            }
            *(int *)(iVar4 + 0x254) = *(int *)(iVar2 + 0x230) + iVar8;
          }
          iVar9 = iVar9 + 1;
          iStack_2c = iStack_2c + *(int *)(iVar4 + 0x254);
          iStack_24 = iStack_24 + 1;
        } while (iStack_24 < 3);
        uVar1 = ov96_021FBDEC(iStack_2c);
        PokeathlonCourse_SetField5E0_AtIndex(param_1,uVar3 & 0xff,uVar1);
      }
    }
    return 1;
  }
  iVar2 = IsPaletteFadeFinished();
  if (iVar2 != 0) {
    *param_2 = '\x01';
  }
  return 0;
}

