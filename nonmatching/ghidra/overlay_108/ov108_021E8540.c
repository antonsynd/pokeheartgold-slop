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
undefined4 Heap_Alloc();
undefined4 ov108_021E84F8();
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 CreateSpriteResourcesHeader();
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 Sprite_CreateAffine();
undefined4 GF_AssertFail();
undefined4 func_0x020f2178() __asm__("sub_020F2178");
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 func_0x020d4994() __asm__("sub_020D4994");

int * ov108_021E8540(undefined4 *param_1,int param_2,int param_3,undefined4 param_4,byte param_5,
                    byte param_6,undefined1 param_7,int param_8)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  int iStack_48;
  int iStack_44;
  undefined4 uStack_40;
  int iStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined2 uStack_28;
  uint uStack_24;
  int iStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  piVar1 = (int *)Heap_Alloc(*param_1,0x10);
  func_0x020d4994(piVar1,0,0x10);
  iVar2 = Heap_Alloc(*param_1,8);
  piVar1[2] = iVar2;
  uVar3 = Heap_Alloc(*param_1,0x24);
  *(undefined4 *)piVar1[2] = uVar3;
  piVar1[1] = *(int *)piVar1[2];
  CreateSpriteResourcesHeader
            (piVar1[1],param_6 + 0xe000,0xe000,0xe000,0xe000,0xffffffff,0xffffffff,0,param_4,
             param_1[0x51],param_1[0x52],param_1[0x53],param_1[0x54],0,0);
  iStack_48 = param_1[5];
  if (iStack_48 == 0) {
    iStack_48 = param_1[4];
  }
  iStack_44 = piVar1[1];
  if (param_2 == 0) {
    uVar3 = func_0x020f2178(0);
    func_0x020f24c8(uVar3,0x3f000000);
  }
  else {
    uVar3 = func_0x020f2178(param_2 << 0xc);
    func_0x020f1520(0x3f000000,uVar3);
  }
  uStack_40 = func_0x020f2104();
  if (param_3 == 0) {
    uVar3 = func_0x020f2178(0);
    func_0x020f24c8(uVar3,0x3f000000);
  }
  else {
    uVar3 = func_0x020f2178(param_3 << 0xc);
    func_0x020f1520(0x3f000000,uVar3);
  }
  iStack_3c = func_0x020f2104();
  uStack_38 = 0;
  if (param_8 == 2) {
    iStack_3c = iStack_3c + 0xc0000;
  }
  uStack_34 = 0x1000;
  uStack_30 = 0x1000;
  uStack_2c = 0x1000;
  uStack_28 = 0;
  uStack_24 = (uint)param_5;
  iStack_20 = param_8;
  uStack_1c = *param_1;
  ov108_021E84F8(param_1,param_6,param_7);
  iVar2 = Sprite_CreateAffine(&iStack_48);
  *piVar1 = iVar2;
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  return piVar1;
}

