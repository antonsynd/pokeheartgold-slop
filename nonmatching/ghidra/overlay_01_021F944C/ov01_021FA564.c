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
typedef void code(void);
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
undefined4 FldObjSys_ReadMModelFromNarc(undefined4, undefined4, undefined4);
undefined4 sub_020238F8(undefined4);
undefined4 ov01_021FA61C(undefined4, undefined4, undefined4, undefined4);

void ov01_021FA564(undefined4 param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  short *psVar5;
  undefined4 *puVar6;
  int iVar7;
  undefined4 *puVar8;
  
  psVar5 = *(short **)(param_2 + 0x100);
  iVar7 = 0;
  puVar6 = *(undefined4 **)(psVar5 + 6);
  iVar1 = sub_020238F8(*(undefined4 *)(param_2 + 0xe0));
  if (iVar1 != 1) {
    for (; (psVar5[2] < psVar5[1] && (iVar7 < *psVar5)); iVar7 = iVar7 + 1) {
      if (puVar6[3] != 0) {
        uVar2 = FldObjSys_ReadMModelFromNarc(param_2,*puVar6,0);
        ov01_021FA61C(param_2,puVar6[1],uVar2,puVar6[2]);
        puVar6[3] = 0;
        psVar5[2] = psVar5[2] + 1;
      }
      puVar6 = puVar6 + 4;
    }
    iVar7 = 0;
    iVar1 = (int)*psVar5;
    puVar8 = *(undefined4 **)(psVar5 + 6);
    puVar6 = puVar8;
    if (0 < iVar1 + -1) {
      do {
        if ((puVar6[3] == 0) && (iVar3 = iVar7 + 1, iVar3 < iVar1)) {
          puVar4 = puVar8 + iVar3 * 4;
          do {
            if (puVar4[3] != 0) {
              puVar4 = puVar8 + iVar3 * 4;
              uVar2 = puVar4[1];
              *puVar6 = *puVar4;
              puVar6[1] = uVar2;
              uVar2 = puVar4[3];
              puVar6[2] = puVar4[2];
              puVar6[3] = uVar2;
              puVar4[3] = 0;
              break;
            }
            iVar3 = iVar3 + 1;
            puVar4 = puVar4 + 4;
          } while (iVar3 < iVar1);
        }
        iVar1 = (int)*psVar5;
        iVar7 = iVar7 + 1;
        puVar6 = puVar6 + 4;
      } while (iVar7 < iVar1 + -1);
    }
    psVar5[2] = 0;
  }
  return;
}

