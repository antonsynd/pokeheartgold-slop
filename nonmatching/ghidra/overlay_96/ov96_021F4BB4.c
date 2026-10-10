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
undefined4 SetBgAffine();
undefined4 func_0x020cf15c() __asm__("sub_020CF15C");
undefined4 ov96_021EB52C();
undefined4 Sprite_SetMatrix();
undefined4 func_0x020f21c0() __asm__("sub_020F21C0");
undefined4 ov96_021EB5B8();
undefined4 func_0x020f1cc8() __asm__("sub_020F1CC8");
undefined4 func_0x020d3ab4() __asm__("sub_020D3AB4");
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 func_0x020f2104() __asm__("sub_020F2104");
undefined4 ov96_021F4724();
undefined4 func_0x020f22dc() __asm__("sub_020F22DC");

void ov96_021F4BB4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  int aiStack_2c [4];
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  *(short *)(param_1 + 0x82) = *(short *)(param_1 + 0x82) + 1;
  uVar1 = *(ushort *)(param_1 + 0x82);
  uStack_10 = param_4;
  if (0x50 < uVar1) {
    ov96_021F4724(param_1 + 0x68);
    return;
  }
  if (uVar1 == 0x29) {
    ov96_021EB52C(*(undefined4 *)(param_1 + 300),1,1);
  }
  else if (uVar1 == 0x3d) {
    ov96_021EB52C(*(undefined4 *)(param_1 + 300),1,0);
  }
  uVar2 = (uint)*(ushort *)(param_1 + 0x82);
  if (uVar2 < 0x29) {
    uVar3 = func_0x020f21c0();
    uVar3 = func_0x020f1cc8(uVar3,0x42200000);
    func_0x020f22dc(0x45800000,uVar3);
    aiStack_2c[3] = func_0x020f2104();
    uStack_1c = 0;
    uStack_18 = 0;
    uStack_14 = aiStack_2c[3];
    func_0x020d3ab4();
    SetBgAffine(*(undefined4 *)(param_1 + 8),7,aiStack_2c + 3,0x80,0x60);
    return;
  }
  if ((0x28 < uVar2) && (uVar2 < 0x3d)) {
    aiStack_2c[2] = 0;
    iVar4 = func_0x020f2998((uVar2 - 0x28) * 0x90,0x14);
    aiStack_2c[0] = (iVar4 + 0x38) * 0x1000;
    aiStack_2c[1] = 0x290000;
    uVar3 = ov96_021EB5B8(*(undefined4 *)(param_1 + 300));
    Sprite_SetMatrix(uVar3,aiStack_2c);
    return;
  }
  ov96_021EB52C(*(undefined4 *)(param_1 + 300),1,0);
  uVar2 = func_0x020f2998((*(ushort *)(param_1 + 0x82) - 0x3c) * 0x10,0x14);
  func_0x020cf15c(0x4001050,8,0x24,0x10 - (uVar2 & 0xffff),uVar2 & 0xffff);
  return;
}

