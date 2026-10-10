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
undefined4 GF_AssertFail(void);
undefined4 CreateSpriteResourcesHeader(void *, int, int, int, int, int, int, int, int, void *, void *, void *, void *, void *, void *);
undefined4 sub_02013688(void *, int, int);
undefined4 ov41_0224A15C();
undefined4 sub_02021AC8(unsigned int, int, int, void *);
void * SpriteResourceCollection_Find(void *, int);
void * SpriteTransfer_GetPaletteProxy(void *, void *);

void ov41_0224A734(int param_1,int param_2,int param_3,undefined4 param_4,undefined *param_5,
                  int param_6,int param_7)

{
  undefined *puVar1;
  uint uVar2;
  int iVar3;
  undefined4 uStack_8c;
  undefined *puStack_88;
  int iStack_84;
  int iStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined auStack_5c [36];
  undefined4 *puStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined *puStack_28;
  undefined4 uStack_24;
  undefined *puStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  CreateSpriteResourcesHeader
            (auStack_5c,param_2,0,param_2,param_2,-1,-1,0,0,*(undefined **)(param_3 + 0x48),
             *(undefined **)(param_3 + 0x4c),*(undefined **)(param_3 + 0x50),
             *(undefined **)(param_3 + 0x54),(undefined *)0x0,(undefined *)0x0);
  uStack_8c = *(undefined4 *)(param_3 + 0x44);
  puStack_88 = auStack_5c;
  uStack_60 = 0xe;
  iStack_84 = param_6 << 0xc;
  puStack_38 = &uStack_8c;
  iStack_80 = param_7 << 0xc;
  uStack_68 = 2;
  uStack_7c = 0;
  uStack_64 = 1;
  uStack_34 = 0;
  uStack_30 = 0;
  uStack_1c = 0;
  uStack_2c = 1;
  puStack_28 = param_5;
  uStack_18 = 0x13;
  uStack_24 = param_4;
  puVar1 = SpriteResourceCollection_Find(*(undefined **)(param_3 + 0x4c),1);
  puStack_20 = SpriteTransfer_GetPaletteProxy(puVar1,(undefined *)0x0);
  uVar2 = sub_02013688(param_5,1,0xd);
  iVar3 = sub_02021AC8(uVar2,1,1,(undefined *)(param_1 + 0x14));
  if (iVar3 == 0) {
    GF_AssertFail();
  }
  uStack_14 = *(undefined4 *)(param_1 + 0x18);
  ov41_0224A15C(param_1,&puStack_38);
  return;
}

