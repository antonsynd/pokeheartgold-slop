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
undefined4 SpriteTransfer_CreateCharTransferTask_AllocAtEnd(void *);
void * AddCharResObjFromOpenNarc(void *, void *, int, int, int, int, int);
undefined4 Sprite_SetAnimCtrlSeq(void *, int);
void * AddCellOrAnimResObjFromOpenNarc(void *, void *, int, int, int, int, int);
undefined4 CreateSpriteResourcesHeader(void *, int, int, int, int, int, int, int, int, void *, void *, void *, void *, void *, void *);
void * AddPlttResObjFromOpenNarc(void *, void *, int, int, int, int, int, int);
undefined4 SpriteTransfer_CreatePlttTransferTask(void *);
undefined4 Sprite_SetDrawFlag(void *, int);
void * Sprite_Create(void *);
undefined4 sub_0200A740(void *);
undefined4 _u32_div_f(unsigned int, unsigned int);

void ov49_0225BFF0(int param_1,int param_2,undefined *param_3,int param_4,uint param_5,int param_6)

{
  uint uVar1;
  undefined *puVar2;
  int iVar3;
  int extraout_r1;
  undefined4 uStack_58;
  undefined *puStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  int iStack_3c;
  undefined auStack_38 [36];
  
  if (0x1a < param_5) {
    GF_AssertFail();
  }
  if (*(int *)(param_1 + 0x54) != 0) {
    GF_AssertFail();
  }
  uVar1 = _u32_div_f(param_5,3);
  { uint nug_a = (uint)(param_5), nug_b = (uint)(3); extraout_r1 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
  puVar2 = AddCharResObjFromOpenNarc
                     (*(undefined **)(param_2 + 0x130),param_3,uVar1 * 3 + 0x3d,0,100,2,param_4);
  *(undefined **)(param_1 + 0x58) = puVar2;
  iVar3 = SpriteTransfer_CreateCharTransferTask_AllocAtEnd(puVar2);
  if (iVar3 == 0) {
    GF_AssertFail();
  }
  sub_0200A740(*(undefined **)(param_1 + 0x58));
  puVar2 = AddPlttResObjFromOpenNarc
                     (*(undefined **)(param_2 + 0x134),param_3,0x59,0,100,2,3,param_4);
  *(undefined **)(param_1 + 0x5c) = puVar2;
  iVar3 = SpriteTransfer_CreatePlttTransferTask(puVar2);
  if (iVar3 == 0) {
    GF_AssertFail();
  }
  sub_0200A740(*(undefined **)(param_1 + 0x5c));
  puVar2 = AddCellOrAnimResObjFromOpenNarc
                     (*(undefined **)(param_2 + 0x138),param_3,uVar1 * 3 + 0x3c,0,100,2,param_4);
  *(undefined **)(param_1 + 0x60) = puVar2;
  puVar2 = AddCellOrAnimResObjFromOpenNarc
                     (*(undefined **)(param_2 + 0x13c),param_3,uVar1 * 3 + 0x3b,0,100,3,param_4);
  *(undefined **)(param_1 + 100) = puVar2;
  uStack_58 = 0;
  puStack_54 = (undefined *)0x0;
  uStack_50 = 0;
  uStack_4c = 0;
  uStack_48 = 0;
  uStack_44 = 0;
  uStack_40 = 0;
  iStack_3c = 0;
  CreateSpriteResourcesHeader
            (auStack_38,100,100,100,100,-1,-1,0,0,*(undefined **)(param_2 + 0x130),
             *(undefined **)(param_2 + 0x134),*(undefined **)(param_2 + 0x138),
             *(undefined **)(param_2 + 0x13c),(undefined *)0x0,(undefined *)0x0);
  uStack_58 = *(undefined4 *)(param_2 + 4);
  puStack_54 = auStack_38;
  uStack_44 = 0x10;
  uStack_40 = 2;
  uStack_50 = 0xd0000;
  uStack_4c = 0x198000;
  iStack_3c = param_4;
  puVar2 = Sprite_Create((undefined *)&uStack_58);
  *(undefined **)(param_1 + 0x54) = puVar2;
  Sprite_SetAnimCtrlSeq(puVar2,extraout_r1);
  Sprite_SetDrawFlag(*(undefined **)(param_1 + 0x54),param_6);
  return;
}

