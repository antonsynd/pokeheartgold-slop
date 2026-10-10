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
undefined4 func_0x020c3b90() __asm__("sub_020C3B90");
undefined4 func_0x0200771c() __asm__("sub_0200771C");
undefined4 NARC_New();
undefined4 func_0x020c2c54() __asm__("sub_020C2C54");
undefined4 func_0x020c2bac() __asm__("sub_020C2BAC");
undefined4 func_0x020c3b50() __asm__("sub_020C3B50");
undefined4 HeapExp_FndInitAllocator();
undefined4 NARC_Delete();
undefined4 func_0x020c2b7c() __asm__("sub_020C2B7C");
undefined4 NNS_G3dRenderObjAddAnmObj();
undefined4 func_0x0201f51c() __asm__("sub_0201F51C");
undefined4 func_0x020be008() __asm__("sub_020BE008");

void ov15_021FDD70(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  
  uVar1 = NARC_New(0xf,6);
  HeapExp_FndInitAllocator(param_1 + 0x808,6,4);
  iVar5 = param_1 + 0x81c;
  if (*(char *)(param_1 + 0x615) == '\0') {
    uStack_28 = 0x39;
    uStack_2c = 0x41;
    uVar4 = 0x37;
    uStack_30 = 0x49;
  }
  else {
    uStack_28 = 0x4c;
    uStack_2c = 0x54;
    uVar4 = 0x4a;
    uStack_30 = 0x5c;
  }
  uVar4 = func_0x0200771c(uVar1,uVar4,6);
  *(undefined4 *)(param_1 + 0x874) = uVar4;
  func_0x0201f51c(iVar5,param_1 + 0x870,param_1 + 0x874);
  uVar4 = func_0x020c3b50(*(undefined4 *)(param_1 + 0x874));
  func_0x020c2bac(*(undefined4 *)(param_1 + 0x870),1,0x40);
  func_0x020c2bac(*(undefined4 *)(param_1 + 0x870),1,0x80);
  func_0x020c2bac(*(undefined4 *)(param_1 + 0x870),1,0x200);
  func_0x020c2bac(*(undefined4 *)(param_1 + 0x870),1,0x400);
  func_0x020c2c54(*(undefined4 *)(param_1 + 0x870),1,0x3f000000);
  uVar7 = 0;
  iVar6 = iVar5;
  do {
    uVar2 = func_0x0200771c(uVar1,uStack_28 + uVar7,6);
    *(undefined4 *)(iVar6 + 0x5c) = uVar2;
    uVar2 = func_0x020c3b90(uVar2,0);
    uVar3 = func_0x020c2b7c(param_1 + 0x808,uVar2,*(undefined4 *)(param_1 + 0x870));
    *(undefined4 *)(iVar6 + 0xa0) = uVar3;
    func_0x020be008(*(undefined4 *)(iVar6 + 0xa0),uVar2,*(undefined4 *)(param_1 + 0x870),uVar4);
    uVar2 = func_0x0200771c(uVar1,uStack_2c + uVar7,6);
    *(undefined4 *)(iVar6 + 0x7c) = uVar2;
    uVar2 = func_0x020c3b90(uVar2,0);
    uVar3 = func_0x020c2b7c(param_1 + 0x808,uVar2,*(undefined4 *)(param_1 + 0x870));
    *(undefined4 *)(iVar6 + 0xc0) = uVar3;
    func_0x020be008(*(undefined4 *)(iVar6 + 0xc0),uVar2,*(undefined4 *)(param_1 + 0x870),uVar4);
    uVar7 = uVar7 + 1;
    iVar6 = iVar6 + 4;
  } while (uVar7 < 8);
  uVar2 = func_0x0200771c(uVar1,uStack_30,6);
  *(undefined4 *)(param_1 + 0x8b8) = uVar2;
  uVar2 = func_0x020c3b90(*(undefined4 *)(param_1 + 0x8b8),0);
  uVar3 = func_0x020c2b7c(param_1 + 0x808,uVar2,*(undefined4 *)(param_1 + 0x870));
  *(undefined4 *)(param_1 + 0x8fc) = uVar3;
  func_0x020be008(*(undefined4 *)(param_1 + 0x8fc),uVar2,*(undefined4 *)(param_1 + 0x870),uVar4);
  *(uint *)(param_1 + 0x900) = (uint)*(byte *)(*(int *)(param_1 + 0x234) + 100);
  NNS_G3dRenderObjAddAnmObj(iVar5,*(undefined4 *)(iVar5 + *(int *)(param_1 + 0x900) * 4 + 0xa0));
  NNS_G3dRenderObjAddAnmObj(iVar5,*(undefined4 *)(iVar5 + *(int *)(param_1 + 0x900) * 4 + 0xc0));
  NNS_G3dRenderObjAddAnmObj(iVar5,*(undefined4 *)(param_1 + 0x8fc));
  NARC_Delete(uVar1);
  return;
}

