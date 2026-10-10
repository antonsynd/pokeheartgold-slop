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
undefined4 PlaySE();
undefined4 ov49_022593BC();
undefined4 func_0x0223089c() __asm__("sub_0223089C");
undefined4 func_0x0223093c() __asm__("sub_0223093C");
undefined4 ov49_0225932C();
undefined4 ov49_02259320();
undefined4 func_0x02230968() __asm__("sub_02230968");
undefined4 func_0x02230908() __asm__("sub_02230908");
undefined4 func_0x022308e4() __asm__("sub_022308E4");

void ov49_0225967C(int param_1)

{
  int iVar1;
  undefined1 auStack_18 [4];
  undefined4 uStack_14;

  switch(*(undefined2 *)(param_1 + 8)) {
  case 0:
    func_0x0223089c(*(undefined4 *)(param_1 + 4),0);
    func_0x0223093c(*(undefined4 *)(param_1 + 4),0);
    ov49_02259320(param_1 + 0xc,0x1f4000,0,0x18);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(short *)(param_1 + 8) = *(short *)(param_1 + 8) + 1;
    PlaySE(0x64e);
  case 1:
    iVar1 = ov49_0225932C(param_1 + 0xc,*(undefined4 *)(param_1 + 0x1c));
    *(int *)(param_1 + 0x1c) = *(int *)(param_1 + 0x1c) + 1;
    func_0x02230908(*(undefined4 *)(param_1 + 4),auStack_18);
    uStack_14 = ov49_022593BC(param_1 + 0xc);
    func_0x022308e4(*(undefined4 *)(param_1 + 4),auStack_18);
    if (iVar1 == 1) {
      *(undefined4 *)(param_1 + 0x1c) = 0x20;
      *(short *)(param_1 + 8) = *(short *)(param_1 + 8) + 1;
      return;
    }
    break;
  case 2:
    iVar1 = *(int *)(param_1 + 0x1c) + -1;
    *(int *)(param_1 + 0x1c) = iVar1;
    if (iVar1 == 0) {
      *(short *)(param_1 + 8) = *(short *)(param_1 + 8) + 1;
      func_0x02230968(*(undefined4 *)(param_1 + 4));
      func_0x0223089c(*(undefined4 *)(param_1 + 4),1);
      *(undefined1 *)(param_1 + 10) = 1;
    }
  }
  return;
}

