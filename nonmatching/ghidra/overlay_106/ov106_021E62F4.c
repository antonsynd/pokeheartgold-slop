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
undefined4 ov106_021E5D08();
undefined4 PlaySE();
undefined4 ov106_021E597C();
undefined4 ov106_021E601C();
undefined4 func_0x02006118() __asm__("sub_02006118");
undefined4 GF_SetVolumeBySeqNo();
undefined4 IsPaletteFadeFinished();
undefined4 ov106_021E6064();
undefined4 func_0x02006154() __asm__("sub_02006154");
undefined4 PlayCry();

undefined4 ov106_021E62F4(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  uint uVar3;
  
  iVar1 = ov106_021E5D08();
  if ((iVar1 == 0) && (iVar1 = IsPaletteFadeFinished(), iVar1 == 1)) {
    *(undefined4 *)(param_1 + 0x414) = 0;
    func_0x02006154(0x868);
    ov106_021E6064(*(undefined4 *)(param_1 + 4));
    return 1;
  }
  iVar1 = *(int *)(param_1 + 0x414);
  if (iVar1 == 0) {
    func_0x02006118(0x868,0);
  }
  else if (iVar1 == 0x73) {
    PlaySE(0x931);
  }
  else if (iVar1 == 0x91) {
    PlayCry(0xf9,0);
    uVar2 = ov106_021E601C(5,0xd);
    *(undefined4 *)(param_1 + 4) = uVar2;
  }
  else if (iVar1 == 0xe8) {
    ov106_021E597C(param_1,6,1,1);
  }
  uVar3 = *(uint *)(param_1 + 0x414);
  if (uVar3 != 0) {
    if (uVar3 == 10) {
      GF_SetVolumeBySeqNo(0x868,0x1e);
    }
    else if (uVar3 < 10) {
      GF_SetVolumeBySeqNo(0x868,uVar3 * 0x300 >> 8);
    }
  }
  *(int *)(param_1 + 0x414) = *(int *)(param_1 + 0x414) + 1;
  return 3;
}

