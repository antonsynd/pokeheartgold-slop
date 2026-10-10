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
undefined4 GetMonIconNaixEx(unsigned int, int, unsigned int);
undefined4 Sprite_SetDrawFlag(void *, int);
undefined4 Party_GetCount(void *);
undefined4 DC_FlushRange(void *, unsigned int);
undefined4 Sprite_SetAnimCtrlSeq(void *, int);
void * GfGfxLoader_GetCharData(int, int, int, void *, int);
undefined4 ov65_0221BFBC();

void ov65_0221C46C(undefined *param_1,int param_2,int param_3)

{
  int iVar1;
  uint uVar2;
  undefined *puVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;

  iVar7 = 0;
  iVar1 = Party_GetCount(param_1);
  if (0 < iVar1) {
    do {
      iVar1 = iVar7 + param_2;
      iVar5 = param_3 + iVar1 * 0x10;
      iVar6 = param_3 + iVar1 * 4;
      uVar2 = GetMonIconNaixEx((uint)*(ushort *)(iVar5 + 0x69c),(uint)*(byte *)(iVar5 + 0x6a1),
                               (uint)*(byte *)(iVar5 + 0x6a2));
      puVar3 = GfGfxLoader_GetCharData(0x14,uVar2,0,(undefined *)(param_3 + 0x7cc + iVar1 * 4),0x1a)
      ;
      *(undefined **)(iVar6 + 0x79c) = puVar3;
      DC_FlushRange(*(undefined **)(*(int *)(iVar6 + 0x7cc) + 0x14),0x200);
      ov65_0221BFBC(*(undefined4 *)(iVar6 + 0x7cc),*(undefined2 *)(iVar5 + 0x69c),
                    *(undefined1 *)(iVar5 + 0x6a2),*(undefined1 *)(iVar5 + 0x6a1),iVar1,
                    *(undefined4 *)(iVar6 + 0x37c));
      Sprite_SetDrawFlag(*(undefined **)(iVar6 + 0x37c),1);
      if (*(short *)(iVar5 + 0x69e) == 0) {
        Sprite_SetDrawFlag(*(undefined **)(iVar6 + 0x3ac),0);
      }
      else {
        iVar4 = param_3 + iVar1 * 4;
        Sprite_SetDrawFlag(*(undefined **)(iVar4 + 0x3ac),1);
        Sprite_SetAnimCtrlSeq(*(undefined **)(iVar4 + 0x3ac),*(ushort *)(iVar5 + 0x69e) + 2);
      }
      if (*(int *)(iVar5 + 0x6a8) == 0) {
        Sprite_SetDrawFlag(*(undefined **)(iVar6 + 0x3dc),0);
      }
      else {
        iVar1 = param_3 + iVar1 * 4;
        Sprite_SetDrawFlag(*(undefined **)(iVar1 + 0x3dc),1);
        Sprite_SetAnimCtrlSeq(*(undefined **)(iVar1 + 0x3dc),0x15);
      }
      iVar7 = iVar7 + 1;
      iVar1 = Party_GetCount(param_1);
    } while (iVar7 < iVar1);
  }
  if (iVar7 < 6) {
    iVar1 = param_3 + param_2 * 4 + iVar7 * 4;
    do {
      Sprite_SetDrawFlag(*(undefined **)(iVar1 + 0x37c),0);
      Sprite_SetDrawFlag(*(undefined **)(iVar1 + 0x3ac),0);
      Sprite_SetDrawFlag(*(undefined **)(iVar1 + 0x3dc),0);
      iVar7 = iVar7 + 1;
      iVar1 = iVar1 + 4;
    } while (iVar7 < 6);
  }
  return;
}

