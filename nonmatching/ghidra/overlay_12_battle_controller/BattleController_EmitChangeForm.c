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
typedef void code(void);
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
undefined4 ov12_02262240(undefined4, undefined4, undefined4, undefined4, undefined4);

void BattleController_EmitChangeForm(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  undefined1 uStack_24;
  byte bStack_23;
  undefined2 uStack_22;
  byte bStack_20;
  undefined1 uStack_1f;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_24 = 0x2d;
  iVar2 = param_2 * 0xc0;
  uStack_22 = *(undefined2 *)(*(int *)(param_1 + 0x30) + iVar2 + 0x2d40);
  uStack_1f = (undefined1)((*(byte *)(*(int *)(param_1 + 0x30) + iVar2 + 0x2d66) & 0x3f) >> 5);
  iVar1 = *(int *)(param_1 + 0x30) + iVar2;
  if ((*(uint *)(iVar1 + 0x2db0) & 0x200000) == 0) {
    bStack_20 = *(byte *)(iVar1 + 0x2dbe) & 0xf;
    uStack_1c = *(undefined4 *)(*(int *)(param_1 + 0x30) + iVar2 + 0x2da8);
  }
  else {
    bStack_20 = (byte)*(undefined2 *)(iVar1 + 0x2dfa);
    uStack_1c = *(undefined4 *)(*(int *)(param_1 + 0x30) + iVar2 + 0x2de4);
  }
  bStack_23 = *(byte *)(*(int *)(param_1 + 0x30) + iVar2 + 0x2d66) & 0x1f;
  uStack_18 = param_4;
  ov12_02262240(param_1,1,param_2,&uStack_24,0xc);
  return;
}

