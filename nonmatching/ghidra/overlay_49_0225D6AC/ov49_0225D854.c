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
undefined4 func_0x020be0e4() __asm__("sub_020BE0E4");
undefined4 func_0x020180bc() __asm__("sub_020180BC");
undefined4 func_0x020c3b40() __asm__("sub_020C3B40");
undefined4 ov49_02258830();
undefined4 GfGfxLoader_LoadFromOpenNarc();
undefined4 func_0x020c3b50() __asm__("sub_020C3B50");

void ov49_0225D854(undefined4 *param_1,undefined4 param_2,undefined4 param_3,int param_4,
                  undefined4 param_5)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  int iVar4;
  undefined4 *puVar5;
  uint uVar6;
  undefined4 *puVar7;
  int iVar8;
  undefined4 *puStack_50;
  int iStack_40;
  int iStack_3c;
  undefined4 *puStack_38;
  int iStack_34;
  undefined4 *puStack_30;
  int iStack_2c;
  undefined4 *puStack_28;
  int iStack_24;
  undefined4 *puStack_20;
  int iStack_1c;
  int iStack_18;
  
  iStack_18 = 0;
  puStack_38 = param_1 + 8;
  iStack_34 = param_4;
  do {
    iVar8 = 0;
    iVar4 = iStack_34;
    puVar5 = puStack_38;
    do {
      ov49_02258830(puVar5,param_2,*(undefined4 *)(iVar4 + 0x128),param_5);
      iVar8 = iVar8 + 1;
      iVar4 = iVar4 + 4;
      puVar5 = puVar5 + 1;
    } while (iVar8 < 3);
    iStack_34 = iStack_34 + 0xc;
    puStack_38 = puStack_38 + 3;
    iStack_18 = iStack_18 + 1;
  } while (iStack_18 < 2);
  iVar8 = 0;
  puVar5 = param_1;
  puVar7 = param_1;
  iVar4 = param_4;
  do {
    uVar1 = GfGfxLoader_LoadFromOpenNarc(param_2,*(undefined4 *)(iVar4 + 0x120),0,param_5,0);
    *puVar5 = uVar1;
    iVar2 = func_0x020c3b40();
    puVar5[1] = iVar2;
    if (iVar2 == 0) {
LAB_0225d8f2:
      iVar2 = 0;
    }
    else {
      if ((iVar2 + 8 == 0) || (*(char *)(iVar2 + 9) == '\0')) {
        piVar3 = (int *)0x0;
      }
      else {
        piVar3 = (int *)(iVar2 + 8 + (uint)*(ushort *)(iVar2 + 0xe) + 4);
      }
      if (piVar3 == (int *)0x0) goto LAB_0225d8f2;
      iVar2 = iVar2 + *piVar3;
    }
    puVar5[2] = iVar2;
    uVar1 = func_0x020c3b50(puVar7[8]);
    puVar5[3] = uVar1;
    iVar8 = iVar8 + 1;
    iVar4 = iVar4 + 4;
    puVar5 = puVar5 + 4;
    puVar7 = puVar7 + 3;
    if (1 < iVar8) {
      iStack_3c = 0;
      puStack_20 = param_1 + 0xe;
      iVar4 = param_4;
      puStack_50 = param_1;
      puStack_28 = param_1;
      iStack_24 = param_4;
      iStack_1c = param_4;
      do {
        iStack_40 = 0;
        iStack_2c = iStack_1c;
        puStack_30 = puStack_20;
        puVar5 = puStack_28;
        iVar8 = iStack_24;
        do {
          if (*(int *)(param_4 + 0x120) != *(int *)(iStack_2c + 0x140)) {
            func_0x020180bc(puStack_30,puStack_50,param_2,*(int *)(iStack_2c + 0x140),param_5,
                            param_3);
            if ((0 < iStack_40) && (uVar6 = 0, *(int *)(iVar4 + 0x160) != 0)) {
              do {
                if (uVar6 != *(uint *)(iVar8 + 0x164)) {
                  func_0x020be0e4(puVar5[0x10],uVar6);
                }
                uVar6 = uVar6 + 1;
              } while (uVar6 < *(uint *)(iVar4 + 0x160));
            }
          }
          iVar8 = iVar8 + 4;
          iStack_2c = iStack_2c + 4;
          puVar5 = puVar5 + 5;
          puStack_30 = puStack_30 + 5;
          iStack_40 = iStack_40 + 1;
        } while (iStack_40 < 4);
        iVar4 = iVar4 + 4;
        iStack_1c = iStack_1c + 0x10;
        puStack_50 = puStack_50 + 4;
        puStack_20 = puStack_20 + 0x14;
        iStack_24 = iStack_24 + 0xc;
        puStack_28 = puStack_28 + 0x14;
        iStack_3c = iStack_3c + 1;
      } while (iStack_3c < 2);
      return;
    }
  } while( true );
}

