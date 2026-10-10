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
unsigned long long OS_GetTick(void);
undefined4 Sys_ClearSleepDisableFlag(int);
undefined4 ov74_02233F14();
undefined4 ov74_02233ED4();
void * Save_MigratedPokemon_Get(void *);
undefined4 ov74_02233F68();
undefined4 func_0x020f290c() __asm__("sub_020F290C");
undefined4 ov74_02233E8C();
undefined4 Sys_SetSleepDisableFlag(int);
undefined4 MigratedPokemon_RecordMigration(void *, unsigned int);
undefined4 ov74_0223195C();
undefined4 Save_WriteFileAsync(void *);
undefined4 Save_PrepareForAsyncWrite(void *, int);
undefined4 func_0x020e219c() __asm__("sub_020E219C");

undefined4 ov74_022317D8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined *puVar1;
  uint uVar2;
  int iVar3;
  int *piVar4;
  ulonglong uVar5;
  undefined1 auStack_20 [16];
  undefined4 uStack_10;

  piVar4 = (int *)(param_1 + 0xe890);
  uStack_10 = param_4;
  switch(*piVar4) {
  case 0:
    ov74_0223195C();
    puVar1 = Save_MigratedPokemon_Get(*(undefined **)(param_1 + 0x10));
    uVar2 = ov74_02233F68();
    MigratedPokemon_RecordMigration(puVar1,uVar2);
    *piVar4 = *piVar4 + 1;
    break;
  case 1:
    uVar5 = OS_GetTick();
    iVar3 = func_0x020f290c((int)uVar5,(int)(uVar5 >> 0x20),0x78,0);
    *(int *)(param_1 + 0xe894) = iVar3 + 1;
    *piVar4 = *piVar4 + 1;
    break;
  case 2:
    iVar3 = *(int *)(param_1 + 0xe894) + -1;
    *(int *)(param_1 + 0xe894) = iVar3;
    if (iVar3 == 0) {
      *piVar4 = *piVar4 + 1;
    }
    break;
  case 3:
    Save_PrepareForAsyncWrite(*(undefined **)(param_1 + 0x10),2);
    *piVar4 = *piVar4 + 1;
    break;
  case 4:
    iVar3 = Save_WriteFileAsync(*(undefined **)(param_1 + 0x10));
    if (iVar3 == 3) {
      return 0xc;
    }
    if (iVar3 == 1) {
      *piVar4 = *piVar4 + 1;
    }
    break;
  case 5:
    func_0x020e219c(0,0,auStack_20,0x10);
    *piVar4 = *piVar4 + 1;
    break;
  case 6:
    iVar3 = ov74_02233E8C();
    if (iVar3 == 0) {
      Sys_ClearSleepDisableFlag(1);
      return 0xc;
    }
    *piVar4 = *piVar4 + 1;
    break;
  case 7:
    iVar3 = ov74_02233F14();
    if (iVar3 != 9) {
      iVar3 = ov74_02233F14();
      if (iVar3 == 0xb) {
        *piVar4 = *piVar4 + 1;
      }
      else {
        iVar3 = ov74_02233ED4();
        if (iVar3 == 8) {
          Sys_ClearSleepDisableFlag(1);
          return 0xc;
        }
      }
    }
    break;
  case 8:
    do {
      iVar3 = Save_WriteFileAsync(*(undefined **)(param_1 + 0x10));
      if (iVar3 == 3) {
        return 0xc;
      }
    } while (iVar3 != 2);
    ov74_02233ED4();
    Sys_SetSleepDisableFlag(1);
    *piVar4 = *piVar4 + 1;
    break;
  case 9:
    iVar3 = ov74_02233ED4();
    if (iVar3 == 8) {
      Sys_ClearSleepDisableFlag(1);
      return 0xc;
    }
    if (iVar3 == 0) {
      Sys_ClearSleepDisableFlag(1);
      return 0xb;
    }
  }
  return 10;
}

