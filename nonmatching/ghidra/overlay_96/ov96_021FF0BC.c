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
undefined4 _dfix();
undefined4 _dflt();
undefined4 _dadd();
undefined4 _dsub();











void ov96_021FF0BC(int param_1,int param_2,undefined4 *param_3,undefined4 *param_4,byte *param_5,
                  byte *param_6)

{
  uint uVar1;
  byte bVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  bool bVar12;
  bool bVar13;
  byte in_Q;
  ulonglong uVar14;

  iVar3 = 0;
  iVar11 = 0;
  puVar7 = param_3;
  puVar8 = param_4;
  do {
    *puVar7 = 0;
    puVar7 = puVar7 + 1;
    iVar3 = iVar3 + 1;
    *puVar8 = 0;
    puVar8 = puVar8 + 1;
  } while (iVar3 < 0x1e);
  *param_5 = 0;
  *param_6 = 0;
  iVar10 = param_1 + 0x45c;
  iVar3 = param_1;
  do {
    if (*(int *)(param_1 + 0x4d4) == 0) {
      return;
    }
    uVar4 = *(uint *)(iVar3 + 0x45c) & 0xff;
    iVar9 = ((int)(param_2 + ((uint)(param_2 >> 0xb) >> 0x14)) >> 0xc) -
            (uint)*(ushort *)(param_1 + 0x4dc);
    uVar14 = _dflt(iVar9);
    uVar6 = (uint)(uVar14 >> 0x20);
    if ((uVar6 * 2 < 0xffe00000) || ((uVar6 * 2 == 0xffe00000 && ((int)uVar14 == 0)))) {
      if ((int)(uVar6 | 0x40880000) < 0) {
        uVar1 = (uint)in_Q;
        in_Q = (uVar1 << 0x1b & 0x8000000) != 0;
        bVar12 = true;
        if (((uVar1 << 0x1b & 0x40000000) == 0) &&
           (bVar12 = uVar6 < 0x40880001, uVar6 == 0x40880000)) {
          bVar12 = (int)uVar14 == 0;
        }
      }
      else {
        bVar12 = 0x4087ffff < uVar6;
      }
    }
    else {
      in_Q = (in_Q & 1) != 0;
      bVar12 = false;
    }
    if (bVar12) {
      _dflt(iVar9);
      _dsub(CONCAT44(param_4,param_3),CONCAT44(uVar4,iVar3));
      _dadd(CONCAT44(param_4,param_3),CONCAT44(uVar4,iVar3));
      iVar9 = _dfix(CONCAT44(param_4,param_3));
    }
    else {
      uVar14 = _dflt(iVar9);
      uVar6 = (uint)(uVar14 >> 0x20);
      iVar5 = (int)uVar14;
      if ((uVar6 * 2 < 0xffe00000) || ((uVar6 * 2 == 0xffe00000 && (iVar5 == 0)))) {
        if ((int)(uVar6 | 0xc0880000) < 0) {
          if (iVar5 == 0 && ((uVar6 | 0xc0880000) & 0x7fffffff) == 0) {
            in_Q = (in_Q & 1) != 0;
            bVar13 = false;
            bVar12 = true;
          }
          else {
            bVar13 = uVar6 < 0xc0880001;
            if (uVar6 == 0xc0880000) {
              bVar13 = iVar5 == 0;
            }
            bVar12 = uVar14 == 0xc088000000000000;
          }
        }
        else {
          bVar13 = 0xc087ffff < uVar6;
          bVar12 = uVar14 == 0xc088000000000000;
        }
      }
      else {
        in_Q = (in_Q & 1) != 0;
        bVar13 = true;
        bVar12 = false;
      }
      if (bVar13 && !bVar12) {
        iVar9 = 0x50 - iVar9;
      }
      else {
        _dflt(iVar9);
        _dadd(CONCAT44(param_4,param_3),CONCAT44(uVar4,iVar3));
        _dsub(CONCAT44(param_4,param_3),CONCAT44(uVar4,iVar3));
        iVar9 = _dfix(CONCAT44(param_4,param_3));
      }
    }
    if ((-0x21 < iVar9) && (iVar9 < 0x121)) {
      if (uVar4 == 3) {
        bVar2 = *param_6;
        *param_6 = bVar2 + 1;
        param_4[bVar2] = iVar10;
      }
      else {
        bVar2 = *param_5;
        *param_5 = bVar2 + 1;
        param_3[bVar2] = iVar10;
      }
    }
    iVar11 = iVar11 + 1;
    iVar3 = iVar3 + 4;
    param_1 = param_1 + 0xc;
    iVar10 = iVar10 + 4;
  } while (iVar11 < 0x1e);
  return;
}

