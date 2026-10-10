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
undefined4 ov93_0225EFAC(void *);
undefined4 ov93_0225EE98(void);
undefined4 ov93_0225EE4C();
undefined4 NNS_G3dGeFlushBuffer(void);
undefined4 _s32_div_f(void);
undefined4 NNS_G3dGeBufferOP_N(unsigned int, void *, unsigned int);



void ov93_0225EB70(undefined *param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined4 uStack_48;
  undefined4 uStack_44;
  uint uStack_40;
  uint auStack_3c [6];
  int iStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;

  auStack_3c[4] = 0x2d8b6127;
  NNS_G3dGeBufferOP_N(0x32,(undefined *)(auStack_3c + 4),1);
  auStack_3c[3] = 0x7fff;
  NNS_G3dGeBufferOP_N(0x33,(undefined *)(auStack_3c + 3),1);
  NNS_G3dGeBufferOP_N(0x11,(undefined *)0x0,0);
  uStack_1c = 0;
  uStack_18 = 0x13000;
  uStack_14 = 0xffffb000;
  NNS_G3dGeBufferOP_N(0x1c,(undefined *)&uStack_1c,3);
  iVar4 = *(int *)(param_1 + 0x264);
  iVar1 = iVar4 * *(short *)(param_1 + 0x26a);
  _s32_div_f();
  iVar5 = *(int *)(param_1 + 0x260);
  iVar2 = iVar5 * ((int)*(short *)(param_1 + 0x268) + (int)*(short *)(param_1 + 0x26c));
  _s32_div_f();
  auStack_3c[5] = iVar5 + iVar2;
  uStack_20 = 0x1000;
  iStack_24 = iVar4 + iVar1;
  NNS_G3dGeBufferOP_N(0x1b,(undefined *)(auStack_3c + 5),3);
  auStack_3c[2] = 3;
  NNS_G3dGeBufferOP_N(0x10,(undefined *)(auStack_3c + 2),1);
  NNS_G3dGeBufferOP_N(0x15,(undefined *)0x0,0);
  auStack_3c[1] = 2;
  NNS_G3dGeBufferOP_N(0x10,(undefined *)(auStack_3c + 1),1);
  ov93_0225EE4C(1,1);
  ov93_0225EE98();
  uVar3 = *(uint *)(*(int *)(param_1 + 4) + 0x2c);
  auStack_3c[0] = *(uint *)(*(int *)(param_1 + 4) + 8) & 0xffff | 0x72400000;
  NNS_G3dGeBufferOP_N(0x2a,(undefined *)auStack_3c,1);
  uStack_40 = (uVar3 & 0xffff) >> 1;
  NNS_G3dGeBufferOP_N(0x2b,(undefined *)&uStack_40,1);
  uStack_44 = 0x1f00c1;
  NNS_G3dGeBufferOP_N(0x29,(undefined *)&uStack_44,1);
  ov93_0225EFAC(param_1);
  uStack_48 = 1;
  NNS_G3dGeBufferOP_N(0x12,(undefined *)&uStack_48,1);
  NNS_G3dGeFlushBuffer();
  return;
}

