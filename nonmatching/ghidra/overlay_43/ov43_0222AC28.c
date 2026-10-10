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
undefined4 Sprite_SetDrawFlag();
undefined4 Sprite_SetAnimActiveFlag();
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 Sprite_CreateAffine();
extern undefined ov43_0222F1AC;
extern undefined4 _UNK_0222f1d8;
extern undefined4 _ov43_0222F1AC;
extern undefined ov43_0222F14C;
extern undefined4 _UNK_0222f1b0;



void ov43_0222AC28(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  undefined *puVar5;
  int iStack_20;

  iStack_20 = 0;
  puVar2 = (undefined4 *)&ov43_0222F14C;
  puVar5 = &ov43_0222F14C;
  iVar4 = 5;
  iVar3 = param_1;
  do {
    *puVar2 = *(undefined4 *)(param_1 + 4);
    puVar2[1] = param_1 + 0x88;
    puVar2[0xb] = param_2;
    uVar1 = Sprite_CreateAffine(puVar5);
    *(undefined4 *)(iVar3 + 500) = uVar1;
    Sprite_SetAnimActiveFlag(*(undefined4 *)(iVar3 + 500),1);
    Sprite_SetDrawFlag(*(undefined4 *)(iVar3 + 500),0);
    Sprite_SetAnimCtrlSeq(*(undefined4 *)(iVar3 + 500),iVar4);
    puVar2 = puVar2 + 0xc;
    iStack_20 = iStack_20 + 1;
    puVar5 = puVar5 + 0x30;
    iVar3 = iVar3 + 4;
    iVar4 = iVar4 + 2;
  } while (iStack_20 < 2);
  _ov43_0222F1AC = *(undefined4 *)(param_1 + 4);

  _UNK_0222f1b0 = param_1 + 0x88;
  _UNK_0222f1d8 = param_2;


  uVar1 = Sprite_CreateAffine(&ov43_0222F1AC);
  *(undefined4 *)(param_1 + 0x1fc) = uVar1;
  Sprite_SetDrawFlag(*(undefined4 *)(param_1 + 0x1fc),0);
  Sprite_SetAnimCtrlSeq(*(undefined4 *)(param_1 + 0x1fc),1);
  return;
}

