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
undefined4 ov93_0225EDE8();
undefined4 ov93_0225EDFC();
undefined4 ov93_0225FEC4();
undefined4 func_0x0225fb6c() __asm__("sub_0225FB6C");
undefined4 ov93_0225EDB8();
undefined4 ov93_02260F3C();
undefined4 PlaySE();
undefined4 ov93_0225EA6C();
undefined4 ov93_0225EB70();
undefined4 func_0x0225f44c() __asm__("sub_0225F44C");
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov93_02260F14();
undefined4 func_0x0225f370() __asm__("sub_0225F370");
undefined4 ov93_0225EB38();
undefined4 ov93_0225EA98();
extern ushort uRam021d116e __asm__("sub_021D116E");
extern ushort uRam021d116c __asm__("sub_021D116C");
extern ushort uRam021d1172 __asm__("sub_021D1172");
extern ushort uRam021d1170 __asm__("sub_021D1170");
undefined4 ov93_0225EAE0();

void ov93_0225E898(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined1 auStack_28 [16];
  undefined4 uStack_18;
  
  *(undefined4 *)(param_2 + 0x244) = 0;
  if (*(int *)(param_1 + 0x20) == 2) {
    *(undefined4 *)(param_2 + 0x20c) = *(undefined4 *)(param_1 + 0x1758);
    *(undefined4 *)(param_2 + 0x210) = *(undefined4 *)(param_1 + 0x175c);
    *(undefined4 *)(param_2 + 0x214) = *(undefined4 *)(param_1 + 0x1760);
    *(undefined4 *)(param_2 + 0x218) = *(undefined4 *)(param_1 + 0x1764);
  }
  else if ((*(int *)(param_1 + 0x2fb8) == 0) || (*(int *)(param_1 + 0x2fbc) == 1)) {
    *(undefined4 *)(param_2 + 0x20c) = 0;
    *(undefined4 *)(param_2 + 0x210) = 0;
    *(undefined4 *)(param_2 + 0x214) = 0;
    *(undefined4 *)(param_2 + 0x218) = 0;
  }
  else {
    *(uint *)(param_2 + 0x20c) = (uint)uRam021d116c;
    *(uint *)(param_2 + 0x210) = (uint)uRam021d116e;
    *(uint *)(param_2 + 0x214) = (uint)uRam021d1172;
    *(uint *)(param_2 + 0x218) = (uint)uRam021d1170;
  }
  uStack_18 = param_4;
  func_0x0225f370(param_2);
  if ((*(int *)(param_2 + 0x214) == 0) && (ov93_0225EB38(param_2), *(int *)(param_2 + 0x20) == 0)) {
    *(undefined1 *)(param_2 + 0x274) = 0;
  }
  func_0x0225f44c(param_2);
  ov93_0225EB70(param_2);
  func_0x0225fb6c(param_2,*(undefined4 *)(param_2 + 0x234));
  if (0 < *(short *)(param_2 + 0x268)) {
    *(short *)(param_2 + 0x268) = *(short *)(param_2 + 0x268) + 8;
    if (0x1e < *(short *)(param_2 + 0x268)) {
      *(undefined2 *)(param_2 + 0x268) = 0x1e;
    }
    ov93_0225EDFC(param_2);
  }
  if (((*(int *)(param_1 + 0x2fbc) == 0) && (*(int *)(param_1 + 0x2fb8) == 1)) &&
     (0 < *(int *)(param_2 + 0x244))) {
    iVar3 = 0;
    if (*(int *)(param_2 + 0x25c) < 800) {
      iVar1 = ov93_0225EDB8(param_2);
      if (iVar1 == 1) {
        *(undefined2 *)(param_2 + 0x268) = 8;
        *(undefined1 *)(param_2 + 0x275) = 0;
        PlaySE(0x58e);
      }
    }
    else {
      ov93_0225EDE8(param_2);
      *(undefined2 *)(param_2 + 0x268) = 0;
      iVar3 = 1;
    }
    iVar1 = ov93_0225EA6C(param_2,*(undefined4 *)(param_2 + 0x244));
    if (iVar3 == 1) {
      iVar2 = func_0x020f2998(iVar1 * 0x19,100);
      iVar1 = iVar1 + iVar2;
    }
    ov93_02260F14(param_1,*(undefined4 *)(param_1 + 0x2fc8),iVar1,auStack_28);
    ov93_02260F3C(param_1,auStack_28);
    ov93_0225FEC4(param_1,auStack_28);
    ov93_0225EA98(param_2,*(undefined4 *)(param_2 + 0x244));
    ov93_0225EAE0(param_1,param_2,*(undefined4 *)(param_2 + 0x244),iVar3);
    *(undefined4 *)(param_2 + 0x244) = 0;
  }
  return;
}

