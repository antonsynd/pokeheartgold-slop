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
undefined4 NNS_G3dGlbMaterialColorSpecEmi(unsigned short, unsigned short, int);
undefined4 Camera_PushLookAtToNNSGlb(void);
undefined4 ov92_0225D970();
undefined4 sub_0201815C(void *, int);
undefined4 NNS_G3dGlbLightColor(int, unsigned short);
undefined4 NNS_G3dGlbMaterialColorDiffAmb(unsigned short, unsigned short, int);
undefined4 Thunk_G3X_Reset(void);
undefined4 NNS_G3dGeBufferOP_N(unsigned int, void *, unsigned int);
undefined4 sub_020182A0(void *, int);
undefined4 NNS_G3dGlbLightVector(int, short, short, short);
undefined4 sub_02018124(void *, int);
undefined4 VEC_Normalize(void *, void *);
undefined4 SpriteSystem_DrawSprites(void *);
undefined4 RequestSwap3DBuffers(int, int);

void ov92_0225DA40(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  Thunk_G3X_Reset();
  Camera_PushLookAtToNNSGlb();
  uStack_20 = 0;
  uStack_1c = 0xfffff000;
  uStack_18 = 0xfffff000;
  VEC_Normalize((undefined *)&uStack_20,(undefined *)&uStack_20);
  NNS_G3dGlbLightVector(0,(short)uStack_20,(short)uStack_1c,(short)uStack_18);
  NNS_G3dGlbLightColor(0,0x7fff);
  NNS_G3dGlbMaterialColorDiffAmb(0x7fff,0x7fff,0);
  NNS_G3dGlbMaterialColorSpecEmi(0x7fff,0x7fff,0);
  iVar3 = 0;
  iVar1 = 0;
  do {
    iVar2 = *(int *)(param_1 + 4) + 0xb50 + iVar1;
    NNS_G3dGeBufferOP_N(0x11,(undefined *)0x0,0);
    ov92_0225D970(iVar2,iVar2 + 0x1b0,iVar2 + 0x1e0);
    uStack_24 = 1;
    NNS_G3dGeBufferOP_N(0x12,(undefined *)&uStack_24,1);
    sub_02018124((undefined *)(*(int *)(param_1 + 4) + 0xbd8 + iVar1),0x1000);
    iVar3 = iVar3 + 1;
    iVar1 = iVar1 + 0x20c;
  } while (iVar3 < 8);
  iVar3 = *(int *)(param_1 + 4);
  iVar1 = *(int *)(iVar3 + 0x110);
  if (iVar1 == 0) {
    sub_020182A0((undefined *)(iVar3 + 800),1);
    sub_020182A0((undefined *)(*(int *)(param_1 + 4) + 0x52c),0);
    sub_020182A0((undefined *)(*(int *)(param_1 + 4) + 0x738),0);
    sub_02018124((undefined *)
                 (*(int *)(param_1 + 4) + 0x3a8 + *(int *)(*(int *)(param_1 + 4) + 0x514) * 0x14),
                 0x1000);
  }
  else if (iVar1 == 1) {
    sub_020182A0((undefined *)(iVar3 + 800),0);
    sub_020182A0((undefined *)(*(int *)(param_1 + 4) + 0x52c),1);
    sub_020182A0((undefined *)(*(int *)(param_1 + 4) + 0x738),0);
    sub_0201815C((undefined *)(*(int *)(param_1 + 4) + 0x5b4),0x1000);
  }
  else if (iVar1 == 2) {
    sub_020182A0((undefined *)(iVar3 + 800),0);
    sub_020182A0((undefined *)(*(int *)(param_1 + 4) + 0x52c),0);
    sub_020182A0((undefined *)(*(int *)(param_1 + 4) + 0x738),1);
    sub_0201815C((undefined *)(*(int *)(param_1 + 4) + 0x7c0),0x1000);
  }
  iVar1 = *(int *)(param_1 + 4);
  iVar3 = *(int *)(iVar1 + 0x110);
  NNS_G3dGeBufferOP_N(0x11,(undefined *)0x0,0);
  ov92_0225D970(iVar1 + 800 + iVar3 * 0x20c,iVar1 + 0x4d0,iVar1 + 0x500);
  uStack_28 = 1;
  NNS_G3dGeBufferOP_N(0x12,(undefined *)&uStack_28,1);
  iVar1 = *(int *)(param_1 + 4);
  NNS_G3dGeBufferOP_N(0x11,(undefined *)0x0,0);
  ov92_0225D970(iVar1 + 0x114,iVar1 + 0x2c4,iVar1 + 0x2f4);
  uStack_2c = 1;
  NNS_G3dGeBufferOP_N(0x12,(undefined *)&uStack_2c,1);
  iVar1 = *(int *)(param_1 + 4);
  NNS_G3dGeBufferOP_N(0x11,(undefined *)0x0,0);
  ov92_0225D970(iVar1 + 0x944,iVar1 + 0xaf4,iVar1 + 0xb24);
  uStack_30 = 1;
  NNS_G3dGeBufferOP_N(0x12,(undefined *)&uStack_30,1);
  iVar1 = *(int *)(param_1 + 4);
  if (*(int *)(iVar1 + 0x1fac) != 0) {
    NNS_G3dGeBufferOP_N(0x11,(undefined *)0x0,0);
    ov92_0225D970(iVar1 + 0x1dbc,iVar1 + 0x1f6c,iVar1 + 0x1f9c);
    uStack_34 = 1;
    NNS_G3dGeBufferOP_N(0x12,(undefined *)&uStack_34,1);
    if (*(int *)(*(int *)(param_1 + 4) + 0x1fa8) != 0) {
      iVar1 = sub_0201815C((undefined *)(*(int *)(param_1 + 4) + 0x1e44),0x1000);
      iVar3 = sub_0201815C((undefined *)(*(int *)(param_1 + 4) + 0x1e58),0x1000);
      if ((iVar1 != 0) && (iVar3 != 0)) {
        *(undefined4 *)(*(int *)(param_1 + 4) + 0x1fa8) = 0;
      }
    }
  }
  iVar1 = *(int *)(param_1 + 4);
  if (*(int *)(iVar1 + 0x1da0) != 0) {
    NNS_G3dGeBufferOP_N(0x11,(undefined *)0x0,0);
    ov92_0225D970(iVar1 + 0x1bb0,iVar1 + 0x1d60,iVar1 + 0x1d90);
    uStack_38 = 1;
    NNS_G3dGeBufferOP_N(0x12,(undefined *)&uStack_38,1);
    if (*(int *)(*(int *)(param_1 + 4) + 0x1d9c) != 0) {
      sub_02018124((undefined *)(*(int *)(param_1 + 4) + 0x1c4c),0x1000);
    }
  }
  RequestSwap3DBuffers(0,1);
  SpriteSystem_DrawSprites(*(undefined **)(param_1 + 0x54));
  return;
}

