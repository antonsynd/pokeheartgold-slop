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
void * PokeathlonCourse_GetDataCopyArea(void *);
undefined4 ov96_022132FC();
undefined4 ov96_02213354(unsigned char, ...);
undefined4 ov96_02211DE4();
undefined4 _s32_div_f();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 ov96_022124F8();
undefined4 ov96_021E5F24(void *);
undefined4 ov96_022127F4();
void * ov96_021E8A20(void *);
undefined4 ov96_02214B84();
undefined4 ov96_02213364(int, int, unsigned char, ...);
undefined4 ov96_021E8228();
undefined4 ov96_022130EC();
undefined4 ov96_02212B94();

void ov96_02211B94(undefined *param_1)

{
  undefined *puVar1;
  int iVar2;
  undefined *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  int *piVar7;
  undefined4 uVar8;
  int extraout_r1;
  uint extraout_r1_00;
  uint extraout_r1_01;
  uint uVar9;
  uint extraout_r1_02;
  undefined *puVar10;
  uint uVar11;
  undefined *puStack_20;
  undefined *puStack_1c;
  
  puStack_1c = PokeathlonCourse_GetDataCopyArea(param_1);
  puVar1 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  if (0 < *(int *)(puVar1 + 0x738)) {
    *(int *)(puVar1 + 0x738) = *(int *)(puVar1 + 0x738) + -1;
  }
  iVar2 = ov96_021E5F24(param_1);
  if (iVar2 == 0) {
    if (puVar1[0x73e] != '\0') {
      puVar3 = ov96_021E8A20(puStack_1c + 0x28);
      ov96_02211DE4(puVar1,puVar3);
      return;
    }
    puVar3 = ov96_021E8A20(puStack_1c + 0x28);
    puVar4 = (undefined4 *)ov96_021E8A20(puStack_1c + 0x50);
    puVar5 = (undefined4 *)ov96_021E8A20(puStack_1c);
    iVar2 = 4;
    do {
      uVar6 = *puVar5;
      uVar8 = puVar5[1];
      puVar5 = puVar5 + 2;
      *puVar4 = uVar6;
      puVar4[1] = uVar8;
      puVar4 = puVar4 + 2;
      iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    uVar11 = 0;
    *puVar4 = *puVar5;
    puStack_1c = puStack_1c + 0x50;
    puStack_20 = puVar1 + 0x5c;
    puVar10 = puVar1;
    do {
      piVar7 = (int *)ov96_021E8A20(puStack_1c);
      if (*piVar7 == 0) {
        *(undefined4 *)(puVar10 + 0x704) = 0;
        *(undefined4 *)(puVar10 + 0x708) = 0;
      }
      else if ((*(int *)(puVar10 + 0x704) == 0) || (*(int *)(puVar10 + 0x708) == 0)) {
        if ((*(int *)(puVar10 + 0x704) == 0) && (*(int *)(puVar10 + 0x708) == 0)) {
          *(undefined4 *)(puVar10 + 0x704) = 1;
          *(undefined4 *)(puVar10 + 0x708) = 1;
        }
      }
      else {
        *(undefined4 *)(puVar10 + 0x704) = 0;
      }
      if (*(int *)(puVar10 + 0x704) == 0) {
        if (*(int *)(puVar10 + 0x708) == 0) {
          if ((byte)puVar1[uVar11 + 0x734] != 0xc) {
            { int nug_a = (int)((uint)(byte)puVar1[uVar11 + 0x734]), nug_b = (int)(3); extraout_r1_01 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
            uVar9 = extraout_r1_01 & 0xff;
            if ((*(int *)(puStack_20 + uVar9 * 0x7c + 0x78) != 3) &&
               (*(int *)(puStack_20 + uVar9 * 0x7c + 0x78) != 2)) {
              if ((byte)puVar1[0x742] < 9) {
                if ((*(int *)(puStack_20 + uVar9 * 0x7c + 0x24) !=
                     *(int *)(puStack_20 + uVar9 * 0x7c + 0x30)) ||
                   (*(int *)(puStack_20 + uVar9 * 0x7c + 0x28) !=
                    *(int *)(puStack_20 + uVar9 * 0x7c + 0x34))) {
                  *(undefined4 *)(puStack_20 + uVar9 * 0x7c + 0x78) = 1;
                  { int nug_a = (int)((uint)(byte)puVar1[uVar11 + 0x734]), nug_b = (int)(3); extraout_r1_02 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
                  ov96_021E8228(param_1,uVar11 & 0xff,extraout_r1_02 & 0xff,6,1);
                }
              }
              else {
                *(undefined4 *)(puStack_20 + uVar9 * 0x7c + 0x78) = 0;
              }
            }
            puVar1[0x742] = 0;
            puVar1[uVar11 + 0x734] = 0xc;
          }
        }
        else if (puVar1[uVar11 + 0x734] != '\f') {
          if ((byte)puVar1[0x742] < 0x14) {
            puVar1[0x742] = puVar1[0x742] + '\x01';
          }
          { int nug_a = (int)((uint)(byte)puVar1[uVar11 + 0x734]), nug_b = (int)(3); extraout_r1_00 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
          ov96_02213354((char)piVar7[1],*(undefined1 *)((int)piVar7 + 5),
                        puStack_20 + (extraout_r1_00 & 0xff) * 0x7c + 0x24);
        }
      }
      else {
        iVar2 = ov96_02213364(puVar1,uVar11 & 0xff,(char)piVar7[1],*(undefined1 *)((int)piVar7 + 5))
        ;
        if (iVar2 != 0xc) {
          { int nug_a = (int)(iVar2), nug_b = (int)(3); extraout_r1 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
          if (((*(int *)(puStack_20 + extraout_r1 * 0x7c + 0x78) != 2) &&
              (*(int *)(puStack_20 + extraout_r1 * 0x7c + 0x78) != 1)) &&
             (*(int *)(puStack_20 + extraout_r1 * 0x7c + 0x48) == 0)) {
            puVar1[uVar11 + 0x734] = (char)iVar2;
            puVar1[0x742] = 0;
          }
        }
      }
      puStack_1c = puStack_1c + 0x28;
      puStack_20 = puStack_20 + 0x174;
      uVar11 = uVar11 + 1;
      puVar10 = puVar10 + 0xc;
    } while ((int)uVar11 < 4);
    ov96_02214B84(param_1,*(undefined4 *)(puVar1 + 0x74c));
    ov96_022124F8(param_1);
    ov96_02212B94(param_1);
    ov96_022127F4(param_1);
    ov96_022130EC(param_1);
    ov96_022132FC(param_1);
    puVar1[0x73e] = *(int *)(puVar1 + 0x738) < 1;
    ov96_02211DE4(puVar1,puVar3);
  }
  return;
}

