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
undefined4 sub_0203772C();
undefined4 sub_02033FC4();
undefined4 sub_02033AF0();
undefined4 sub_02035FF0();
undefined4 sub_0203993C();
extern int iRam021d4148 __asm__("sub_021D4148");

void sub_020367B0(undefined4 param_1,byte *param_2)

{
  byte bVar1;
  undefined2 uVar2;
  int iVar3;
  int iVar4;
  ushort uVar5;
  uint uVar6;
  int iVar7;

  *(int *)(iRam021d4148 + 0x668) = *(int *)(iRam021d4148 + 0x668) + -1;
  if (param_2 != (byte *)0x0) {
    if (*param_2 == 0xb) {
      iVar3 = sub_02035FF0();
      if (iVar3 == 1) {
        return;
      }
      param_2 = param_2 + 1;
    }
    else {
      iVar3 = sub_02035FF0();
      if (iVar3 == 0) {
        return;
      }
    }
    if ((*(char *)(iRam021d4148 + 0x6b2) == '\0') || ((*param_2 & 1) == 0)) {
      *(undefined1 *)(iRam021d4148 + 0x6b2) = 0;
      iVar3 = sub_02035FF0();
      if (iVar3 == 1) {
        uVar2 = sub_0203993C();
        iVar3 = sub_0203772C(uVar2);
        uVar2 = sub_0203993C();
        iVar4 = sub_02033FC4(uVar2);
        uVar6 = 0;
        if (0 < iVar4 + 1) {
          iVar7 = 0;
          do {
            if (*param_2 == 0xff) {
              uVar5 = ~(ushort)(1 << (uVar6 & 0xff)) & *(ushort *)(iRam021d4148 + 0x694);
            }
            else {
              uVar5 = (ushort)(1 << (uVar6 & 0xff)) | *(ushort *)(iRam021d4148 + 0x694);
            }
            *(ushort *)(iRam021d4148 + 0x694) = uVar5;
            bVar1 = *param_2;
            if (bVar1 == 0xff) {
              param_2 = param_2 + iVar3;
            }
            else if (bVar1 == 0xe) {
              param_2 = param_2 + iVar3;
            }
            else if ((*(char *)(iRam021d4148 + uVar6 + 0x69e) == '\0') || ((bVar1 & 1) == 0)) {
              sub_02033AF0(iRam021d4148 + 0x51c + iVar7,param_2 + 1,iVar3 + -1,uVar6 + 0x54c);
              param_2 = param_2 + 1 + iVar3 + -1;
              *(undefined1 *)(iRam021d4148 + uVar6 + 0x69e) = 0;
            }
            else {
              param_2 = param_2 + iVar3;
            }
            uVar6 = uVar6 + 1;
            iVar7 = iVar7 + 0xc;
          } while ((int)uVar6 < iVar4 + 1);
          return;
        }
      }
      else {
        *(ushort *)(iRam021d4148 + 0x694) = (ushort)param_2[1];
        *(short *)(iRam021d4148 + 0x694) = *(short *)(iRam021d4148 + 0x694) << 8;
        *(ushort *)(iRam021d4148 + 0x694) = *(short *)(iRam021d4148 + 0x694) + (ushort)param_2[2];
        sub_02033AF0(iRam021d4148 + 0x4a4,param_2 + 4,param_2[3],0x560);
      }
    }
  }
  return;
}

