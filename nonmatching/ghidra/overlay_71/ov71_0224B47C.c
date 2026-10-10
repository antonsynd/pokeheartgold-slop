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
undefined4 Pokepic_StartAnim();
undefined4 GetBoxMonData();
undefined4 ov71_0224B960();
undefined4 ov71_02247398();
undefined4 ov71_0224B910();
undefined4 ov71_0224B9CC();
undefined4 ov71_02247704();
undefined4 sub_020729A4();
undefined4 sub_020062E0();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 ov71_022473BC();
undefined4 Sprite_SetDrawFlag();
undefined4 Pokepic_SetAttr();
undefined4 ov71_022473C4();

undefined4 ov71_0224B47C(undefined4 *param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 auStack_18 [4];
  undefined4 uStack_14;

  uStack_14 = param_4;
  switch(*param_2) {
  case 0:
    ov71_0224B9CC(param_1,param_1 + 0x20);
    *param_2 = *param_2 + 1;
  case 1:
    if (param_1[0x20] == 0) {
      Sprite_SetAnimCtrlSeq(param_1[0x11],2);
      Sprite_SetDrawFlag(param_1[0x11],1);
      ov71_02247704(param_1[0x1e],0);
      param_1[2] = 0;
      *param_2 = *param_2 + 1;
    }
    break;
  case 2:
    iVar3 = param_1[2];
    param_1[2] = iVar3 + 1;
    if (10 < iVar3 + 1) {
      Pokepic_SetAttr(param_1[5],6,0);
      ov71_0224B910(param_1,0x10,0,0xc);
      param_1[1] = param_1[1] + 1;
    }
    break;
  case 3:
    iVar3 = ov71_0224B960();
    if (iVar3 != 0) {
      uVar2 = ov71_02247398(*param_1);
      iVar3 = GetBoxMonData(uVar2,0x4c,0);
      if (iVar3 == 0) {
        uVar2 = ov71_022473BC(*param_1);
        sub_020729A4(param_1[0x21],auStack_18,uVar2,1);
        uVar2 = ov71_022473BC(*param_1);
        uVar1 = ov71_022473C4(*param_1);
        sub_020062E0(uVar2,auStack_18[0],uVar1);
        Pokepic_StartAnim(param_1[5],1);
      }
      param_1[2] = 0;
      *param_2 = *param_2 + 1;
    }
    break;
  case 4:
    iVar3 = param_1[2];
    param_1[2] = iVar3 + 1;
    if (0x1e < iVar3 + 1) {
      return 1;
    }
  }
  return 0;
}

