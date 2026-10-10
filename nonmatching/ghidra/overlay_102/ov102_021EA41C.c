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
undefined4 PutWindowTilemap();
undefined4 GfGfxLoader_GXLoadPal();
undefined4 ov102_021EAA3C();
undefined4 ov102_021EA8C0();
undefined4 ov102_021EAC20();
undefined4 ov102_021E9084();
undefined4 sub_0200E948();
undefined4 YesNoPrompt_Create();
undefined4 GfGfxLoader_LoadCharData();
undefined4 ov102_021E8F6C();
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 AddWindowParameterized();
undefined4 ov102_021EA268();
undefined4 ov102_021EAE40();
undefined4 ov102_021EA80C();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 LoadUserFrameGfx2();
undefined4 ov102_021EA920();

void ov102_021EA41C(undefined4 *param_1,undefined4 param_2)

{
  undefined1 uVar1;
  undefined4 uVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;

  uVar2 = ov102_021EA268(*param_1);
  ov102_021EA80C(param_1,param_2);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,0,uVar2,0,0,0,1,0x23);
  GfGfxLoader_LoadScrnDataFromOpenNarc(param_2,0,uVar2,4,0,0,1,0x23);
  *(undefined2 *)((int)param_1 + 0x1e2) = 0xff40;
  func_0x0201bc8c(uVar2,4,3,(int)*(short *)((int)param_1 + 0x1e2));
  uVar3 = GfGfxLoader_LoadCharDataFromOpenNarc(param_2,1,uVar2,0,0,0,1,0x23);
  GfGfxLoader_LoadCharDataFromOpenNarc(param_2,1,uVar2,4,0,0,1,0x23);
  uVar3 = uVar3 >> 5;
  AddWindowParameterized(uVar2,param_1 + 3,0,3,1,0x1b,4,0,uVar3 & 0xffff);
  AddWindowParameterized(uVar2,param_1 + 7,4,3,1,0x1b,4,0,uVar3 & 0xffff);
  AddWindowParameterized(uVar2,param_1 + 0xb,0,2,0x15,0x1b,2,0xb,uVar3 + 0x6c & 0xffff);
  AddWindowParameterized(uVar2,param_1 + 0xf,0,2,0x15,0x13,2,0xb,uVar3 + 0x6c & 0xffff);
  AddWindowParameterized(uVar2,param_1 + 0x13,0,0x19,0xc,8,4,0xb,uVar3 + 0xa2 & 0xffff);
  *(short *)((int)param_1 + 0x1ee) = (short)uVar3 + 0xa2;
  uVar4 = YesNoPrompt_Create(0x23);
  param_1[0x7a] = uVar4;
  GfGfxLoader_LoadCharData(0x26,0,uVar2,0,uVar3 + 0xde,0,0,0x23);
  param_1[0x24] = uVar3 + 0xde;
  GfGfxLoader_GXLoadPal(0x26,0x19,0,0x1c0,0x20,0x23);
  *(short *)(param_1 + 0x7b) = (short)uVar3 + 0xe7;
  uVar1 = ov102_021E9084(param_1[1]);
  LoadUserFrameGfx2(uVar2,0,uVar3 + 0xe7 & 0xffff,0xf,uVar1,0x23);
  param_1[0x17] = param_1 + 0xb;
  sub_0200E948(param_1 + 0xb,uVar3 + 0xe7,0xf);
  PutWindowTilemap(param_1 + 3);
  PutWindowTilemap(param_1 + 7);
  PutWindowTilemap(param_1 + 0xb);
  PutWindowTilemap(param_1 + 0xf);
  ov102_021EA8C0(param_1);
  ov102_021EAA3C(param_1);
  ov102_021EAE40(param_1,0);
  ov102_021EA920(param_1);
  iVar5 = ov102_021E8F6C(param_1[1]);
  if (iVar5 == 2) {
    ov102_021EAC20(param_1);
  }
  return;
}

