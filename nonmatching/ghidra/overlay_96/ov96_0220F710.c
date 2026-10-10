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
undefined4 ov96_0220D6CC();
undefined4 VEC_MultAdd(int, void *, void *, void *);
undefined4 _s32_div_f();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 VEC_Normalize(void *, void *);
undefined4 ov96_0220E974();
undefined4 ov96_0220D694();
undefined4 VEC_Subtract(void *, void *, void *);
undefined4 ov96_0220D5D0();

void ov96_0220F710(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int extraout_r1;
  int extraout_r1_00;
  undefined *puVar5;
  undefined1 *puVar6;
  undefined *puVar7;
  undefined *puStack_48;
  int iStack_3c;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  { uint nug_r3; int nug_k; __asm__ volatile("movs %0, r3" : "=l"(nug_r3) : : "cc");
    for (nug_k = 0; nug_k < (int)sizeof(uStack_18) && 0 + nug_k < 4; nug_k++) ((unsigned char *)&uStack_18)[nug_k] = (unsigned char)(nug_r3 >> (8 * (0 + nug_k)));
  }


  uStack_18 = param_4;
  puVar1 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  iStack_3c = 0;
  puStack_48 = puVar1 + 0xcc;
  do {
    iVar2 = _s32_div_f(iStack_3c,3);
    { int nug_a = (int)(iStack_3c), nug_b = (int)(3); extraout_r1 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
    puVar7 = puVar1 + extraout_r1 * 0x48 + iVar2 * 0xe4 + 0x164;
    iVar2 = iStack_3c + 1;
    if (iVar2 < 0xc) {
      puVar6 = puVar1 + 0xcc + iVar2 * 0xc + iStack_3c;
      do {
        iVar3 = _s32_div_f(iVar2,3);
        { int nug_a = (int)(iVar2), nug_b = (int)(3); extraout_r1_00 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
        puVar5 = puVar1 + extraout_r1_00 * 0x48 + iVar3 * 0xe4 + 0x164;
        iVar3 = ov96_0220D694(puVar7);
        if ((((iVar3 == 0) || (iVar3 = ov96_0220D694(puVar5), iVar3 == 0)) ||
            (iVar3 = ov96_0220D5D0(puVar7,puVar5), iVar3 == 0)) || (puStack_48[iVar2] != '\0')) {
          *puVar6 = 0;
          puStack_48[iVar2] = *puVar6;
        }
        else {
          uStack_24 = 0;
          uStack_20 = 0;
          uStack_1c = 0;
          *puVar6 = 1;
          puStack_48[iVar2] = *puVar6;
          VEC_Subtract(puVar7 + 0x1c,puVar5 + 0x1c,(undefined *)&uStack_24);
          VEC_Normalize((undefined *)&uStack_24,(undefined *)&uStack_24);
          iVar3 = *(int *)(*(int *)(puVar5 + 8) + 4);
          if ((*(uint *)(puVar7 + 0x40) & 0x3ffffff) >> 0x18 == 0) {
            iVar3 = _s32_div_f(iVar3 * 6,5);
          }
          VEC_MultAdd(iVar3,(undefined *)&uStack_24,puVar7 + 0x28,puVar7 + 0x34);
          iVar3 = *(int *)(*(int *)(puVar7 + 8) + 4);
          if ((*(uint *)(puVar5 + 0x40) & 0x3ffffff) >> 0x18 == 0) {
            iVar3 = _s32_div_f(iVar3 * 6,5);
          }
          VEC_MultAdd(iVar3,(undefined *)&uStack_24,puVar5 + 0x28,puVar5 + 0x34);
          *(int *)(puVar5 + 0x34) = -*(int *)(puVar5 + 0x34);
          *(int *)(puVar5 + 0x38) = -*(int *)(puVar5 + 0x38);
          ov96_0220E974(puVar7 + 0x34,0x8000);
          ov96_0220E974(puVar5 + 0x34,0x8000);
          uVar4 = ov96_0220D6CC(&uStack_24);
          *(uint *)(puVar5 + 0x40) =
               *(uint *)(puVar5 + 0x40) & 0xff0fffff | (uVar4 & 0xf) << 0x14 | 0x4000000;
          *(uint *)(puVar7 + 0x40) = *(uint *)(puVar7 + 0x40) | 0x4000000;
        }
        iVar2 = iVar2 + 1;
        puVar6 = puVar6 + 0xc;
      } while (iVar2 < 0xc);
    }
    puStack_48 = puStack_48 + 0xc;
    iStack_3c = iStack_3c + 1;
  } while (iStack_3c < 0xc);
  return;
}

