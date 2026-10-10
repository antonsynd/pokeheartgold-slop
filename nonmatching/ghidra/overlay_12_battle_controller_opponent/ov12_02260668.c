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
undefined4 func_0x0223458c() __asm__("sub_0223458C");
void * BattleSystem_GetPaletteData(void *);
void * PaletteData_GetUnfadedBuf(void *, int);
void * PaletteData_GetFadedBuf(void *, int);
void * BattleSystem_GetBgConfig(void *);
undefined4 PlaySE(unsigned short);
undefined4 func_0x02234694() __asm__("sub_02234694");
undefined4 BattleSystem_GetBackgroundId(void *);
undefined4 func_0x022345c8() __asm__("sub_022345C8");
unsigned char PaletteData_BeginPaletteFade(void *, unsigned short, unsigned short, signed char, unsigned char, unsigned char, unsigned short);
void * ov12_0223BAE0(void *);
undefined4 MIi_CpuCopy16(void *, void *, unsigned int);
undefined4 BattleSystem_GetBattleType(void *);
void * ov12_0223BAEC(void *);
undefined4 BattleSystem_GetTerrainId();
undefined4 SysTask_Destroy(void *);
undefined4 sub_0201649C(void *, int);
undefined4 func_0x02234628() __asm__("sub_02234628");
void * BattleSystem_GetMessageIcon(void *);
undefined4 func_0x02234604() __asm__("sub_02234604");
undefined4 Heap_Free(void *);
undefined4 func_0x022346bc() __asm__("sub_022346BC");

void ov12_02260668(undefined *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  undefined *puVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined *puVar7;
  undefined *puVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  ushort uVar12;
  uint auStack_20 [3];
  
  auStack_20[2] = param_4;
  BattleSystem_GetBgConfig((undefined *)*param_2);
  puVar2 = BattleSystem_GetPaletteData((undefined *)*param_2);
  iVar3 = BattleSystem_GetTerrainId((undefined *)*param_2);
  iVar4 = BattleSystem_GetBackgroundId((undefined *)*param_2);
  uVar5 = *(undefined4 *)(iVar4 * 4 + 0x226d18c);
  *(char *)((int)param_2 + 0x15) = *(char *)((int)param_2 + 0x15) + '\x01';
  switch(*(undefined1 *)(param_2 + 5)) {
  case 0:
    uVar6 = func_0x0223458c(5,0);
    param_2[1] = uVar6;
    bVar1 = *(byte *)(iVar3 + 0x226d350);
    auStack_20[1] = 1;
    auStack_20[0] = (uint)bVar1;
    uVar6 = func_0x022345c8(param_2[1],auStack_20);
    param_2[2] = uVar6;
    auStack_20[0] = bVar1 + 1;
    auStack_20[1] = 1;
    uVar6 = func_0x022345c8(param_2[1],auStack_20);
    param_2[3] = uVar6;
    func_0x02234694(param_2[2]);
    PlaySE(0x84f);
    *(undefined1 *)(param_2 + 5) = 1;
  case 1:
    uVar12 = (ushort)uVar5;
    if (*(char *)((int)param_2 + 0x15) == '\n') {
      PaletteData_BeginPaletteFade(puVar2,1,0xf3ff,0,0,0x10,uVar12);
      PaletteData_BeginPaletteFade(puVar2,4,0x3fff,0,0,0x10,uVar12);
    }
    if ((9 < *(byte *)((int)param_2 + 0x15)) && (*(byte *)((int)param_2 + 0x16) < 0x10)) {
      *(byte *)((int)param_2 + 0x16) = *(byte *)((int)param_2 + 0x16) + 1;
      if (0x10 < *(byte *)((int)param_2 + 0x16)) {
        *(undefined1 *)((int)param_2 + 0x16) = 0x10;
      }
      puVar7 = PaletteData_GetFadedBuf(puVar2,1);
      uVar9 = 0;
      do {
        uVar10 = (uint)*(byte *)((int)param_2 + 0x16) * 0x1f000;
        uVar11 = uVar10 >> 0x10;
        *(ushort *)(puVar7 + uVar9 * 2) =
             (ushort)(uVar11 << 10) | (ushort)(uVar11 << 5) | (ushort)(uVar10 >> 0x10);
        uVar9 = uVar9 + 1 & 0xffff;
      } while (uVar9 < 0x100);
    }
    if (*(char *)((int)param_2 + 0x15) == '\x14') {
      func_0x02234694(param_2[3]);
    }
    if (*(char *)((int)param_2 + 0x15) == '\x17') {
      PlaySE(0x850);
    }
    if (*(char *)((int)param_2 + 0x15) == '\x1c') {
      puVar7 = PaletteData_GetUnfadedBuf(puVar2,0);
      puVar8 = ov12_0223BAE0((undefined *)*param_2);
      MIi_CpuCopy16(puVar8,puVar7,0xe0);
      uVar9 = BattleSystem_GetBattleType((undefined *)*param_2);
      if (uVar9 == 0x4a) {
        puVar7 = PaletteData_GetUnfadedBuf(puVar2,2);
        puVar8 = ov12_0223BAEC((undefined *)*param_2);
        MIi_CpuCopy16(puVar8,puVar7,0xa0);
      }
      else {
        uVar9 = BattleSystem_GetBattleType((undefined *)*param_2);
        if ((uVar9 & 2) == 0) {
          uVar9 = BattleSystem_GetBattleType((undefined *)*param_2);
          if ((uVar9 & 1) == 0) {
            puVar7 = PaletteData_GetUnfadedBuf(puVar2,2);
            puVar8 = ov12_0223BAEC((undefined *)*param_2);
            MIi_CpuCopy16(puVar8,puVar7,0x80);
          }
          else {
            puVar7 = PaletteData_GetUnfadedBuf(puVar2,2);
            puVar8 = ov12_0223BAEC((undefined *)*param_2);
            MIi_CpuCopy16(puVar8,puVar7,0xa0);
          }
        }
        else {
          puVar7 = PaletteData_GetUnfadedBuf(puVar2,2);
          puVar8 = ov12_0223BAEC((undefined *)*param_2);
          MIi_CpuCopy16(puVar8,puVar7,0xe0);
        }
      }
      PaletteData_BeginPaletteFade(puVar2,1,0xf3ff,0,0x10,0,uVar12);
      PaletteData_BeginPaletteFade(puVar2,4,0x3fff,0,0x10,0,uVar12);
      PaletteData_BeginPaletteFade(puVar2,10,0xffff,0,0x10,0,uVar12);
    }
    if (0x31 < *(byte *)((int)param_2 + 0x15)) {
      PaletteData_BeginPaletteFade(puVar2,1,0xc00,0,0x10,0,0);
      *(char *)(param_2 + 5) = *(char *)(param_2 + 5) + '\x01';
      return;
    }
    break;
  case 2:
    iVar3 = func_0x022346bc(param_2[3]);
    if (iVar3 == 0) {
      func_0x02234604(param_2[1]);
      *(char *)(param_2 + 5) = *(char *)(param_2 + 5) + '\x01';
      return;
    }
    break;
  case 3:
    puVar2 = BattleSystem_GetMessageIcon((undefined *)*param_2);
    sub_0201649C(puVar2,0);
    Heap_Free((undefined *)param_2);
    SysTask_Destroy(param_1);
    return;
  case 4:
    func_0x02234628(param_2[1]);
    func_0x02234604(param_2[1]);
    *(char *)(param_2 + 5) = *(char *)(param_2 + 5) + '\x01';
  case 5:
    puVar7 = PaletteData_GetUnfadedBuf(puVar2,0);
    puVar8 = ov12_0223BAE0((undefined *)*param_2);
    MIi_CpuCopy16(puVar8,puVar7,0xe0);
    uVar9 = BattleSystem_GetBattleType((undefined *)*param_2);
    if (uVar9 == 0x4a) {
      puVar7 = PaletteData_GetUnfadedBuf(puVar2,2);
      puVar8 = ov12_0223BAEC((undefined *)*param_2);
      MIi_CpuCopy16(puVar8,puVar7,0xa0);
    }
    else {
      uVar9 = BattleSystem_GetBattleType((undefined *)*param_2);
      if ((uVar9 & 2) == 0) {
        uVar9 = BattleSystem_GetBattleType((undefined *)*param_2);
        if ((uVar9 & 1) == 0) {
          puVar7 = PaletteData_GetUnfadedBuf(puVar2,2);
          puVar8 = ov12_0223BAEC((undefined *)*param_2);
          MIi_CpuCopy16(puVar8,puVar7,0x80);
        }
        else {
          puVar7 = PaletteData_GetUnfadedBuf(puVar2,2);
          puVar8 = ov12_0223BAEC((undefined *)*param_2);
          MIi_CpuCopy16(puVar8,puVar7,0xa0);
        }
      }
      else {
        puVar7 = PaletteData_GetUnfadedBuf(puVar2,2);
        puVar8 = ov12_0223BAEC((undefined *)*param_2);
        MIi_CpuCopy16(puVar8,puVar7,0xe0);
      }
    }
    PaletteData_BeginPaletteFade(puVar2,1,0xffff,0,0,0,0x7fff);
    PaletteData_BeginPaletteFade(puVar2,4,0x3fff,0,0,0,0xffff);
    PaletteData_BeginPaletteFade(puVar2,10,0xffff,0,0,0,0x7fff);
    *(undefined1 *)(param_2 + 5) = 3;
  }
  return;
}

