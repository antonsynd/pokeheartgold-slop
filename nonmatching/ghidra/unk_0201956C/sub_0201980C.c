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
undefined4 FillBgTilemapRect(void *, unsigned char, unsigned short, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char);
extern undefined UNK_020f6298 __asm__("sub_020F6298");



void sub_0201980C(undefined *param_1,int param_2)

{
  byte bVar1;
  int iVar2;
  byte bVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  byte bVar11;
  int iVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  byte bStack_20;
  
  iVar13 = *(int *)(param_1 + 4) + param_2 * 0x10;
  *(ushort *)(iVar13 + 4) = *(ushort *)(iVar13 + 4) | 0x1000;
  iVar14 = (int)*(char *)(iVar13 + 0xd);
  iVar2 = (int)(char)*(byte *)(iVar13 + 6);
  if (iVar2 < iVar14) {
    iVar4 = (int)*(char *)(iVar13 + 0xf);
    iVar12 = (int)(char)*(byte *)(iVar13 + 7);
    if (iVar12 < iVar4) {
      uVar5 = *(ushort *)(iVar13 + 4) & 0x3f;
      iVar15 = iVar2 + uVar5;
      iVar6 = (int)(char)*(byte *)(iVar13 + 0xc);
      if (iVar6 <= iVar15) {
        uVar7 = (*(ushort *)(iVar13 + 4) & 0xfff) >> 6;
        iVar10 = iVar12 + uVar7;
        iVar8 = (int)(char)*(byte *)(iVar13 + 0xe);
        if (iVar8 <= iVar10) {
          iVar9 = (int)(char)uVar5;
          bStack_20 = *(byte *)(iVar13 + 6);
          if (iVar2 < iVar6) {
            iVar9 = (iVar9 - (iVar6 - iVar2)) * 0x1000000 >> 0x18;
            bStack_20 = *(byte *)(iVar13 + 0xc);
          }
          bVar3 = (byte)iVar9;
          if (iVar14 <= iVar15) {
            bVar3 = (byte)((uint)((iVar9 - (iVar15 - iVar14)) * 0x1000000) >> 0x18);
          }
          iVar2 = (int)(char)uVar7;
          bVar11 = *(byte *)(iVar13 + 7);
          if (iVar12 < iVar8) {
            iVar2 = (iVar2 - (iVar8 - iVar12)) * 0x1000000 >> 0x18;
            bVar11 = *(byte *)(iVar13 + 0xe);
          }
          bVar1 = (byte)iVar2;
          if (iVar4 <= iVar10) {
            bVar1 = (byte)((uint)((iVar2 - (iVar10 - iVar4)) * 0x1000000) >> 0x18);
          }
          FillBgTilemapRect(*(undefined **)param_1,*(byte *)(iVar13 + 10),0,bStack_20,bVar11,bVar3,
                            bVar1,0x10);
          (**(code **)(&UNK_020f6298 + (*(ushort *)(param_1 + 10) & 0x7fff) * 4))
                    (*(undefined4 *)param_1,*(undefined1 *)(iVar13 + 10));
        }
      }
    }
  }
  return;
}

