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
undefined4 ov96_021F77EC();
undefined4 ov96_021E8A20();
undefined4 GF_AssertFail();

uint ov96_021F7740(undefined4 param_1,int *param_2)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  uint uStack_1c;

  uStack_1c = 4;
  if (*(char *)((int)param_2 + 0x21) == '\x04') {
    return 0;
  }
  *(char *)((int)param_2 + 0x1e) = *(char *)((int)param_2 + 0x1e) + '\x01';
  uVar3 = (uint)*(byte *)(param_2 + 8);
  if (uVar3 < 4) {
    iVar2 = uVar3 * 0x28;
    do {
      puVar1 = (undefined4 *)ov96_021E8A20(param_2[1] + 0x50 + iVar2);
      uVar3 = uVar3 + 1;
      iVar2 = iVar2 + 0x28;
      *puVar1 = 0;
    } while ((int)uVar3 < 4);
  }
  if (*(byte *)((int)param_2 + 0x1f) <= *(byte *)((int)param_2 + 0x1e)) {
    *param_2 = 1;
    *(undefined1 *)((int)param_2 + 0x1e) = 0;
  }
  if (*param_2 != 0) {
    uStack_1c = (uint)*(byte *)(param_2 + 8) + (uint)*(byte *)((int)param_2 + 0x1d);
    if (uStack_1c < *(byte *)(param_2 + 8)) {
      GF_AssertFail();
    }
    if (uStack_1c < *(byte *)(param_2 + 8)) {
      return 4;
    }
    ov96_021F77EC(param_1,param_2,uStack_1c & 0xff);
    uStack_1c = uStack_1c & 0xff;
    *(char *)((int)param_2 + 0x1d) = *(char *)((int)param_2 + 0x1d) + '\x01';
    if (*(byte *)(param_2 + 7) <= *(byte *)((int)param_2 + 0x1d)) {
      *(undefined1 *)((int)param_2 + 0x1d) = 0;
      *param_2 = 0;
    }
  }
  return uStack_1c;
}

