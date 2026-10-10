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
undefined4 ov96_021EB52C();
undefined4 Sprite_SetMatrix();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 ov96_021EB5B8();
undefined4 GF_AssertFail();
extern undefined ov96_0221DBC8;

void ov96_021F31F0(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int *piVar4;
  undefined4 *puVar5;
  int iVar6;
  int iStack_24;
  int iStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  iVar6 = 0;
  piVar4 = *(int **)(&ov96_0221DBC8 + param_2 * 4);
  uStack_18 = param_4;
  do {
    if (*piVar4 != 0) {
      iVar1 = *(int *)(param_1 + 0x80) * 0x10;
      puVar5 = (undefined4 *)(param_1 + iVar1);
      if (*(int *)(param_1 + iVar1) == 1) {
        GF_AssertFail();
      }
      *puVar5 = 1;
      puVar5[2] = param_2;
      puVar5[1] = piVar4;
      uVar2 = ov96_021EB5B8(*(undefined4 *)(param_1 + *(int *)(param_1 + 0x80) * 0x10 + 0xc));
      ov96_021EB52C(*(undefined4 *)(param_1 + *(int *)(param_1 + 0x80) * 0x10 + 0xc),1,1);
      Sprite_SetAnimCtrlSeq(uVar2,*piVar4 + -1);
      uStack_1c = 0;
      iStack_24 = (uint)*(ushort *)(piVar4 + 1) << 0xc;
      iStack_20 = (uint)*(ushort *)((int)piVar4 + 6) << 0xc;
      Sprite_SetMatrix(uVar2,&iStack_24);
      iVar3 = *(int *)(param_1 + 0x80) + 1;
      iVar1 = iVar3 >> 0x1f;
      *(uint *)(param_1 + 0x80) = ((uint)(iVar3 * 0x20000000 + iVar1) >> 0x1d | iVar1 << 3) - iVar1;
    }
    iVar6 = iVar6 + 1;
    piVar4 = piVar4 + 2;
  } while (iVar6 < 4);
  return;
}

