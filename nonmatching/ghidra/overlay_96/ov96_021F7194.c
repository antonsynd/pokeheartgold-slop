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
undefined4 func_0x020ccdac(void *, void *, void *) __asm__("sub_020CCDAC");
undefined4 sub_0200606C(unsigned short, int);
undefined4 ov96_021F6060();
undefined4 ov96_021E8228();
undefined4 ov96_021EAF78();
undefined4 ov96_021EB0A4();
undefined4 ov96_021E5F24(void *);
undefined4 func_0x020ccfe0(void *, void *) __asm__("sub_020CCFE0");
undefined4 func_0x020cd224(int, void *, void *, void *) __asm__("sub_020CD224");
undefined4 func_0x020f2998() __asm__("sub_020F2998");

undefined4 ov96_021F7194(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined1 uVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined1 extraout_r1;
  int iVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  int *piVar9;
  uint uVar10;
  uint uStack_68;
  int *piStack_64;
  int iStack_4c;
  int iStack_48;
  int iStack_44;
  int iStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined4 uStack_28;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_68 = 0;
  puVar7 = (undefined4 *)(param_2 + 0x90);
  piStack_64 = (int *)(param_2 + 0xfac);
  uStack_18 = param_4;
  do {
    piVar9 = (int *)(param_2 + 0xfac);
    uVar10 = 0;
    piVar3 = puVar7 + 7;
    puVar8 = (undefined4 *)(param_2 + 0x90);
    do {
      if (uStack_68 != uVar10) {
        uVar1 = ov96_021E5F24(param_1);
        uVar4 = *puVar7;
        uVar5 = *puVar8;
        iVar6 = piStack_64[2] * -0x40 + 0x120000;
        ov96_021EB0A4(uVar4,(int)(puVar7[7] + ((uint)((int)puVar7[7] >> 0xb) >> 0x14)) >> 0xc,
                      (int)(iVar6 + ((uint)(iVar6 >> 0xb) >> 0x14)) >> 0xc,&iStack_48,&iStack_4c);
        ov96_021EAF78(uVar4,iStack_48 << 0xc,iStack_4c << 0xc,auStack_24,auStack_20,&iStack_40);
        uStack_1c = 0;
        iVar6 = piVar9[2] * -0x40 + 0x120000;
        ov96_021EB0A4(uVar5,(int)(puVar8[7] + ((uint)((int)puVar8[7] >> 0xb) >> 0x14)) >> 0xc,
                      (int)(iVar6 + ((uint)(iVar6 >> 0xb) >> 0x14)) >> 0xc,&iStack_48,&iStack_4c);
        ov96_021EAF78(uVar5,iStack_48 << 0xc,iStack_4c << 0xc,auStack_30,auStack_2c,&iStack_44);
        uStack_28 = 0;
        iVar6 = ov96_021F6060(auStack_24,iStack_40 << 0xc,auStack_30,iStack_44 << 0xc);
        if (iVar6 == 0) {
          *(undefined1 *)((int)puVar7 + uVar10 + 0x29) = 0;
          *(undefined1 *)((int)puVar8 + uStack_68 + 0x29) = 0;
        }
        else if (*(char *)((int)puVar8 + uStack_68 + 0x29) == '\0') {
          *(undefined1 *)((int)puVar7 + 0x26) = 1;
          *(undefined1 *)((int)puVar8 + 0x26) = 1;
          uVar2 = func_0x020f2998(puVar7[0xc] * 0x1e,0x1e);
          *(undefined1 *)((int)puVar7 + 0x27) = uVar2;
          uVar2 = func_0x020f2998(puVar8[0xc] * 0x1e,0x1e);
          *(undefined1 *)((int)puVar8 + 0x27) = uVar2;
          uStack_3c = 0;
          uStack_38 = 0;
          uStack_34 = 0;
          func_0x020ccdac(auStack_30,auStack_24,&uStack_3c);
          func_0x020ccfe0(&uStack_3c,&uStack_3c);
          func_0x020cd224(iStack_40 << 0xc,&uStack_3c,auStack_24,&uStack_3c);
          iVar6 = param_2 + (uint)*(byte *)(param_2 + 0x143) * 0xc;
          *(undefined4 *)(iVar6 + 0x144) = uStack_3c;
          *(undefined4 *)(iVar6 + 0x148) = uStack_38;
          *(undefined4 *)(iVar6 + 0x14c) = uStack_34;
          *(undefined1 *)(param_2 + (uint)*(byte *)(param_2 + 0x143) + 0x168) = 1;
          func_0x020f2998(*(byte *)(param_2 + 0x143) + 1,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
          *(undefined1 *)(param_2 + 0x143) = extraout_r1;
          sub_0200606C(0x8a3,6);
          ov96_021E8228(param_1,uVar1,uStack_68 & 0xff,4,1);
          ov96_021E8228(param_1,uVar1,uVar10 & 0xff,4,1);
          ov96_021E8228(param_1,uVar1,uStack_68 & 0xff,1,1);
          ov96_021E8228(param_1,uVar1,uVar10 & 0xff,1,1);
          if ((((piStack_64[4] == 0) || (piVar9[4] == 0)) || (piStack_64[2] < 1)) || (piVar9[2] < 1)
             ) {
            if ((int)puVar8[7] < (int)puVar7[7]) {
              *piVar3 = *piVar3 + 0x10000;
              iVar6 = puVar8[7] + -0x10000;
            }
            else {
              *piVar3 = *piVar3 + -0x10000;
              iVar6 = puVar8[7] + 0x10000;
            }
            puVar8[7] = iVar6;
            if ((int)puVar7[7] < 0x20000) {
              puVar7[7] = 0x20000;
            }
            else if (0xdf000 < (int)puVar7[7]) {
              puVar7[7] = 0xdf000;
            }
            if ((int)puVar8[7] < 0x20000) {
              puVar8[7] = 0x20000;
            }
            else if (0xdf000 < (int)puVar8[7]) {
              puVar8[7] = 0xdf000;
            }
          }
          else if ((*(char *)((int)puVar7 + uVar10 + 0x29) == '\0') &&
                  (*(char *)((int)puVar8 + uStack_68 + 0x29) == '\0')) {
            *(undefined1 *)((int)puVar7 + uVar10 + 0x29) = 1;
            *(undefined1 *)((int)puVar8 + uStack_68 + 0x29) = 1;
            iVar6 = *piVar9;
            *piVar9 = *piStack_64;
            *piStack_64 = iVar6;
            uVar4 = puVar8[6];
            puVar8[6] = puVar7[6];
            puVar7[6] = uVar4;
            if (*piStack_64 < 0) {
              *piStack_64 = 0;
            }
            if (*piVar9 < 0) {
              *piVar9 = 0;
            }
          }
        }
      }
      uVar10 = uVar10 + 1;
      puVar8 = puVar8 + 0xe;
      piVar9 = piVar9 + 7;
    } while ((int)uVar10 < 3);
    puVar7 = puVar7 + 0xe;
    piStack_64 = piStack_64 + 7;
    uStack_68 = uStack_68 + 1;
  } while ((int)uStack_68 < 3);
  return 0;
}

