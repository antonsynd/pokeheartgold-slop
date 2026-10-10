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
undefined4 VEC_Mag(void *);
undefined4 ov96_021EB0A4();
undefined4 ov96_021EAF78();
undefined4 VEC_MultAdd(int, void *, void *, void *);
undefined4 ov96_021E8228();
undefined4 VEC_Subtract(void *, void *, void *);
undefined4 GF_AssertFail(void);
undefined4 ov96_02207A34();
undefined4 VEC_Normalize(void *, void *);

int ov96_02207418(undefined4 param_1,int param_2,undefined4 *param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iStack_80;
  int iStack_74;
  int iStack_70;
  int iStack_6c;
  int iStack_68;
  int iStack_64;
  int iStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined auStack_38 [12];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined4 uStack_24;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined4 uStack_18;

  iStack_80 = 0;
  uStack_18 = 0;
  uStack_24 = 0;
  iVar7 = 0;
  iVar6 = param_2;
  do {
    if (*(char *)(iVar6 + 0xab) == '\0') {
      uVar1 = *(undefined4 *)(iVar6 + (uint)*(byte *)(iVar6 + 0xb1) * 4);
      ov96_021EB0A4(uVar1,(int)(*(int *)(iVar6 + 0x58) +
                               ((uint)(*(int *)(iVar6 + 0x58) >> 0xb) >> 0x14)) >> 0xc,
                    (int)(*(int *)(iVar6 + 0x5c) + ((uint)(*(int *)(iVar6 + 0x5c) >> 0xb) >> 0x14))
                    >> 0xc,&iStack_68,&iStack_6c);
      iVar4 = 0;
      iVar5 = param_2;
      do {
        iVar3 = iStack_68;
        if ((iVar7 != iVar4) && (*(char *)(iVar5 + 0xab) == '\0')) {
          uVar2 = *(undefined4 *)(iVar5 + (uint)*(byte *)(iVar5 + 0xb1) * 4);
          ov96_021EB0A4(uVar2,(int)(*(int *)(iVar5 + 0x58) +
                                   ((uint)(*(int *)(iVar5 + 0x58) >> 0xb) >> 0x14)) >> 0xc,
                        (int)(*(int *)(iVar5 + 0x5c) +
                             ((uint)(*(int *)(iVar5 + 0x5c) >> 0xb) >> 0x14)) >> 0xc,&iStack_70,
                        &iStack_74);
          ov96_021EAF78(uVar2,iStack_70 << 0xc,iStack_74 << 0xc,auStack_2c,auStack_28,&iStack_64);
          ov96_021EAF78(uVar1,iVar3 << 0xc,iStack_6c << 0xc,auStack_20,auStack_1c,&iStack_60);
          VEC_Subtract(auStack_20,auStack_2c,auStack_38);
          iVar3 = VEC_Mag(auStack_38);
          if (iVar3 < (iStack_64 + iStack_60) * 0x1000) {
            if (*(char *)(iVar6 + iVar4 + 0x94) == '\0') {
              iVar3 = ov96_02207A34(param_1,iVar6,iVar5);
              if (iVar3 == 0) {
                *(undefined1 *)(iVar6 + 0xa4) = 6;
                *(undefined1 *)(iVar5 + 0xa4) = 6;
              }
              iVar3 = VEC_Mag((undefined *)(iVar6 + 100));
              if (0xb000 < iVar3) {
                uStack_44 = 0;
                uStack_40 = 0;
                uStack_3c = 0;
                VEC_Normalize((undefined *)(iVar6 + 100),(undefined *)(iVar6 + 100));
                VEC_MultAdd(0xb000,(undefined *)(iVar6 + 100),(undefined *)&uStack_44,
                            (undefined *)(iVar6 + 100));
              }
              iVar3 = VEC_Mag((undefined *)(iVar5 + 100));
              if (0xb000 < iVar3) {
                uStack_50 = 0;
                uStack_4c = 0;
                uStack_48 = 0;
                VEC_Normalize((undefined *)(iVar5 + 100),(undefined *)(iVar5 + 100));
                VEC_MultAdd(0xb000,(undefined *)(iVar5 + 100),(undefined *)&uStack_50,
                            (undefined *)(iVar5 + 100));
              }
              if (*(char *)(iVar6 + iVar4 + 0x94) != '\0') {
                GF_AssertFail();
              }
              if (*(char *)(iVar5 + iVar7 + 0x94) != '\0') {
                GF_AssertFail();
              }
              *(undefined1 *)(iVar6 + iVar4 + 0x94) = 1;
              *(undefined1 *)(iVar5 + iVar7 + 0x94) = 1;
              if (iStack_80 == 0) {
                uStack_5c = 0;
                uStack_58 = 0;
                uStack_54 = 0;
                iStack_80 = 1;
                VEC_Subtract(auStack_2c,auStack_20,(undefined *)&uStack_5c);
                VEC_Normalize((undefined *)&uStack_5c,(undefined *)&uStack_5c);
                VEC_MultAdd(iStack_60 << 0xc,(undefined *)&uStack_5c,auStack_20,
                            (undefined *)&uStack_5c);
                *param_3 = uStack_5c;
                param_3[1] = uStack_58;
                param_3[2] = uStack_54;
              }
              ov96_021E8228(param_1,*(uint *)(iVar6 + 0x98) & 0xff,*(undefined1 *)(iVar6 + 0xb1),4,1
                           );
              ov96_021E8228(param_1,*(uint *)(iVar5 + 0x98) & 0xff,*(undefined1 *)(iVar5 + 0xb1),4,1
                           );
              break;
            }
          }
          else {
            *(undefined1 *)(iVar6 + iVar4 + 0x94) = 0;
            *(undefined1 *)(iVar7 + iVar5 + 0x94) = 0;
          }
        }
        iVar4 = iVar4 + 1;
        iVar5 = iVar5 + 0xb8;
      } while (iVar4 < 4);
    }
    iVar7 = iVar7 + 1;
    iVar6 = iVar6 + 0xb8;
    if (3 < iVar7) {
      return iStack_80;
    }
  } while( true );
}

