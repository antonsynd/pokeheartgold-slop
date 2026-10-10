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
undefined4 sub_02031D6C(void *);
undefined4 sub_02032158(void *, void *);



void sub_020321A0(undefined *param_1,undefined *param_2,int param_3,int param_4)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  undefined *puVar6;
  undefined4 *puVar7;
  uint uVar8;
  int iStack_24;
  uint uStack_20;

  iVar4 = 0;
  uStack_20 = 0;
  puVar6 = param_1 + 0x38;
  do {
    iVar2 = sub_02031D6C(puVar6);
    if (iVar2 == 0) break;
    iVar4 = iVar4 + 1;
    uStack_20 = uStack_20 + 1;
    puVar6 = puVar6 + 0x20;
  } while (iVar4 < 3);
  iStack_24 = 0;
  if (0 < param_3) {
    do {
      if ((iStack_24 != param_4) &&
         (iVar4 = sub_02031D6C((undefined *)((int)param_2 + 0x18)), iVar4 != 0)) {
        uVar5 = 0;
        bVar1 = false;
        uVar8 = 0;
        puVar6 = param_1;
        do {
          puVar6 = puVar6 + 0x20;
          iVar4 = sub_02032158(param_2,puVar6);
          if (iVar4 != 0) {
            uVar5 = uVar8 & 0xff;
            bVar1 = true;
            break;
          }
          uVar8 = uVar8 + 1;
        } while ((int)uVar8 < 3);
        if ((int)uStack_20 < 3) {
          if (bVar1) {
            uVar8 = uStack_20 - 1 & 0xff;
          }
          else {
            uVar8 = uStack_20 & 0xff;
            uStack_20 = uStack_20 + 1;
          }
        }
        else {
          uVar8 = 2;
          bVar1 = true;
        }
        if (((bVar1) && (uVar5 < uVar8)) && ((int)uVar5 < (int)(uStack_20 - 1))) {
          puVar7 = (undefined4 *)(param_1 + uVar5 * 0x20);
          do {
            puVar7[8] = puVar7[0x10];
            puVar7[9] = puVar7[0x11];
            puVar7[10] = puVar7[0x12];
            puVar7[0xb] = puVar7[0x13];
            puVar7[0xc] = puVar7[0x14];
            puVar7[0xd] = puVar7[0x15];
            uVar5 = uVar5 + 1;
            puVar7[0xe] = puVar7[0x16];
            puVar7[0xf] = puVar7[0x17];
            puVar7 = puVar7 + 8;
          } while ((int)uVar5 < (int)(uStack_20 - 1));
        }
        uVar3 = *(undefined4 *)((int)param_2 + 4);
        *(undefined4 *)(param_1 + uVar8 * 0x20 + 0x20) = *(undefined4 *)param_2;
        *(undefined4 *)(param_1 + uVar8 * 0x20 + 0x24) = uVar3;
        uVar3 = *(undefined4 *)((int)param_2 + 0xc);
        *(undefined4 *)(param_1 + uVar8 * 0x20 + 0x28) = *(undefined4 *)((int)param_2 + 8);
        *(undefined4 *)(param_1 + uVar8 * 0x20 + 0x2c) = uVar3;
        uVar3 = *(undefined4 *)((int)param_2 + 0x14);
        *(undefined4 *)(param_1 + uVar8 * 0x20 + 0x30) = *(undefined4 *)((int)param_2 + 0x10);
        *(undefined4 *)(param_1 + uVar8 * 0x20 + 0x34) = uVar3;
        uVar3 = *(undefined4 *)((int)param_2 + 0x1c);
        *(undefined4 *)(param_1 + uVar8 * 0x20 + 0x38) = *(undefined4 *)((int)param_2 + 0x18);
        *(undefined4 *)(param_1 + uVar8 * 0x20 + 0x3c) = uVar3;
      }
      param_2 = (undefined *)((int)param_2 + 0x20);
      iStack_24 = iStack_24 + 1;
    } while (iStack_24 < param_3);
  }
  return;
}

