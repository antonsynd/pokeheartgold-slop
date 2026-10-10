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
undefined4 ov103_021EE2E0();
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 ov103_021EE13C();
undefined4 GfGfx_EngineATogglePlanes();
undefined4 ov103_021EE0CC();
undefined4 ov103_021EE160();
undefined4 ov103_021EE048();
undefined4 ov103_021EDF88();
extern undefined ov103_021EED58;

void ov103_021EDEA8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined *puVar3;
  uint uVar4;

  GfGfx_EngineATogglePlanes(0x10,1,param_3,param_4,param_4);
  GfGfx_EngineBTogglePlanes(0x10,1);
  ov103_021EE13C(*(undefined4 *)(param_1 + 0xc));
  ov103_021EDF88(*(undefined4 *)(param_1 + 0xc));
  ov103_021EE2E0(*(undefined4 *)(param_1 + 0xc));
  ov103_021EE160(*(undefined4 *)(param_1 + 0xc));
  uVar4 = 0;
  puVar3 = &ov103_021EED58;
  iVar2 = 0;
  do {
    uVar1 = ov103_021EE048(*(undefined4 *)(param_1 + 0xc),puVar3);
    uVar4 = uVar4 + 1;
    *(undefined4 *)(*(int *)(param_1 + 0xc) + iVar2 + 600) = uVar1;
    puVar3 = puVar3 + 0x34;
    iVar2 = iVar2 + 4;
  } while (uVar4 < 7);
  iVar2 = *(int *)(param_1 + 0xc);
  if (*(ushort *)(iVar2 + 0x2e0) < 0xb) {
    ov103_021EE0CC(iVar2,0,0);
    ov103_021EE0CC(*(undefined4 *)(param_1 + 0xc),1,0);
  }
  else if (*(short *)(param_1 + 0x1c) == 0) {
    ov103_021EE0CC(iVar2,0,0);
  }
  else {
    ov103_021EE0CC(iVar2,1,0);
  }
  ov103_021EE0CC(*(undefined4 *)(param_1 + 0xc),4,0);
  ov103_021EE0CC(*(undefined4 *)(param_1 + 0xc),5,0);
  ov103_021EE0CC(*(undefined4 *)(param_1 + 0xc),6,0);
  return;
}

