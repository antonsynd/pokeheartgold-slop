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
undefined4 ov96_02213444();
undefined4 _s32_div_f(void);
undefined4 ov96_02212F0C();
undefined4 GF_AssertFail(void);
undefined4 ov96_0221341C();
void * PokeathlonCourse_GetHeapAllocPtr4(void *);
undefined4 ov96_02213E60();
unsigned short LCRandom(void);
undefined4 ov96_02213728();

void ov96_02212B94(undefined *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  undefined *puVar2;
  int iVar3;
  undefined1 uVar4;
  int extraout_r1;
  undefined *puVar5;
  uint uVar6;
  int iVar7;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  puVar2 = PokeathlonCourse_GetHeapAllocPtr4(param_1);
  if ((puVar2[0x6b0] == '\0') && (*(int *)(puVar2 + 0x738) < 0x385)) {
    puVar2[0x6b1] = 3;
    puVar2[0x6b0] = 1;
  }
  iVar7 = 0;
  puVar5 = puVar2 + 0x62c;
  do {
    if (puVar5[0x38] != '\0') {
      cVar1 = puVar5[0x39];
      if (cVar1 == '\x03') {
        puVar5[0x43] = puVar5[0x43] + '\x01';
        if (7 < (byte)puVar5[0x43]) {
          puVar5[0x43] = 0;
          puVar5[0x39] = 0;
        }
      }
      else if (cVar1 == '\x01') {
        puVar5[0x3a] = puVar5[0x3a] + -1;
        if (puVar5[0x3a] == '\0') {
          ov96_02213444(puVar5);
          ov96_02213E60(puVar2,puVar5);
          if (iVar7 == 0) {
            iVar3 = *(int *)(puVar2 + 0x738);
            if (iVar3 < 0x4b0) {
              if (iVar3 < 600) {
                if (iVar3 < 300) {
                  iVar3 = 0x19;
                }
                else {
                  iVar3 = 10;
                }
              }
              else {
                iVar3 = 5;
              }
            }
            else {
              iVar3 = 0;
            }
            uVar6 = iVar3 + (uint)(byte)puVar2[0x743] & 0xff;
            if (100 < uVar6) {
              uVar6 = 100;
            }
            LCRandom();
            _s32_div_f();
            if (extraout_r1 < (int)uVar6) {
              puVar5[0x38] = 2;
              puVar2[0x743] = 0;
            }
            else {
              puVar5[0x38] = 1;
              if ((byte)puVar2[0x743] < 100) {
                puVar2[0x743] = puVar2[0x743] + '\x01';
              }
            }
          }
          else {
            puVar5[0x38] = 1;
          }
        }
      }
      else if ((cVar1 == '\0') || (cVar1 == '\x02')) {
        if ((byte)puVar5[0x40] == 0) {
          puVar5[0x39] = 0;
          puVar5[0x45] = 0;
          *(undefined2 *)(puVar5 + 0x46) = 0;
          puVar5[0x3e] = 0;
        }
        else {
          uStack_24 = *(undefined4 *)(puVar5 + 8);
          uStack_20 = *(undefined4 *)(puVar5 + 0xc);
          uStack_1c = *(undefined4 *)(puVar5 + 0x10);
          *(int *)(puVar5 + 8) = *(int *)(puVar5 + 8) + *(int *)(puVar5 + 0x14);
          *(int *)(puVar5 + 0xc) = *(int *)(puVar5 + 0xc) + *(int *)(puVar5 + 0x18);
          if ((uint)(byte)puVar5[0x40] * 0x1000 <
              (uint)*(byte *)(*(ushort *)(puVar5 + 0x46) + 0x221d640) * 0x1000) {
            puVar5[0x39] = 0;
            puVar5[0x45] = 0;
          }
          else if (puVar5[0x3e] == '\x02') {
            puVar5[0x39] = 2;
          }
          else {
            puVar5[0x39] = 0;
          }
          uStack_30 = 0;
          uStack_2c = 0;
          uStack_28 = 0;
          if (puVar5[0x3e] == '\x02') {
            uVar4 = *(undefined1 *)
                     ((uint)(byte)puVar5[0x3c] + (uint)(byte)puVar5[0x41] * 0x1e + 0x221d514);
          }
          else if (puVar5[0x3e] == '\x01') {
            uVar4 = *(undefined1 *)
                     ((uint)(byte)puVar5[0x3c] + (uint)(byte)puVar5[0x41] * 0x1e + 0x221d5aa);
          }
          else {
            GF_AssertFail();
            uVar4 = 0;
          }
          puVar5[0x40] = uVar4;
          ov96_022134D4(puVar2,puVar5,puVar5 + 0x20);
          puVar5[0x3c] = puVar5[0x3c] + '\x01';
          if ((byte)puVar5[0x3c] < (byte)puVar5[0x3d]) {
            if (puVar5[0x40] == '\0') {
              *(undefined4 *)(puVar5 + 0x20) = uStack_30;
              *(undefined4 *)(puVar5 + 0x24) = uStack_2c;
              *(undefined4 *)(puVar5 + 0x28) = uStack_28;
              puVar5[0x3c] = 0;
              puVar5[0x3d] = 0;
              puVar5[0x3e] = 0;
            }
          }
          else {
            *(undefined4 *)(puVar5 + 0x14) = 0;
            *(undefined4 *)(puVar5 + 0x18) = 0;
            *(undefined4 *)(puVar5 + 0x20) = uStack_30;
            *(undefined4 *)(puVar5 + 0x24) = uStack_2c;
            *(undefined4 *)(puVar5 + 0x28) = uStack_28;
            puVar5[0x3e] = 0;
            puVar5[0x40] = 0;
          }
          *(undefined4 *)(puVar5 + 0x48) = 0;
          iVar3 = ov96_02213728(puVar5 + 8,&uStack_24,8,0,&uStack_3c);
          if (iVar3 != 0) {
            *(undefined4 *)(puVar5 + 8) = uStack_3c;
            *(undefined4 *)(puVar5 + 0xc) = uStack_38;
            *(undefined4 *)(puVar5 + 0x10) = uStack_34;
            *(undefined4 *)(puVar5 + 0x48) = 1;
          }
          switch(iVar3) {
          case 1:
          case 2:
            *(int *)(puVar5 + 0x20) = -*(int *)(puVar5 + 0x20);
            *(int *)(puVar5 + 0x14) = -*(int *)(puVar5 + 0x14);
            break;
          case 3:
          case 4:
            *(int *)(puVar5 + 0x24) = -*(int *)(puVar5 + 0x24);
            *(int *)(puVar5 + 0x18) = -*(int *)(puVar5 + 0x18);
          }
        }
      }
    }
    iVar7 = iVar7 + 1;
    puVar5 = puVar5 + 0x4c;
  } while (iVar7 < 2);
  if ((((puVar2[0x664] != '\0') && (puVar2[0x6b0] != '\0')) && (puVar2[0x665] != '\x01')) &&
     (((puVar2[0x665] != '\x03' && (puVar2[0x6b1] != '\x01')) && (puVar2[0x6b1] != '\x03')))) {
    if (puVar2[0x664] == '\x01') {
      iVar7 = 8;
    }
    else {
      if (puVar2[0x664] != '\x02') {
        GF_AssertFail();
        return;
      }
      iVar7 = 0xc;
    }
    iVar7 = ov96_0221341C(puVar2 + 0x634,iVar7 << 0xc,puVar2 + 0x680,0x8000);
    if (iVar7 != 0) {
      ov96_02212F0C(puVar2 + 0x62c,puVar2 + 0x678);
    }
  }
  return;
}

