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
undefined4 ov49_0226535C();
undefined4 ov49_0225B35C();
undefined4 ov49_02258B20();
undefined4 ov49_0225CBDC();
undefined4 ov49_02268850();
undefined4 OverlayManager_GetData();
undefined4 ov49_0225EEF8();
undefined4 ov49_0225AB14();
undefined4 ov49_0225B0D8();
undefined4 ov49_0225B200();
undefined4 Main_SetVBlankIntrCB();
undefined4 HBlankInterruptDisable();
undefined4 ov49_0225B244();
undefined4 ov49_0225ACBC();
undefined4 ov49_0225AE4C();
undefined4 ov49_0225E2B4();
undefined4 ov49_02258994();
undefined4 OverlayManager_GetArgs();
undefined4 ov49_0225B4E4();
undefined4 sub_02006300();
undefined4 sub_0200616C();
undefined4 ov49_0225A7D0();
undefined4 Heap_Free();
undefined4 Heap_Destroy();

undefined4 ov49_02259EF8(undefined4 param_1)

{
  int iVar1;
  int iVar2;

  iVar1 = OverlayManager_GetData();
  iVar2 = OverlayManager_GetArgs(param_1);
  *(uint *)(iVar2 + 0x18) = (uint)*(byte *)(iVar1 + 1);
  Main_SetVBlankIntrCB(0,0);
  HBlankInterruptDisable();
  ov49_02268850(*(undefined4 *)(iVar1 + 0x3dc));
  ov49_0226535C(*(undefined4 *)(iVar1 + 0x3d4));
  ov49_0225EEF8(*(undefined4 *)(iVar1 + 0x3f0));
  ov49_0225B4E4(iVar1 + 0x184,iVar1 + 0x318,iVar1 + 0x3c);
  ov49_0225B35C(iVar1 + 0x2dc);
  ov49_0225AB14(iVar1 + 0x2f8);
  ov49_0225ACBC(iVar1 + 0x318);
  ov49_0225AE4C(iVar1 + 0x338,iVar1 + 0x3c);
  ov49_0225B244(iVar1 + 0x390);
  ov49_0225B200(iVar1 + 0x3a0);
  ov49_0225B0D8(iVar1 + 0x3c4);
  ov49_0225CBDC(*(undefined4 *)(iVar1 + 0x3ec));
  ov49_0225E2B4(*(undefined4 *)(iVar1 + 0x3e4));
  ov49_02258B20(*(undefined4 *)(iVar1 + 0x3e0));
  ov49_02258994(*(undefined4 *)(iVar1 + 1000));
  ov49_0225A7D0(iVar1 + 0x3c);
  Heap_Free(iVar1);
  Heap_Destroy(0x77);
  Heap_Destroy(0x78);
  sub_0200616C(0);
  sub_02006300(0);
  return 1;
}

