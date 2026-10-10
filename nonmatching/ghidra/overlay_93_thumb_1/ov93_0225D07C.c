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
undefined4 NNS_G3dGlbSetBaseTrans();
undefined4 ov93_02261D1C();
undefined4 ov93_0225E03C();
undefined4 Thunk_G3X_Reset(void);
undefined4 ov93_0225FFF8();
undefined4 ov93_0225FE80();
undefined4 ov93_02260A30();
undefined4 Camera_ApplyPerspectiveType(unsigned char, void *);
undefined4 NNS_G3dGlbMaterialColorSpecEmi(unsigned short, unsigned short, int);
undefined4 ov93_02260660();
undefined4 Camera_PushLookAtToNNSGlb(void);
undefined4 NNS_G3dGlbLightColor(int, unsigned short);
undefined4 MI_Copy36B(void *, void *);
undefined4 MTX_Identity33_(void *);
undefined4 NNS_G3dGlbMaterialColorDiffAmb(unsigned short, unsigned short, int);
undefined4 NNS_G3dGlbLightVector(int, short, short, short);
undefined4 Camera_SetStaticPtr(void *);
undefined4 ov93_02262034();
undefined4 ov93_02261354();
undefined4 SpriteSystem_DrawSprites(void *);
undefined4 NNS_G3dGlbSetBaseScale(void *);
undefined4 sub_020399FC(void);
undefined4 RequestSwap3DBuffers(int, int);
undefined4 NNS_G3dGlbFlushP(void);
undefined4 sub_020181EC(void *);
undefined4 sub_02015460(void);
undefined4 ov93_0225E0A4();
undefined4 NNS_G3dGeBufferOP_N(unsigned int, void *, unsigned int);
undefined4 ov93_0225E898();
undefined4 sub_0201543C(void);
undefined4 SpriteSystem_UpdateTransfer(void);
extern uint  uRam021da598 __asm__("sub_021DA598");

void ov93_0225D07C(undefined4 param_1,int param_2)

{
  int iVar1;
  undefined4 uStack_48;
  undefined auStack_44 [36];
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;

  uStack_14 = 0x1000;
  uStack_10 = 0x1000;
  uStack_c = 0x1000;
  uStack_20 = 0;
  uStack_1c = 0;
  uStack_18 = 0;
  MTX_Identity33_(auStack_44);
  ov93_02262034(param_2,param_2 + 0x15a8);
  ov93_02261354(param_2,param_2 + 0x1468);
  ov93_02261D1C(param_2,param_2 + 0x1560);
  ov93_0225FFF8(param_2);
  ov93_0225FE80(param_2,*(undefined4 *)(param_2 + 0x2c),param_2 + 0x1428);
  ov93_02260660(param_2);
  ov93_0225E03C(param_2);
  ov93_02260A30(param_2);
  Thunk_G3X_Reset();
  Camera_SetStaticPtr(*(undefined **)(param_2 + 0x9c));
  Camera_ApplyPerspectiveType(1,*(undefined **)(param_2 + 0x9c));
  Camera_PushLookAtToNNSGlb();
  NNS_G3dGlbLightVector(0,0,-0x1000,0);
  NNS_G3dGlbLightColor(0,0x739c);
  NNS_G3dGlbMaterialColorDiffAmb(0x7fff,0x7fff,0);
  NNS_G3dGlbMaterialColorSpecEmi(0x7fff,0x7fff,0);
  NNS_G3dGlbSetBaseTrans((undefined *)&uStack_20);
  MI_Copy36B(auStack_44,(undefined *)0x21da558);
  uRam021da598 = uRam021da598 & 0xffffff5b;
  NNS_G3dGlbSetBaseScale((undefined *)&uStack_14);
  NNS_G3dGlbFlushP();
  ov93_0225E898(param_2,*(undefined4 *)(param_2 + 0xd4));
  NNS_G3dGeBufferOP_N(0x11,(undefined *)0x0,0);
  sub_020181EC((undefined *)(param_2 + 0x13b0));
  sub_020181EC((undefined *)(param_2 + 0xe8));
  ov93_0225E0A4(param_2);
  uStack_48 = 1;
  NNS_G3dGeBufferOP_N(0x12,(undefined *)&uStack_48,1);
  Thunk_G3X_Reset();
  iVar1 = sub_0201543C();
  if (0 < iVar1) {
    Thunk_G3X_Reset();
  }
  sub_02015460();
  SpriteSystem_DrawSprites(*(undefined **)(param_2 + 0x28));
  SpriteSystem_UpdateTransfer();
  RequestSwap3DBuffers(0,0);
  sub_020399FC();
  return;
}

