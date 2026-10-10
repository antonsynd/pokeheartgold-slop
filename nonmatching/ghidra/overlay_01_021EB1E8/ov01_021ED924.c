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
undefined4 ov01_021EBCA4(undefined4);
undefined4 ov01_02203EA0(void);
undefined4 ov01_02203F2C(undefined4, undefined4);
undefined4 ov01_021EA89C(undefined4, undefined4, undefined4, undefined4);
undefined4 PlayerAvatar_GetMapObject(undefined4);
undefined4 ov01_021EA8C4(undefined4, undefined4);
undefined4 ov01_021EA864(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);

void ov01_021ED924(undefined4 param_1,int *param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 *puVar3;
  int iVar4;
  int iVar5;
  undefined1 auStack_50 [32];
  undefined1 auStack_30 [32];

  iVar4 = *(int *)(*param_2 + 0x104);
  iVar5 = param_2[0x3d6];
  switch(*(undefined2 *)((int)param_2 + 0xf62)) {
  case 0:
    PlayerAvatar_GetMapObject(*(undefined4 *)(iVar4 + 0x40));
    uVar1 = ov01_02203EA0();
    *(undefined4 *)(iVar5 + 0x62c) = uVar1;
    ov01_021EA864(*(undefined4 *)(iVar4 + 0x4c),0xffffffff,1,0,10,0);
    ov01_021EA89C(*(undefined4 *)(iVar4 + 0x4c),0xffffffff,0,0);
    iVar2 = 0;
    puVar3 = auStack_30;
    do {
      iVar2 = iVar2 + 1;
      *puVar3 = 0xff;
      puVar3 = puVar3 + 1;
    } while (iVar2 < 0x20);
    ov01_021EA8C4(*(undefined4 *)(iVar4 + 0x4c),auStack_30);
    ov01_02203F2C(*(undefined4 *)(iVar5 + 0x62c),0x40800000);
    *(undefined2 *)((int)param_2 + 0xf62) = 1;
    return;
  case 1:
    *(undefined2 *)((int)param_2 + 0xf62) = 3;
    return;
  case 2:
    PlayerAvatar_GetMapObject(*(undefined4 *)(iVar4 + 0x40));
    uVar1 = ov01_02203EA0();
    *(undefined4 *)(iVar5 + 0x62c) = uVar1;
    ov01_021EA864(*(undefined4 *)(iVar4 + 0x4c),0xffffffff,1,0,10,0);
    ov01_021EA89C(*(undefined4 *)(iVar4 + 0x4c),0xffffffff,0,0);
    iVar2 = 0;
    puVar3 = auStack_50;
    do {
      iVar2 = iVar2 + 1;
      *puVar3 = 0xff;
      puVar3 = puVar3 + 1;
    } while (iVar2 < 0x20);
    ov01_021EA8C4(*(undefined4 *)(iVar4 + 0x4c),auStack_50);
    ov01_02203F2C(*(undefined4 *)(iVar5 + 0x62c),0x40800000);
    *(undefined2 *)((int)param_2 + 0xf62) = 3;
    return;
  case 3:
    if (*(short *)((int)param_2 + 0xf66) == 5) {
      *(undefined2 *)((int)param_2 + 0xf62) = 4;
      return;
    }
    break;
  case 4:
    *(undefined2 *)((int)param_2 + 0xf62) = 5;
    return;
  case 5:
    ov01_021EBCA4(param_2[1]);
  }
  return;
}

