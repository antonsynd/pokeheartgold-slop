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
undefined4 func_0x0206ddd8() __asm__("sub_0206DDD8");
undefined4 func_0x02014510() __asm__("sub_02014510");
undefined4 GfGfxLoader_GXLoadPal();
undefined4 GetBoxmonSpriteCharAndPlttNarcIds();
undefined4 Heap_Free();
undefined4 Heap_AllocAtEnd();
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 GetBoxMonData();
undefined4 func_0x0206de00() __asm__("sub_0206DE00");
undefined4 BG_LoadCharTilesData();
extern undefined ov71_0224BBEC;

void ov71_02247124(int *param_1,int param_2,uint param_3,int param_4,int param_5)

{
  short sVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uStack_38;
  undefined4 uStack_34;
  int iStack_30;
  undefined4 uStack_2c;
  undefined2 uStack_28;
  undefined2 uStack_26;
  undefined2 uStack_24;
  int iStack_18;

  if (param_5 == 0) {
    uVar7 = 0xc80;
  }
  else {
    uVar7 = 0x1900;
  }
  iStack_18 = param_4;
  iVar2 = Heap_AllocAtEnd(0x38,uVar7);
  if (iVar2 != 0) {
    uStack_38 = 0;
    uStack_34 = 0;
    iStack_30 = 10;
    uStack_2c = 10;
    if (param_2 == 0) {
      uVar6 = *(undefined4 *)*param_1;
    }
    else {
      uVar6 = ((undefined4 *)*param_1)[1];
    }
    uVar3 = func_0x0206ddd8(uVar6,10,&uStack_28,&ov71_0224BBEC);
    GetBoxmonSpriteCharAndPlttNarcIds(&uStack_28,uVar6,2,0);
    uVar4 = GetBoxMonData(uVar6,0,0);
    sVar1 = GetBoxMonData(uVar6,5,0);
    if (param_5 != 0) {
      iStack_30 = iStack_30 << 1;
    }
    iVar5 = GetBoxMonData(uVar6,0x4c,0);
    if ((iVar5 == 1) && (sVar1 == 0x147)) {
      sVar1 = 0x1ee;
    }
    func_0x02014510(uStack_28,uStack_26,0x38,&uStack_38,iVar2,uVar4,param_5,2,sVar1);
    func_0x020d2894(iVar2,uVar7);
    BG_LoadCharTilesData(param_1[2],param_3 & 0xff,iVar2,uVar7,0);
    func_0x0206de00(uVar6,uVar3);
    Heap_Free(iVar2);
  }
  if (param_3 < 4) {
    uVar7 = 0;
  }
  else {
    uVar7 = 4;
  }
  GfGfxLoader_GXLoadPal(uStack_28,uStack_24,uVar7,param_4 << 5,0x20,0x38);
  return;
}

