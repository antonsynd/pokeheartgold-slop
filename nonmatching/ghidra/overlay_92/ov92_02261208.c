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
undefined4 ManagedSprite_SetPositionXY();
undefined4 ManagedSprite_TickTwoFrames();
undefined4 func_0x0200de44() __asm__("sub_0200DE44");

void ov92_02261208(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  short *psVar3;
  int *piVar4;
  int iStack_44;
  int *piStack_40;
  int iStack_38;
  short sStack_34;
  short asStack_32 [5];
  int aiStack_28 [5];

  piVar2 = aiStack_28;
  asStack_32[1] = 0xbc;
  psVar3 = asStack_32;
  asStack_32[2] = 0xbc;
  asStack_32[3] = 0xb4;
  asStack_32[4] = 0xb4;
  aiStack_28[0] = 1;
  aiStack_28[1] = 1;
  aiStack_28[2] = 1;
  aiStack_28[3] = 1;
  if (param_1[1] != 0) {
    iVar1 = *param_1;
    aiStack_28[4] = param_4;
    if (iVar1 == 0) {
      iStack_38 = 0;
      piStack_40 = param_1;
      do {
        psVar3 = psVar3 + 1;
        iVar1 = piStack_40[2];
        if ((iVar1 != 0) && (func_0x0200de44(iVar1,asStack_32,&sStack_34), *psVar3 < sStack_34)) {
          sStack_34 = sStack_34 + -6;
          ManagedSprite_SetPositionXY(iVar1,(int)asStack_32[0],(int)sStack_34);
          *piVar2 = 0;
        }
        piStack_40 = piStack_40 + 1;
        piVar2 = piVar2 + 1;
        iStack_38 = iStack_38 + 1;
      } while (iStack_38 < 4);
      if (((aiStack_28[0] != 0) && (aiStack_28[1] != 0)) && (aiStack_28[2] != 0)) {
        param_1[10] = 0;
        param_1[0x14] = 0;
        *param_1 = *param_1 + 1;
      }
    }
    else if (iVar1 == 1) {
      if ((param_1[0x14] == 1) && (iVar1 = param_1[10], param_1[10] = iVar1 + 1, 0xe < iVar1 + 1)) {
        *param_1 = *param_1 + 1;
      }
    }
    else if (iVar1 == 2) {
      iStack_44 = 0;
      piVar4 = param_1;
      do {
        iVar1 = piVar4[2];
        if ((iVar1 != 0) && (func_0x0200de44(iVar1,asStack_32,&sStack_34), sStack_34 < 0xe0)) {
          sStack_34 = sStack_34 + 6;
          ManagedSprite_SetPositionXY(iVar1,(int)asStack_32[0],(int)sStack_34);
          *piVar2 = 0;
        }
        piVar4 = piVar4 + 1;
        iStack_44 = iStack_44 + 1;
        piVar2 = piVar2 + 1;
      } while (iStack_44 < 4);
      if (((aiStack_28[0] != 0) && (aiStack_28[1] != 0)) && (aiStack_28[2] != 0)) {
        *param_1 = *param_1 + 1;
      }
    }
    else {
      param_1[0x14] = 0;
      param_1[1] = 0;
      *param_1 = 0;
    }
    iVar1 = 0;
    do {
      if (param_1[2] != 0) {
        ManagedSprite_TickTwoFrames();
      }
      iVar1 = iVar1 + 1;
      param_1 = param_1 + 1;
    } while (iVar1 < 4);
  }
  return;
}

