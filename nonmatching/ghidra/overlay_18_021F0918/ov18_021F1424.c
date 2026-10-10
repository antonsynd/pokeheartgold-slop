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
undefined4 SpriteSystem_NewSprite();
extern undefined4 ov18_021FA3E8;

void ov18_021F1424(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int *piVar5;
  undefined4 *puVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  int *piVar10;
  int aiStack_80 [13];
  int aiStack_4c [13];
  undefined4 uStack_18;

  uStack_18 = param_4;
  piVar5 = aiStack_80;
  puVar6 = (undefined4 *)&ov18_021FA3E8;
  uVar7 = 0;
  iVar8 = param_1 + param_2 * 4;
  iVar9 = 6;
  do {
    uVar1 = *puVar6;
    uVar3 = puVar6[1];
    puVar6 = puVar6 + 2;
    *piVar5 = uVar1;
    piVar5[1] = uVar3;
    piVar5 = piVar5 + 2;
    iVar9 = iVar9 + -1;
  } while (iVar9 != 0);
  *piVar5 = *puVar6;
  do {
    piVar5 = aiStack_4c;
    iVar9 = 6;
    piVar10 = aiStack_80;
    do {
      iVar2 = *piVar10;
      iVar4 = piVar10[1];
      piVar10 = piVar10 + 2;
      *piVar5 = iVar2;
      piVar5[1] = iVar4;
      piVar5 = piVar5 + 2;
      iVar9 = iVar9 + -1;
    } while (iVar9 != 0);
    *piVar5 = *piVar10;
    aiStack_4c[5] = uVar7 + 0xc550;
    uVar1 = SpriteSystem_NewSprite
                      (*(undefined4 *)(param_1 + 0x668),*(undefined4 *)(param_1 + 0x66c),aiStack_4c)
    ;
    *(undefined4 *)(iVar8 + 0x670) = uVar1;
    uVar7 = uVar7 + 1;
    iVar8 = iVar8 + 4;
  } while (uVar7 < 0x3c);
  return;
}

