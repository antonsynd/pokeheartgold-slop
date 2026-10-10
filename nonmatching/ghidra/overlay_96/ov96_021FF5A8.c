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
undefined4 ov96_021FF0BC();
undefined4 ov96_021FF1E0();
undefined4 ov96_021FF574();
undefined4 ov96_021FF2A0();

int ov96_021FF5A8(undefined4 param_1,uint param_2,undefined4 param_3,undefined4 *param_4,
                 undefined4 param_5,undefined4 *param_6)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined4 *puVar4;
  uint uStack_1e4;
  int iStack_1e0;
  byte bStack_1dc;
  byte abStack_1db [3];
  undefined4 uStack_1d8;
  undefined4 uStack_1d4;
  undefined1 auStack_1cc [100];
  undefined1 auStack_168 [100];
  undefined4 auStack_104 [30];
  undefined4 auStack_8c [30];
  
  ov96_021FF0BC(param_1,*param_4,auStack_8c,auStack_104,abStack_1db,&bStack_1dc);
  iVar3 = 0;
  iStack_1e0 = 0;
  if (bStack_1dc != 0) {
    puVar4 = auStack_104;
    do {
      ov96_021FF1E0(param_3,*puVar4,auStack_168);
      iVar1 = ov96_021FF574(param_4,auStack_168);
      if (iVar1 != 0) {
        iStack_1e0 = 1;
        break;
      }
      iVar3 = iVar3 + 1;
      puVar4 = puVar4 + 1;
    } while (iVar3 < (int)(uint)bStack_1dc);
  }
  iVar3 = 0;
  uStack_1e4 = 0;
  if (abStack_1db[0] != 0) {
    puVar4 = auStack_8c;
    do {
      ov96_021FF1E0(param_3,*puVar4,auStack_1cc);
      uVar2 = ov96_021FF2A0(param_4,param_5,param_3,auStack_1cc,&uStack_1d8);
      if (uVar2 != 0) {
        if ((int)uVar2 < 10) {
          if (uVar2 != param_2) {
            *param_6 = uStack_1d8;
            param_6[1] = uStack_1d4;
            param_6[2] = 0;
          }
        }
        else {
          *param_6 = uStack_1d8;
          param_6[1] = uStack_1d4;
          param_6[2] = 0;
        }
        uStack_1e4 = uVar2 & 0xff;
        break;
      }
      iVar3 = iVar3 + 1;
      puVar4 = puVar4 + 1;
    } while (iVar3 < (int)(uint)abStack_1db[0]);
  }
  return iStack_1e0 * 0x100 + uStack_1e4;
}

