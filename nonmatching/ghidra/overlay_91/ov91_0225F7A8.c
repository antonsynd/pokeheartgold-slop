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
undefined4 ov91_0225FDD8();
undefined4 ov91_0226078C();
undefined4 NNS_G3dGlbMaterialColorSpecEmi(unsigned short, unsigned short, int);
undefined4 RequestSwap3DBuffers(int, int);
undefined4 NNS_G3dGlbLightColor(int, unsigned short);
undefined4 NNS_G3dGlbMaterialColorDiffAmb(unsigned short, unsigned short, int);
undefined4 Thunk_G3X_Reset(void);
undefined4 NNS_G3dGeBufferOP_N(unsigned int, void *, unsigned int);
undefined4 SpriteList_RenderAndAnimateSprites(void *);
undefined4 NNS_G3dGlbLightVector(int, short, short, short);
undefined4 ov91_0226023C();
undefined4 ov91_0225D6A0();
undefined4 ov91_022610A8();
undefined4 ov91_02260D98();

void ov91_0225F7A8(int param_1,int param_2)

{
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;

  ov91_02260D98(param_2 + 0x6a98);
  ov91_0225D6A0(param_2 + 900);
  Thunk_G3X_Reset();
  ov91_0225FDD8(param_2);
  NNS_G3dGlbLightVector(0,0,-0x1000,0);
  NNS_G3dGlbLightColor(0,0x7fff);
  NNS_G3dGlbMaterialColorDiffAmb(0x7fff,0x7fff,0);
  NNS_G3dGlbMaterialColorSpecEmi(0x7fff,0x7fff,0);
  NNS_G3dGeBufferOP_N(0x11,(undefined *)0x0,0);
  ov91_022610A8(param_2 + 0x1a0);
  uStack_10 = 1;
  NNS_G3dGeBufferOP_N(0x12,(undefined *)&uStack_10,1);
  NNS_G3dGeBufferOP_N(0x11,(undefined *)0x0,0);
  ov91_0226023C(param_2 + 0x4c0,param_1 + 0x19cc);
  uStack_14 = 1;
  NNS_G3dGeBufferOP_N(0x12,(undefined *)&uStack_14,1);
  NNS_G3dGeBufferOP_N(0x11,(undefined *)0x0,0);
  ov91_0226078C(param_2,*(undefined4 *)(param_1 + 0x10));
  uStack_18 = 1;
  NNS_G3dGeBufferOP_N(0x12,(undefined *)&uStack_18,1);
  RequestSwap3DBuffers(0,0);
  SpriteList_RenderAndAnimateSprites(*(undefined **)(param_2 + 0x1c));
  return;
}

