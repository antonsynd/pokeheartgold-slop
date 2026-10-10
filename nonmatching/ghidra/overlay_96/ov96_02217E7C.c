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
undefined4 ov96_02218598();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 ov96_02217DC8();
undefined4 ov96_02217E08();
undefined4 MTRandom(void);
undefined4 VEC_Subtract(void *, void *, void *);
undefined4 ov96_02218744();
undefined4 ov96_022178A0();
undefined4 VEC_Normalize(void *, void *);

void ov96_02217E7C(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined *puVar8;
  undefined *puVar9;
  undefined *puVar10;
  undefined1 *puStack_48;
  int iStack_3c;
  int iStack_24;
  int iStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  puVar1 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  iStack_3c = 0;
  puVar8 = puVar1 + 0x1a4;
  puVar10 = puVar1 + 0x188;
  do {
    iVar2 = ov96_02218744(puVar8);
    if (((iVar2 != 0) && ((char)puVar8[0x5d] < '\x01')) && (iVar2 = iStack_3c + 1, iVar2 < 4)) {
      puVar9 = puVar1 + iVar2 * 0xa8 + 0x1a4;
      puStack_48 = puVar1 + 0x188 + iVar2 * 4 + iStack_3c;
      do {
        iVar3 = ov96_02218744(puVar9);
        if ((iVar3 != 0) && (iVar3 = ov96_02218598(puVar8,puVar9), iVar3 != 0)) {
          iStack_24 = 0;
          iStack_20 = 0;
          uStack_1c = 0;
          if ((puVar10[iVar2] != '\0') && (-1 < *(int *)(puVar8 + 0x60) << 4)) {
            *puStack_48 = 0;
            puVar10[iVar2] = *puStack_48;
          }
          if (puVar10[iVar2] == '\0') {
            VEC_Subtract(puVar8 + 0x2c,puVar9 + 0x2c,(undefined *)&iStack_24);
            if ((iStack_24 == 0) && (iStack_20 == 0)) {
              uVar4 = MTRandom();
              iStack_24 = (uVar4 & 0x3f) - 0x20;
              uVar4 = MTRandom();
              iStack_20 = (uVar4 & 0x3f) - 0x20;
            }
            VEC_Normalize((undefined *)&iStack_24,(undefined *)&iStack_24);
            iVar3 = ov96_022178A0(puVar8,puVar9,&iStack_24);
            iStack_24 = -iStack_24;
            iStack_20 = -iStack_20;
            iVar5 = ov96_022178A0(puVar9,puVar8,&iStack_24);
            uVar6 = ov96_02217E08(puVar8);
            uVar7 = ov96_02217E08(puVar9);
            ov96_02217DC8(puVar8,uVar6);
            ov96_02217DC8(puVar9,uVar7);
            if ((iVar3 != 0) || (iVar5 != 0)) {
              *puStack_48 = 1;
              puVar10[iVar2] = *puStack_48;
            }
          }
        }
        iVar2 = iVar2 + 1;
        puStack_48 = puStack_48 + 4;
        puVar9 = puVar9 + 0xa8;
      } while (iVar2 < 4);
    }
    puVar8 = puVar8 + 0xa8;
    iStack_3c = iStack_3c + 1;
    puVar10 = puVar10 + 4;
  } while (iStack_3c < 4);
  return;
}

