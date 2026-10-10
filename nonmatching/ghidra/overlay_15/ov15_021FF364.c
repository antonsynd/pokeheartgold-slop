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
undefined4 ov15_021FE17C();
undefined4 FillWindowPixelBuffer(void *, unsigned char);
undefined4 ClearWindowTilemapAndScheduleTransfer(void *);
undefined4 ScheduleWindowCopyToVram(void *);
undefined4 ov15_021FF320();
undefined4 ov15_021FF570();
unsigned char AddTextPrinterParameterizedWithColor(void *, unsigned char, void *, unsigned int, unsigned int, unsigned int, unsigned int, void *);

void ov15_021FF364(undefined4 *param_1,int param_2,undefined4 param_3,int param_4)

{
  int *piVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  undefined4 *puVar5;
  int local_30;
  int local_2c;
  int local_28;
  int local_20;
  int local_1c;

  piVar1 = (int *)(param_1[0x8d] + 4 + (uint)*(byte *)(param_1[0x8d] + 100) * 0xc);
  local_28 = (uint)*(byte *)((int)piVar1 + 9) - (int)*(short *)((int)piVar1 + 6);
  if (6 < local_28) {
    local_28 = 6;
  }
  if (*(char *)((int)param_1 + 0x68a) == '\0') {
    local_30 = 0;
    iVar3 = 6;
  }
  else {
    local_30 = 6;
    iVar3 = 0;
  }
  *(byte *)((int)param_1 + 0x68a) = *(byte *)((int)param_1 + 0x68a) ^ 1;
  ov15_021FE17C(param_1);
  local_1c = 0;
  iVar4 = local_30;
  do {
    FillWindowPixelBuffer((undefined *)(param_1 + iVar4 * 4 + 0x2d),0);
    ClearWindowTilemapAndScheduleTransfer((undefined *)(param_1 + iVar3 * 4 + 0x2d));
    iVar4 = iVar4 + 1;
    local_1c = local_1c + 1;
    iVar3 = iVar3 + 1;
  } while (local_1c < 6);
  local_20 = 0;
  uVar2 = ov15_021FF320(piVar1,(uint)*(byte *)(param_1[0x8d] + 100),param_2);
  if ((int)uVar2 < (int)(uint)*(byte *)(*(byte *)(param_1[0x8d] + 100) + 0x22008c8)) {
    local_2c = uVar2 * 4;
    puVar5 = param_1 + uVar2;
    iVar3 = local_30;
    do {
      if ((*(short *)(*piVar1 + local_2c) != 0) && (*(short *)(*piVar1 + local_2c + 2) != 0)) {
        if (param_4 == 0) {
          ov15_021FF570((int)param_1,(undefined *)(param_1 + iVar3 * 4 + 0x2d),
                        (undefined *)puVar5[0xd4],piVar1,uVar2);
        }
        else if (uVar2 == *(byte *)((int)param_1 + 0x672)) {
          ov15_021FF570((int)param_1,(undefined *)(param_1 + iVar3 * 4 + 0x2d),
                        (undefined *)puVar5[0xd4],piVar1,uVar2);
        }
        else {
          AddTextPrinterParameterizedWithColor
                    ((undefined *)(param_1 + iVar3 * 4 + 0x2d),0,(undefined *)puVar5[0xd4],0,0x10,
                     0xff,0x10200,(undefined *)0x0);
        }
        iVar3 = iVar3 + 1;
        local_20 = local_20 + 1;
        if (local_28 <= local_20) break;
      }
      uVar2 = uVar2 + 1;
      local_2c = local_2c + 4;
      puVar5 = puVar5 + 1;
    } while ((int)uVar2 < (int)(uint)*(byte *)(*(byte *)(param_1[0x8d] + 100) + 0x22008c8));
  }
  iVar3 = 0;
  do {
    ScheduleWindowCopyToVram((undefined *)(param_1 + local_30 * 4 + 0x2d));
    iVar3 = iVar3 + 1;
    local_30 = local_30 + 1;
  } while (iVar3 < 6);
  return;
}

