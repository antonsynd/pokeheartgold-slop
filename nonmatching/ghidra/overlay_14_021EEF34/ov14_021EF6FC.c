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
typedef void code(void);
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
undefined4 ov14_021F34C8();
undefined4 sub_020199E4();
undefined4 func_0x02078068() __asm__("sub_02078068");
undefined4 PlaySE();
undefined4 GridInputHandler_SetButtonInputMode();
undefined4 ov14_021E6094();
undefined4 ov14_021E6070();
undefined4 ov14_021E64D0();
undefined4 ov14_021E7588();
undefined4 ov14_021F6730();
undefined4 ov14_021F2ED0();
undefined4 ov14_021E60C0();
undefined4 func_0x02019f7c() __asm__("sub_02019F7C");
undefined4 ov14_021F1F38();
undefined4 ov14_021F2A18();
undefined4 ov14_021F29E4();
undefined4 ov14_021F0234();
undefined4 ov14_021F391C();
undefined4 ov14_021F3844();
undefined4 ov14_021F39D0();

undefined4 ov14_021EF6FC(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  undefined2 uVar2;
  int iVar3;
  undefined4 uVar4;
  ushort *puVar5;

  puVar5 = *(ushort **)(*(int *)(param_1 + 0x34) + 0xc);
  iVar3 = sub_020199E4(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0),0x10,param_3,param_4,
                       param_4);
  if (iVar3 != 0) {
    return 0x85;
  }
  if (*puVar5 == (ushort)*(byte *)(param_1 + 0x21)) {
    uVar1 = puVar5[1];
    ov14_021F1F38(param_1);
    ov14_021F34C8(*(undefined4 *)(param_1 + 0x34),*(undefined1 *)(param_1 + 0x21),0);
    func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),*(undefined1 *)(param_1 + 0x21)
                   );
    iVar3 = func_0x02078068(*(undefined2 *)(*(int *)(param_1 + 0x34) + 0x88c8));
    if ((iVar3 == 1) && (uVar1 != *(byte *)(param_1 + 0x21))) {
      PlaySE(0x5f3);
      ov14_021F6730(param_1,0x25);
      *(undefined4 *)(param_1 + 0x30) = 0x87;
      return 6;
    }
    GridInputHandler_SetButtonInputMode(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),1);
    return 0x82;
  }
  ov14_021F34C8(*(undefined4 *)(param_1 + 0x34),*puVar5,0);
  ov14_021F34C8(*(undefined4 *)(param_1 + 0x34),*(undefined1 *)(param_1 + 0x21),1);
  uVar2 = ov14_021E6070(param_1,*puVar5,6,0);
  ov14_021E6094(param_1,*puVar5,6,*(int *)(param_1 + 0x34) + 0x88c8);
  ov14_021E60C0(param_1,*(undefined1 *)(param_1 + 0x1f),*puVar5);
  iVar3 = ov14_021E64D0();
  if (iVar3 == 1) {
    ov14_021F2ED0(param_1,*(undefined1 *)(param_1 + 0x1f),(uint)*puVar5,
                  *(undefined1 *)(*(int *)(param_1 + 0x34) + (uint)*puVar5 + 0x4094));
  }
  ov14_021E7588(param_1,*puVar5);
  func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),*puVar5 & 0xff);
  *(undefined2 *)(*(int *)(param_1 + 0x34) + 0x88c8) = uVar2;
  ov14_021E6094(param_1,*(undefined1 *)(param_1 + 0x21),6,*(int *)(param_1 + 0x34) + 0x88c8);
  ov14_021E60C0(param_1,*(undefined1 *)(param_1 + 0x1f),*(undefined1 *)(param_1 + 0x21));
  iVar3 = ov14_021E64D0();
  if (iVar3 == 1) {
    ov14_021F2ED0(param_1,*(undefined1 *)(param_1 + 0x1f),(uint)*(byte *)(param_1 + 0x21),
                  *(undefined1 *)
                   (*(int *)(param_1 + 0x34) + (uint)*(byte *)(param_1 + 0x21) + 0x4094));
  }
  if (*(short *)(*(int *)(param_1 + 0x34) + 0x88c8) == 0) {
    *(char *)(param_1 + 0x21) = (char)*puVar5;
    ov14_021F1F38(param_1);
    GridInputHandler_SetButtonInputMode(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),1);
    return 0x82;
  }
  ov14_021F3844();
  ov14_021F391C(*(undefined4 *)(param_1 + 0x34),1);
  ov14_021F29E4(*(undefined4 *)(param_1 + 0x34),0xb,1);
  ov14_021F2A18(*(undefined4 *)(param_1 + 0x34),0xb,1);
  ov14_021F39D0(*(undefined4 *)(param_1 + 0x34));
  PlaySE(0x5eb);
  uVar4 = ov14_021F0234(param_1,0x21ea929,0x86);
  return uVar4;
}

