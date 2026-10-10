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
undefined4 PlaySE();
undefined4 SpriteSystem_NewSprite();
undefined4 ov89_0225A1D8();
extern undefined ov89_0225CBA4;

void ov89_0225A16C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  short *psVar4;
  undefined4 *puVar5;
  int iVar6;
  short asStack_48 [2];
  undefined4 auStack_44 [12];
  undefined4 uStack_14;

  psVar4 = asStack_48;
  puVar5 = (undefined4 *)&ov89_0225CBA4;
  iVar3 = 6;
  uStack_14 = param_4;
  do {
    uVar1 = *puVar5;
    uVar2 = puVar5[1];
    puVar5 = puVar5 + 2;
    *(undefined4 *)psVar4 = uVar1;
    *(undefined4 *)((int)psVar4 + 4) = uVar2;
    psVar4 = (short *)((int)psVar4 + 8);
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  iVar6 = 0;
  *(undefined4 *)psVar4 = *puVar5;
  iVar3 = param_1;
  do {
    if (*(int *)(iVar3 + 0x990) == 0) {
      asStack_48[0] = (short)param_2 * 0x20 + 0x10;
      asStack_48[1] = 0xb0;
      uVar1 = SpriteSystem_NewSprite
                        (*(undefined4 *)(param_1 + 0x1c),*(undefined4 *)(param_1 + 0x20),asStack_48)
      ;
      *(undefined4 *)(param_1 + iVar6 * 4 + 0x990) = uVar1;
      break;
    }
    iVar6 = iVar6 + 1;
    iVar3 = iVar3 + 4;
  } while (iVar6 < 3);
  ov89_0225A1D8(param_1,param_2);
  PlaySE(0x5e5);
  return;
}

