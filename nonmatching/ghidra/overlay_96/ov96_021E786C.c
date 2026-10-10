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
undefined4 PokeathlonCourse_GetParticipantUnk04();
undefined4 ov96_021E5F24();

void ov96_021E786C(int param_1,int param_2)

{
  ushort *puVar1;
  ushort uVar2;
  undefined4 uVar3;
  ushort *puVar4;
  uint *puVar5;
  int iVar6;
  ushort *puVar7;
  int iVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;

  puVar7 = (ushort *)(param_2 + (uint)*(byte *)(*(int *)(param_1 + 0x1f8) + 0xc) * 0x2c);
  if (puVar7[3] < *(ushort *)(param_1 + 0x8fe)) {
    puVar7[3] = *(ushort *)(param_1 + 0x8fe);
    if (999 < puVar7[3]) {
      puVar7[3] = 999;
    }
    iVar6 = 0;
    iVar8 = param_1;
    puVar4 = puVar7;
    do {
      uVar2 = *(ushort *)(iVar8 + 0x8b4);
      *puVar4 = uVar2;
      if (999 < uVar2) {
        *puVar4 = 999;
      }
      iVar6 = iVar6 + 1;
      iVar8 = iVar8 + 2;
      puVar4 = puVar4 + 1;
    } while (iVar6 < 3);
    uVar3 = ov96_021E5F24(param_1);
    puVar4 = (ushort *)PokeathlonCourse_GetParticipantUnk04(param_1,uVar3);
    iVar8 = 0;
    puVar5 = (uint *)(puVar7 + 4);
    do {
      uVar9 = *puVar5;
      iVar8 = iVar8 + 1;
      uVar10 = *puVar4 & 0x1ff;
      *puVar5 = uVar10 | uVar9 & 0xfffffe00;
      uVar11 = (puVar4[1] & 0x1f) << 9;
      *puVar5 = uVar11 | uVar10 | uVar9 & 0xffffc000;
      uVar12 = (*(byte *)((int)puVar4 + 0x11) & 3) << 0xe;
      *puVar5 = uVar11 | uVar10 | uVar9 & 0xffff0000 | uVar12;
      *puVar5 = uVar11 | uVar10 | uVar9 & 0xfffe0000 | uVar12 | ((byte)puVar4[8] & 1) << 0x10;
      puVar1 = puVar4 + 2;
      puVar4 = puVar4 + 0x14;
      *(undefined4 *)(puVar7 + 6) = *(undefined4 *)puVar1;
      puVar5 = puVar5 + 3;
      puVar7 = puVar7 + 6;
    } while (iVar8 < 3);
  }
  return;
}

