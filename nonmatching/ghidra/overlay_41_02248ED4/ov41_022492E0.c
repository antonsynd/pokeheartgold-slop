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
undefined4 ov41_02249BAC();
undefined4 ov41_02249B94();
undefined4 ov41_022482B8();
undefined4 ov41_022495A4();
extern ushort uRam021d116e __asm__("sub_021D116E");
extern ushort uRam021d116c __asm__("sub_021D116C");

void ov41_022492E0(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  iVar1 = *param_1;
  if ((*(int *)(iVar1 + 0x10) != 0) && (uRam021d116c != 0xffff)) {
    uStack_18 = param_4;
    ov41_02249BAC(*(int *)(iVar1 + 0x10),&iStack_24,&iStack_2c,&iStack_28,&iStack_30);
    ov41_02249B94(*(undefined4 *)(iVar1 + 0x10),&iStack_1c,&iStack_20);
    iVar2 = (uint)uRam021d116c - *(int *)(iVar1 + 0x14);
    iVar3 = (uint)uRam021d116e - *(int *)(iVar1 + 0x18);
    iStack_1c = iStack_1c - iStack_2c;
    iStack_20 = iStack_20 - iStack_30;
    if (iVar2 + iStack_24 < 0x8b) {
      iVar2 = 0x8a - iStack_24;
    }
    else if (0xf5 < iVar2 + iStack_1c) {
      iVar2 = 0xf6 - iStack_1c;
    }
    if (iVar3 + iStack_28 < 0x13) {
      iVar3 = 0x12 - iStack_28;
    }
    else if (0x8e < iVar3 + iStack_20) {
      iVar3 = 0x8f - iStack_20;
    }
    ov41_022495A4(param_1,iVar2,iVar3);
    ov41_022482B8(*(undefined4 *)(iVar1 + 4),&iStack_24,&iStack_28);
    ov41_022495A4(param_1,iVar2 + iStack_24,iVar3 + iStack_28);
  }
  return;
}

