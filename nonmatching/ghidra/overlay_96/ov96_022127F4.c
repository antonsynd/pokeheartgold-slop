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
undefined4 ov96_022134D4();
undefined4 ov96_021EAF78();
undefined4 ov96_02213534();
undefined4 VEC_MultAdd(int, void *, void *, void *);
ulonglong _s32_div_f(int, int);
undefined4 VEC_Subtract(void *, void *, void *);
undefined4 VEC_DotProduct(void *, void *);
undefined4 ov96_021E8228();
undefined4 ov96_0221341C();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 VEC_Normalize(void *, void *);
undefined4 VEC_Mag(void *);

void ov96_022127F4(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  undefined1 uVar2;
  undefined *puVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int *piVar9;
  undefined *puVar10;
  uint uVar11;
  int iVar12;
  ulonglong uVar13;
  int iStack_60;
  int iStack_58;
  int iStack_40;
  undefined auStack_3c [12];
  int iStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  { uint nug_r3; int nug_k; __asm__ volatile("movs %0, r3" : "=l"(nug_r3) : : "cc");
    for (nug_k = 0; nug_k < (int)sizeof(uStack_18) && 0 + nug_k < 4; nug_k++) ((unsigned char *)&uStack_18)[nug_k] = (unsigned char)(nug_r3 >> (8 * (0 + nug_k)));
  }

  
  uStack_18 = param_4;
  puVar3 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  iStack_58 = 0;
  puVar10 = puVar3 + 0x62c;
  do {
    cVar1 = puVar10[0x38];
    if ((cVar1 != '\0') && ((puVar10[0x39] == '\0' || (puVar10[0x39] == '\x02')))) {
      if (cVar1 == '\x01') {
        iStack_60 = 8;
      }
      else if (cVar1 == '\x02') {
        iStack_60 = 0xc;
      }
      uVar11 = 0;
      do {
        uStack_24 = 0;
        uStack_20 = 0;
        uStack_1c = 0;
        uVar13 = _s32_div_f(uVar11,3);
        uVar8 = (uint)(uVar13 >> 0x20);
        uVar13 = _s32_div_f(uVar11,3);
        uVar4 = (uint)uVar13;
        iVar5 = uVar4 * 0x174 + 0x5c;
        iVar6 = uVar8 * 0x7c + iVar5;
        ov96_021EAF78(*(undefined4 *)(puVar3 + uVar8 * 0x7c + iVar5),
                      *(undefined4 *)(puVar3 + iVar6 + 0x30),*(undefined4 *)(puVar3 + iVar6 + 0x34),
                      &uStack_24,&uStack_20,&iStack_40);
        iVar5 = ov96_0221341C(&uStack_24,iStack_40 << 0xc,puVar10 + 8,iStack_60 << 0xc);
        if (iVar5 == 0) {
          puVar10[uVar11 + 0x2c] = 0;
        }
        else if ((((puVar10[uVar11 + 0x2c] == '\0') || (*(int *)(puVar10 + 0x48) == 0)) &&
                 (*(int *)(puVar3 + iVar6 + 0x48) != 3)) && (*(int *)(puVar3 + iVar6 + 0x48) != 2))
        {
          VEC_Subtract(puVar10 + 8,(undefined *)&uStack_24,(undefined *)&iStack_30);
          VEC_Normalize((undefined *)&iStack_30,(undefined *)&iStack_30);
          if (puVar10[0x39] == '\x02') {
            if ((byte)puVar10[0x3b] == uVar11) goto LAB_02212ae4;
            if ((int)((uint)(byte)puVar3[iVar6 + 0x71] - (uint)(byte)puVar10[0x45]) < 1) {
              puVar3[iVar6 + 0x71] = 0;
              *(undefined4 *)(puVar3 + iVar6 + 0x78) = 2;
              piVar9 = (int *)(puVar3 + iVar6 + 0x4c);
              puVar3[iVar6 + 0x60] = 0x5a;
              *(undefined4 *)(puVar3 + iVar6 + 0x48) = 3;
              *(undefined2 *)(puVar3 + iVar6 + 0x5a) = 0x1e;
              *piVar9 = iStack_30;
              *(undefined4 *)(puVar3 + iVar6 + 0x50) = uStack_2c;
              *(undefined4 *)(puVar3 + iVar6 + 0x54) = uStack_28;
              *piVar9 = -*piVar9;
              *(int *)(puVar3 + iVar6 + 0x50) = -*(int *)(puVar3 + iVar6 + 0x50);
              *(undefined2 *)(puVar3 + iVar6 + 0x58) = 7;
              ov96_021E8228(param_1,uVar4 & 0xff,uVar8 & 0xff,1,1);
            }
            else {
              puVar3[iVar6 + 0x71] =
                   (char)((uint)(byte)puVar3[iVar6 + 0x71] - (uint)(byte)puVar10[0x45]);
              *(undefined4 *)(puVar3 + iVar6 + 0x48) = 3;
              piVar9 = (int *)(puVar3 + iVar6 + 0x4c);
              *(undefined2 *)(puVar3 + iVar6 + 0x5a) = 0x1e;
              *(undefined2 *)(puVar3 + iVar6 + 0x58) = 7;
              *piVar9 = iStack_30;
              *(undefined4 *)(puVar3 + iVar6 + 0x50) = uStack_2c;
              *(undefined4 *)(puVar3 + iVar6 + 0x54) = uStack_28;
              *piVar9 = -*piVar9;
              *(int *)(puVar3 + iVar6 + 0x50) = -*(int *)(puVar3 + iVar6 + 0x50);
            }
          }
          else {
            iVar5 = VEC_Mag(puVar3 + iVar6 + 0x3c);
            if (iVar5 != 0) {
              uVar13 = _s32_div_f((uint)*(ushort *)(puVar3 + iVar6 + 0x6c) << 0x10,0x168);
              iVar5 = ov96_02213534(puVar3 + iVar6 + 0x3c,&iStack_30,(uint)uVar13 & 0xffff);
              if ((*(int *)(puVar3 + iVar6 + 0x78) == 1) && (iVar5 != 0)) {
                puVar10[0x39] = 2;
                puVar10[0x3e] = 2;
                puVar10[0x41] = puVar3[iVar6 + 0x73];
                puVar10[0x45] = puVar3[iVar6 + 0x72];
                *(ushort *)(puVar10 + 0x46) = (ushort)(byte)puVar3[iVar6 + 0x75];
                uVar2 = *(undefined1 *)((uint)(byte)puVar10[0x41] * 0x1e + 0x221d514);
                piVar9 = (int *)(puVar3 + iVar6 + 0x4c);
                *(undefined4 *)(puVar3 + iVar6 + 0x48) = 1;
                *piVar9 = iStack_30;
                *(undefined4 *)(puVar3 + iVar6 + 0x50) = uStack_2c;
                *(undefined4 *)(puVar3 + iVar6 + 0x54) = uStack_28;
                *piVar9 = -*piVar9;
                *(int *)(puVar3 + iVar6 + 0x50) = -*(int *)(puVar3 + iVar6 + 0x50);
                *(undefined2 *)(puVar3 + iVar6 + 0x58) = 3;
                *(undefined4 *)(puVar3 + iVar6 + 0x78) = 0;
                puVar10[0x3c] = 1;
                puVar10[0x3d] = 0x1e;
                ov96_021E8228(param_1,uVar4 & 0xff,uVar8 & 0xff,4,1);
              }
              else {
                puVar10[0x3e] = 1;
                puVar10[0x41] = puVar3[iVar6 + 0x73];
                uVar2 = *(undefined1 *)((uint)(byte)puVar10[0x41] * 0x1e + 0x221d5aa);
                puVar10[0x3c] = 1;
                puVar10[0x3d] = 0x1e;
              }
              puVar10[0x40] = uVar2;
            }
            ov96_022134D4(puVar3,puVar10,&iStack_30);
            puVar10[0x3b] = (char)uVar11;
          }
          puVar10[uVar11 + 0x2c] = 1;
        }
LAB_02212ae4:
        uVar11 = uVar11 + 1;
      } while ((int)uVar11 < 0xc);
      iVar5 = 0;
      do {
        iVar6 = iVar5 >> 0x1f;
        iVar12 = (((uint)(iVar5 * 0x40000000 + iVar6) >> 0x1e | iVar6 << 2) - iVar6) * 0x18 +
                 0x221d4b4;
        iVar6 = ((int)(iVar5 + ((uint)(iVar5 >> 1) >> 0x1e)) >> 2) * 0xc;
        iVar7 = ov96_0221341C(iVar12 + iVar6,0x8000,puVar10 + 8,iStack_60 << 0xc);
        if (iVar7 != 0) {
          VEC_Subtract((undefined *)(iVar12 + iVar6),puVar10 + 8,auStack_3c);
          VEC_Normalize(auStack_3c,auStack_3c);
          iVar5 = VEC_DotProduct(puVar10 + 0x14,auStack_3c);
          if (0 < iVar5) {
            VEC_MultAdd(iVar5 * -2,auStack_3c,puVar10 + 0x14,puVar10 + 0x14);
            VEC_Normalize(puVar10 + 0x14,puVar10 + 0x20);
          }
          break;
        }
        iVar5 = iVar5 + 1;
      } while (iVar5 < 8);
    }
    puVar10 = puVar10 + 0x4c;
    iStack_58 = iStack_58 + 1;
    if (1 < iStack_58) {
      return;
    }
  } while( true );
}

