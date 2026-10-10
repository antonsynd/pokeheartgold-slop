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
undefined4 ov96_021EB06C();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov96_021F3180();

void ov96_021F2834(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 *puVar1;
  byte bVar2;
  int iVar3;
  byte *pbVar4;
  int extraout_r1;
  uint uVar5;
  undefined1 *puVar6;
  int iVar7;
  undefined4 *puVar8;
  undefined1 *puVar9;
  byte abStack_5c [4];
  uint uStack_58;
  uint uStack_54;
  byte abStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [48];
  undefined4 uStack_18;
  
  if (*(char *)(param_1 + 0x72b) != '\0') {
    iVar3 = 0;
    pbVar4 = abStack_50;
    iVar7 = 0;
    uStack_18 = param_4;
    do {
      iVar3 = iVar3 + 1;
      *pbVar4 = 0;
      pbVar4 = pbVar4 + 1;
    } while (iVar3 < 4);
    *(undefined1 *)(param_1 + 0x72b) = 0;
    *(undefined1 *)(param_1 + 0x74e) = 0;
    *(undefined1 *)(param_1 + 0x74f) = 0;
    do {
      iVar3 = func_0x020f2998(iVar7,3);
      func_0x020f2998(iVar7,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
      puVar8 = (undefined4 *)(param_1 + 0x20 + iVar3 * 0x1b0 + extraout_r1 * 0x90);
      if (puVar8[6] == 1) {
        ov96_021EB06C(*puVar8,(int)(puVar8[10] + ((uint)((int)puVar8[10] >> 0xb) >> 0x14)) >> 0xc,
                      (int)(puVar8[0xb] + ((uint)((int)puVar8[0xb] >> 0xb) >> 0x14)) >> 0xc,
                      &uStack_54,&uStack_58);
        iVar3 = ov96_021F3180(*(ushort *)(param_1 + 0x730) & 0xff,uStack_54 & 0xffff,
                              uStack_58 & 0xffff,abStack_5c);
        if (iVar3 != 0) {
          *(short *)((int)puVar8 + 0x42) = *(short *)((int)puVar8 + 0x42) + (short)iVar3;
          uVar5 = (uint)abStack_5c[0];
          bVar2 = abStack_50[uVar5];
          abStack_50[uVar5] = bVar2 + 1;
          auStack_48[(uint)bVar2 + uVar5 * 0xc] = (char)iVar7;
          auStack_4c[uVar5] = (char)iVar3;
        }
      }
      iVar7 = iVar7 + 1;
    } while (iVar7 < 0xc);
    iVar3 = 0;
    puVar9 = auStack_48;
    puVar6 = auStack_4c;
    pbVar4 = abStack_50;
    do {
      iVar7 = 0;
      if (*pbVar4 != 0) {
        do {
          puVar1 = puVar9 + iVar7;
          iVar7 = iVar7 + 1;
          *(undefined1 *)(param_1 + (uint)*(byte *)(param_1 + 0x74e) + 0x750) = *puVar1;
          *(undefined1 *)(param_1 + (uint)*(byte *)(param_1 + 0x74e) + 0x75c) = *puVar6;
          *(char *)(param_1 + 0x74e) = *(char *)(param_1 + 0x74e) + '\x01';
        } while (iVar7 < (int)(uint)*pbVar4);
      }
      iVar3 = iVar3 + 1;
      puVar9 = puVar9 + 0xc;
      puVar6 = puVar6 + 1;
      pbVar4 = pbVar4 + 1;
    } while (iVar3 < 4);
  }
  return;
}

