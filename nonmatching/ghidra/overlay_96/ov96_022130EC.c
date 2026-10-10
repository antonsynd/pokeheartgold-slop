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
undefined4 ov96_022143DC();
undefined4 GF_AssertFail(void);
undefined4 _s32_div_f();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 ov96_021E8228();
undefined4 sub_02020E80(void *, void *, void *);

void ov96_022130EC(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  undefined *puVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  int extraout_r1;
  uint extraout_r1_00;
  uint extraout_r1_01;
  uint extraout_r1_02;
  undefined *puVar7;
  int iVar8;
  int iStack_28;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;
  { uint nug_r3; int nug_k; __asm__ volatile("movs %0, r3" : "=l"(nug_r3) : : "cc");
    for (nug_k = 0; nug_k < (int)sizeof(uStack_18) && 0 + nug_k < 4; nug_k++) ((unsigned char *)&uStack_18)[nug_k] = (unsigned char)(nug_r3 >> (8 * (0 + nug_k)));
  }


  uStack_18 = param_4;
  puVar2 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  iStack_28 = 0;
  puVar7 = puVar2 + 0x62c;
  do {
    if ((puVar7[0x38] != '\0') && ((puVar7[0x39] == '\0' || (puVar7[0x39] == '\x02')))) {
      iStack_20 = (int)(*(int *)(puVar7 + 8) + ((uint)(*(int *)(puVar7 + 8) >> 0xb) >> 0x14)) >> 0xc
      ;
      iStack_1c = (int)(*(int *)(puVar7 + 0xc) + ((uint)(*(int *)(puVar7 + 0xc) >> 0xb) >> 0x14)) >>
                  0xc;
      iVar3 = ov96_022143DC(puVar7);
      uVar4 = sub_02020E80((undefined *)(iVar3 * 0x10 + 0x221d474),
                           (undefined *)(iVar3 * 0x10 + 0x221d47c),(undefined *)&iStack_20);
      if ((uVar4 & 0xff) != 0) {
        puVar7[0x39] = 1;
        puVar7[0x3a] = 10;
        uVar4 = (uint)(byte)puVar7[0x3b];
        if (uVar4 != 0xc) {
          iVar5 = _s32_div_f(uVar4,3);
          { int nug_a = (int)(uVar4), nug_b = (int)(3); extraout_r1 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
          iVar6 = iVar5 * 0x174 + 0x5c;
          iVar8 = extraout_r1 * 0x7c;
          if (iVar3 == iVar5) {
            if (*(short *)(puVar2 + iVar8 + iVar6 + 0x5e) != 0) {
              *(short *)(puVar2 + iVar8 + iVar6 + 0x5e) =
                   *(short *)(puVar2 + iVar8 + iVar6 + 0x5e) + -1;
            }
            iVar3 = _s32_div_f((uint)(byte)puVar7[0x3b],3);
            if (*(int *)(puVar2 + iVar3 * 4 + 0x6f4) != 0) {
              *(int *)(puVar2 + iVar3 * 4 + 0x6f4) = *(int *)(puVar2 + iVar3 * 4 + 0x6f4) + -1;
            }
            bVar1 = puVar7[0x3b];
            uVar4 = _s32_div_f((uint)bVar1,3);
            { int nug_a = (int)((uint)bVar1), nug_b = (int)(3); extraout_r1_00 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
            ov96_021E8228(param_1,uVar4 & 0xff,extraout_r1_00 & 0xff,8,1);
            bVar1 = puVar7[0x3b];
            uVar4 = _s32_div_f((uint)bVar1,3);
            { int nug_a = (int)((uint)bVar1), nug_b = (int)(3); extraout_r1_01 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
            ov96_021E8228(param_1,uVar4 & 0xff,extraout_r1_01 & 0xff,1,1);
          }
          else {
            iVar5 = 0;
            if (puVar7[0x38] == '\x01') {
              iVar5 = 1;
            }
            else if (puVar7[0x38] == '\x02') {
              iVar5 = 2;
            }
            else {
              GF_AssertFail();
            }
            if ((uint)*(ushort *)(puVar2 + iVar8 + iVar6 + 0x5e) + iVar5 < 100) {
              *(short *)(puVar2 + iVar8 + iVar6 + 0x5e) =
                   *(short *)(puVar2 + iVar8 + iVar6 + 0x5e) + (short)iVar5;
            }
            iVar6 = _s32_div_f((uint)(byte)puVar7[0x3b],3);
            if (iVar5 + *(int *)(puVar2 + iVar6 * 4 + 0x6f4) < 100) {
              *(int *)(puVar2 + iVar6 * 4 + 0x6f4) = *(int *)(puVar2 + iVar6 * 4 + 0x6f4) + iVar5;
            }
            if (*(int *)(puVar2 + iVar3 * 4 + 0x6f4) != 0) {
              *(int *)(puVar2 + iVar3 * 4 + 0x6f4) = *(int *)(puVar2 + iVar3 * 4 + 0x6f4) + -1;
            }
            bVar1 = puVar7[0x3b];
            uVar4 = _s32_div_f((uint)bVar1,3);
            { int nug_a = (int)((uint)bVar1), nug_b = (int)(3); extraout_r1_02 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
            ov96_021E8228(param_1,uVar4 & 0xff,extraout_r1_02 & 0xff,3,1);
          }
        }
      }
    }
    puVar7 = puVar7 + 0x4c;
    iStack_28 = iStack_28 + 1;
  } while (iStack_28 < 2);
  return;
}

