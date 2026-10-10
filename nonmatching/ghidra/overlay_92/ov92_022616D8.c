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
undefined4 ScheduleSetBgPosText();
undefined4 ov92_02260860();
undefined4 PaletteData_BlendPalettes();
undefined4 ov92_02260870();

void ov92_022616D8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  int aiStack_2c [5];
  undefined4 uStack_18;
  
  piVar1 = *(int **)(param_1 + 0x15c);
  piVar2 = *(int **)(param_1 + 0x160);
  iVar3 = *(int *)(param_1 + 0x170);
  uStack_18 = param_4;
  if (iVar3 == 0) {
    ov92_02260860(param_1 + 0x180,0,0x28000,10);
    ov92_02260860(param_1 + 0x198,0,0x50000,10);
    ov92_02260860(param_1 + 0x1b0,0,0xfffb0000,10);
    *(int *)(param_1 + 0x170) = *(int *)(param_1 + 0x170) + 1;
  }
  else if (iVar3 == 1) {
    iVar6 = 0;
    iVar3 = param_1 + 0x180;
    piVar5 = aiStack_2c;
    do {
      iVar4 = ov92_02260870(iVar3);
      iVar6 = iVar6 + 1;
      iVar3 = iVar3 + 0x18;
      *piVar5 = iVar4;
      piVar5 = piVar5 + 1;
    } while (iVar6 < 3);
    ScheduleSetBgPosText
              (*(undefined4 *)(*(int *)(param_1 + 0x17c) + 0x10),7,3,
               *(int *)(param_1 + 0x180) >> 0xc);
    ScheduleSetBgPosText
              (*(undefined4 *)(*(int *)(param_1 + 0x17c) + 0x10),5,0,
               *(int *)(param_1 + 0x198) >> 0xc);
    ScheduleSetBgPosText
              (*(undefined4 *)(*(int *)(param_1 + 0x17c) + 0x10),6,0,
               *(int *)(param_1 + 0x1b0) >> 0xc);
    ScheduleSetBgPosText
              (*(undefined4 *)(*(int *)(param_1 + 0x17c) + 0x10),1,0,
               *(int *)(param_1 + 0x198) >> 0xc);
    ScheduleSetBgPosText
              (*(undefined4 *)(*(int *)(param_1 + 0x17c) + 0x10),2,0,
               *(int *)(param_1 + 0x1b0) >> 0xc);
    if (((aiStack_2c[0] != 0) && (aiStack_2c[1] != 0)) && (aiStack_2c[2] != 0)) {
      *(int *)(param_1 + 0x170) = *(int *)(param_1 + 0x170) + 1;
    }
  }
  else if (iVar3 == 2) {
    *(undefined4 *)(param_1 + 0x178) = 1;
    *(undefined4 *)(param_1 + 0x170) = 0;
  }
  if (*piVar2 < 6) {
    iVar3 = *piVar2 + 1;
  }
  else {
    iVar3 = 6;
  }
  *piVar2 = iVar3;
  PaletteData_BlendPalettes
            (*(undefined4 *)(*(int *)(param_1 + 0x17c) + 0x14),0,1,*piVar1 + *piVar2 & 0xff,0);
  PaletteData_BlendPalettes
            (*(undefined4 *)(*(int *)(param_1 + 0x17c) + 0x14),1,1,*piVar1 + *piVar2 & 0xff,0);
  return;
}

