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
undefined4 ov96_021E7F48();
undefined4 ov96_021E7F98(int, unsigned int, void *);
undefined4 ov96_021E5F24(void *);

void ov96_021E7D6C(undefined *param_1,int param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;

  uVar3 = ov96_021E5F24(param_1);
  if (*(int *)(*(int *)(param_1 + 0x1f8) + 4) == 1) {
    ov96_021E7F98(1,9999999,(undefined *)(param_2 + 0x38));
    if ((int)((uint)*(ushort *)(param_1 + 0x8fc) << 0x1f) < 0) {
      ov96_021E7F98(1,9999999,(undefined *)(param_2 + 0x3c));
      ov96_021E7F48(param_1);
    }
    else if ((int)((uint)*(ushort *)(param_1 + 0x8fc) << 0x1e) < 0) {
      ov96_021E7F98(1,9999999,(undefined *)(param_2 + 0x40));
    }
  }
  else {
    ov96_021E7F98(1,9999999,(undefined *)(param_2 + 4));
    if ((int)((uint)*(ushort *)(param_1 + 0x8fc) << 0x1f) < 0) {
      ov96_021E7F98(1,9999999,(undefined *)(param_2 + 8));
      ov96_021E7F48(param_1);
    }
    else if ((int)((uint)*(ushort *)(param_1 + 0x8fc) << 0x1e) < 0) {
      ov96_021E7F98(1,9999999,(undefined *)(param_2 + 0xc));
    }
  }
  uVar4 = 0;
  if (param_1[0x72a] != '\0') {
    do {
      if (param_1[uVar4 + 0x8f4] == '\0') {
        if (param_1[uVar4 + 0x8f8] != '\0') {
          ov96_021E7F98(1,9999999,(undefined *)(param_2 + 0x6c));
        }
      }
      else {
        ov96_021E7F98(1,9999999,
                      (undefined *)
                      (param_2 + 0x44 + (*(uint *)(param_1 + uVar4 * 4 + 0x3d8) & 0xff) * 4));
      }
      uVar4 = uVar4 + 1 & 0xff;
    } while (uVar4 < (byte)param_1[0x72a]);
  }
  iVar1 = (uVar3 & 0xff) * 0x60 + 0x72c;
  uVar3 = 0;
  do {
    iVar2 = uVar3 * 0x20 + iVar1;
    ov96_021E7F98(*(int *)(param_1 + uVar3 * 0x20 + iVar1),9999999,(undefined *)(param_2 + 0x18));
    ov96_021E7F98(*(int *)(param_1 + iVar2 + 4),9999999,(undefined *)(param_2 + 0x1c));
    ov96_021E7F98(*(int *)(param_1 + iVar2 + 8),9999999,(undefined *)(param_2 + 0x20));
    ov96_021E7F98(*(int *)(param_1 + iVar2 + 0xc),9999999,(undefined *)(param_2 + 0x24));
    ov96_021E7F98(*(int *)(param_1 + iVar2 + 0x10),9999999,(undefined *)(param_2 + 0x28));
    ov96_021E7F98(*(int *)(param_1 + iVar2 + 0x14),9999999,(undefined *)(param_2 + 0x2c));
    ov96_021E7F98(*(int *)(param_1 + iVar2 + 0x18),9999999,(undefined *)(param_2 + 0x30));
    ov96_021E7F98(*(int *)(param_1 + iVar2 + 0x1c),9999999,(undefined *)(param_2 + 0x34));
    uVar3 = uVar3 + 1 & 0xff;
  } while (uVar3 < 3);
  ov96_021E7F98(*(int *)(param_1 + 0x8ac),9999999,(undefined *)(param_2 + 0x10));
  ov96_021E7F98(*(int *)(param_1 + 0x8b0),9999999,(undefined *)(param_2 + 0x14));
  return;
}

