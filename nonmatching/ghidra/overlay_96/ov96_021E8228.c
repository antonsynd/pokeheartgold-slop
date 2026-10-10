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
undefined4 GF_AssertFail(void);
undefined4 ov96_021E8340();
undefined4 ov96_021E5F24(void *);
unsigned char PokeathlonCourse_GetParticipantCount(void *);

void ov96_021E8228(undefined *param_1,uint param_2,uint param_3,int param_4,uint param_5)

{
  byte bVar1;
  uint uVar2;
  int iVar3;

  if (param_4 == 0) {
    uVar2 = ov96_021E5F24(param_1);
    if (param_2 != uVar2) {
      GF_AssertFail();
    }
    if (param_5 != 1) {
      GF_AssertFail();
    }
    if (*(uint *)(param_1 + 0x8b0) < 9999) {
      *(uint *)(param_1 + 0x8b0) = *(uint *)(param_1 + 0x8b0) + 1;
      return;
    }
  }
  else {
    if (2 < param_3) {
      GF_AssertFail();
    }
    if (*(int *)(*(int *)(param_1 + 0x1e0) + 0x10) == 0) {
      iVar3 = ov96_021E5F24(param_1);
      if (iVar3 != 0) {
        GF_AssertFail();
      }
      ov96_021E8340(param_4,param_5 & 0xff,param_1 + param_3 * 0x20 + param_2 * 0x60 + 0x72c);
      return;
    }
    iVar3 = ov96_021E5F24(param_1);
    if (iVar3 == 0) {
      bVar1 = PokeathlonCourse_GetParticipantCount(param_1);
      if (bVar1 <= param_2) {
        ov96_021E8340(param_4,param_5 & 0xff,param_1 + param_3 * 0x20 + param_2 * 0x60 + 0x72c);
        return;
      }
      uVar2 = ov96_021E5F24(param_1);
      if (param_2 != uVar2) {
        GF_AssertFail();
      }
      ov96_021E8340(param_4,param_5 & 0xff,param_1 + param_3 * 0x20 + 0xb44);
      return;
    }
    uVar2 = ov96_021E5F24(param_1);
    if (param_2 != uVar2) {
      GF_AssertFail();
    }
    ov96_021E8340(param_4,param_5 & 0xff,param_1 + param_3 * 0x20 + 0xb44);
  }
  return;
}

