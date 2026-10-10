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
undefined4 ov07_022222B4();
undefined4 SpriteSystem_DrawSprites();
undefined4 ov07_0221C448();
undefined4 ov07_02222268();
undefined4 Heap_Free();
undefined4 ManagedSprite_SetPositionXY();
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
extern undefined2 uRam04000052 __asm__("sub_04000052");

void ov07_02227B58(undefined4 param_1,byte *param_2)

{
  byte bVar1;
  short sVar2;
  short sVar3;
  char cVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  byte *pbVar8;
  byte *pbVar9;
  uint uVar10;
  byte *pbVar11;
  int iStack_1c;

  bVar1 = param_2[1];
  if (bVar1 == 0) {
    iVar7 = (int)((uint)*param_2 * -0x80000000) >> 0x1f;
    uVar5 = (*param_2 + 1) / 2;
    iVar6 = iVar7 * -0xc;
    uVar10 = (int)*(short *)(iVar6 + 0x2236736) - uVar5;
    sVar2 = *(short *)(iVar6 + 0x2236734);
    sVar3 = *(short *)(iVar6 + 0x2236732);
    ov07_02222268(param_2 + 0x28,((int)*(short *)(param_2 + 8) + (int)sVar3) * 0x10000 >> 0x10,
                  ((int)*(short *)(param_2 + 8) + (int)sVar2) * 0x10000 >> 0x10,
                  (int)*(short *)(param_2 + 10),(int)*(short *)(param_2 + 10),uVar10 & 0xffff);
    ov07_02222268(param_2 + 0x4c,((int)*(short *)(param_2 + 8) - (int)sVar3) * 0x10000 >> 0x10,
                  ((int)*(short *)(param_2 + 8) - (int)sVar2) * 0x10000 >> 0x10,
                  (int)*(short *)(param_2 + 10),(int)*(short *)(param_2 + 10),uVar10 & 0xffff);
    iVar7 = (iVar7 * -2 + 1) * 6;
    uVar5 = (int)*(short *)(iVar7 + 0x2236736) - uVar5;
    sVar2 = *(short *)(iVar7 + 0x2236734);
    sVar3 = *(short *)(iVar7 + 0x2236732);
    ov07_02222268(param_2 + 0x70,((int)*(short *)(param_2 + 8) + (int)sVar3) * 0x10000 >> 0x10,
                  ((int)*(short *)(param_2 + 8) + (int)sVar2) * 0x10000 >> 0x10,
                  (int)*(short *)(param_2 + 10),(int)*(short *)(param_2 + 10),uVar5 & 0xffff);
    ov07_02222268(param_2 + 0x94,((int)*(short *)(param_2 + 8) - (int)sVar3) * 0x10000 >> 0x10,
                  ((int)*(short *)(param_2 + 8) - (int)sVar2) * 0x10000 >> 0x10,
                  (int)*(short *)(param_2 + 10),(int)*(short *)(param_2 + 10),uVar5 & 0xffff);
    *param_2 = *param_2 + 1;
    param_2[1] = param_2[1] + 1;
  }
  else if (bVar1 != 1) {
    if (bVar1 != 2) {
      ov07_0221C448(*(undefined4 *)(param_2 + 0xc),param_1);
      Heap_Free(param_2);
      return;
    }
    if (param_2[4] != 0) {
      param_2[4] = param_2[4] - 1;
    }
    if (param_2[5] < 0xf) {
      param_2[5] = param_2[5] + 1;
    }
    if ((param_2[4] == 0) && (param_2[5] == 0xf)) {
      param_2[1] = param_2[1] + 1;
    }
    uRam04000052 = *(undefined2 *)(param_2 + 4);
    goto LAB_02227d00;
  }
  cVar4 = '\0';
  iStack_1c = 0;
  pbVar11 = param_2 + 0x28;
  pbVar8 = param_2;
  pbVar9 = param_2;
  do {
    iVar7 = ov07_022222B4(pbVar11);
    if (iVar7 == 0) {
      cVar4 = cVar4 + '\x01';
    }
    else {
      ManagedSprite_SetPositionXY
                (*(undefined4 *)(pbVar8 + 0x18),(int)*(short *)(pbVar9 + 0x28),
                 (int)*(short *)(pbVar9 + 0x2a));
    }
    func_0x0200dc18(*(undefined4 *)(pbVar8 + 0x18));
    pbVar11 = pbVar11 + 0x24;
    iStack_1c = iStack_1c + 1;
    pbVar9 = pbVar9 + 0x24;
    pbVar8 = pbVar8 + 4;
  } while (iStack_1c < 4);
  if (cVar4 == '\x04') {
    if (*param_2 == 9) {
      param_2[1] = param_2[1] + 1;
    }
    else {
      param_2[1] = 0;
    }
  }
LAB_02227d00:
  SpriteSystem_DrawSprites(*(undefined4 *)(param_2 + 0x14));
  return;
}

