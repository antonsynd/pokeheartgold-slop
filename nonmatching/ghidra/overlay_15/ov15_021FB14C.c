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
undefined4 ov15_021FEB84();
undefined4 ov15_021FB380();
undefined4 Leftover_CanPlantBerry();
undefined4 func_0x020781c4() __asm__("sub_020781C4");
undefined4 func_0x020781d0() __asm__("sub_020781D0");
undefined4 SoundSys_GetGBSoundsState();
undefined4 ItemIdIsNotJohtoBall();
undefined4 ov15_021FD3F0();
undefined4 Heap_Free();
undefined4 LoadItemDataOrGfx();
undefined4 GetItemAttr_PreloadedItemData();
extern undefined ov15_02201368;

void ov15_021FB14C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  char cVar2;
  undefined4 uVar3;
  uint uVar4;
  byte *pbVar5;
  int iVar6;
  int iVar7;
  byte abStack_20 [8];
  undefined4 uStack_18;

  pbVar5 = abStack_20;
  abStack_20[0] = 0xff;
  abStack_20[1] = 0xff;
  abStack_20[2] = 0xff;
  abStack_20[3] = 0xff;
  abStack_20[4] = 0xff;
  uStack_18 = param_4;
  uVar3 = LoadItemDataOrGfx(*(undefined2 *)(*(int *)(param_1 + 0x234) + 0x66),0,6);
  cVar1 = *(char *)(*(int *)(param_1 + 0x234) +
                    (uint)*(byte *)(*(int *)(param_1 + 0x234) + 100) * 0xc + 0xc);
  iVar6 = 0;
  iVar7 = param_1;
  do {
    iVar6 = iVar6 + 1;
    *(undefined4 *)(iVar7 + 0x7f0) = 0;
    iVar7 = iVar7 + 4;
  } while (iVar6 < 5);
  iVar7 = *(int *)(param_1 + 0x234);
  if (*(char *)(iVar7 + 0x65) == '\0') {
    if ((ushort)((*(ushort *)(iVar7 + 0x76) >> 1) - 2) < 2) {
      if (*(char *)(iVar7 + (uint)*(byte *)(iVar7 + 100) * 0xc + 0xc) == '\x05') {
        abStack_20[0] = 2;
      }
    }
    else {
      iVar7 = GetItemAttr_PreloadedItemData(uVar3,6);
      if (iVar7 != 0) {
        iVar7 = *(int *)(param_1 + 0x234);
        if ((*(short *)(iVar7 + 0x66) == 0x1c2) && ((*(ushort *)(iVar7 + 0x76) & 1) == 1)) {
          abStack_20[0] = 1;
        }
        else {
          cVar2 = *(char *)(iVar7 + (uint)*(byte *)(iVar7 + 100) * 0xc + 0xc);
          if (cVar2 == '\x05') {
            abStack_20[0] = 2;
          }
          else if (*(short *)(iVar7 + 0x66) == 0x1c1) {
            abStack_20[0] = 4;
          }
          else if ((cVar2 == '\x04') &&
                  (iVar7 = Leftover_CanPlantBerry(*(undefined4 *)(iVar7 + 0x70)), iVar7 == 1)) {
            abStack_20[0] = 3;
          }
          else if ((*(short *)(*(int *)(param_1 + 0x234) + 0x66) == 0x1f6) &&
                  (iVar7 = SoundSys_GetGBSoundsState(), iVar7 == 1)) {
            abStack_20[0] = 0xf;
          }
          else {
            abStack_20[0] = 0;
          }
        }
      }
    }
    iVar7 = GetItemAttr_PreloadedItemData(uVar3,3);
    if (iVar7 == 0) {
      iVar7 = ItemIdIsNotJohtoBall(*(undefined2 *)(*(int *)(param_1 + 0x234) + 0x66));
      if (iVar7 == 1) {
        abStack_20[2] = 8;
      }
      if (cVar1 != '\x03') {
        abStack_20[1] = 5;
      }
    }
    iVar7 = GetItemAttr_PreloadedItemData(uVar3,4);
    if (iVar7 != 0) {
      uVar4 = func_0x020781c4(*(undefined4 *)(param_1 + 0x238));
      if ((*(ushort *)(*(int *)(param_1 + 0x234) + 0x66) == uVar4) ||
         (uVar4 = func_0x020781d0(*(undefined4 *)(param_1 + 0x238)),
         *(ushort *)(*(int *)(param_1 + 0x234) + 0x66) == uVar4)) {
        abStack_20[1] = 7;
      }
      else {
        abStack_20[1] = 6;
      }
    }
  }
  else if ((*(char *)(iVar7 + 0x65) == '\x06') &&
          (iVar7 = ov15_021FD3F0(cVar1,*(undefined2 *)(iVar7 + 0x66)), iVar7 == 1)) {
    abStack_20[0] = 0xe;
  }
  if (((*(char *)(*(int *)(param_1 + 0x234) + 0x65) != '\x06') && (cVar1 != '\x03')) &&
     (cVar1 != '\x04')) {
    abStack_20[3] = 0xc;
  }
  abStack_20[4] = 0xb;
  iVar6 = 0;
  iVar7 = param_1;
  do {
    if (*pbVar5 != 0xff) {
      *(undefined4 *)(iVar7 + 0x7f0) = *(undefined4 *)(&ov15_02201368 + (uint)*pbVar5 * 4);
    }
    iVar6 = iVar6 + 1;
    pbVar5 = pbVar5 + 1;
    iVar7 = iVar7 + 4;
  } while (iVar6 < 5);
  ov15_021FEB84(param_1,abStack_20,5);
  ov15_021FB380(param_1,abStack_20);
  Heap_Free(uVar3);
  return;
}

