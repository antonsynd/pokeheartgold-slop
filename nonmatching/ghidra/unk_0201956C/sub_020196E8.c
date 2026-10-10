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
undefined4 CopyToBgTilemapRect(void *, unsigned char, unsigned char, unsigned char, unsigned char, unsigned char, void *, unsigned char, unsigned char, unsigned char, unsigned char);
extern undefined UNK_020f6298 __asm__("sub_020F6298");



void sub_020196E8(undefined *param_1,int param_2,int param_3,int param_4)

{
  char cVar1;
  char cVar2;
  byte bVar3;
  byte bVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  undefined4 *puVar10;
  byte bVar11;
  int iVar12;
  byte bVar13;
  int iVar14;
  byte bStack_20;
  byte bStack_1c;
  
  puVar10 = (undefined4 *)(*(int *)(param_1 + 4) + param_2 * 0x10);
  *(byte *)((int)puVar10 + 6) = (byte)param_3;
  *(byte *)((int)puVar10 + 7) = (byte)param_4;
  cVar1 = *(char *)((int)puVar10 + 0xd);
  if ((param_3 < cVar1) && (cVar2 = *(char *)((int)puVar10 + 0xf), param_4 < cVar2)) {
    uVar7 = *(ushort *)(puVar10 + 1) & 0x3f;
    iVar14 = param_3 + uVar7;
    iVar8 = (int)(char)*(byte *)(puVar10 + 3);
    if (iVar8 <= iVar14) {
      uVar5 = (*(ushort *)(puVar10 + 1) & 0xfff) >> 6;
      iVar12 = param_4 + uVar5;
      iVar9 = (int)(char)*(byte *)((int)puVar10 + 0xe);
      if (iVar9 <= iVar12) {
        bStack_20 = 0;
        uVar6 = uVar7;
        bStack_1c = (byte)param_3;
        if (param_3 < iVar8) {
          bStack_20 = (byte)(iVar8 - param_3);
          uVar6 = uVar7 - (iVar8 - param_3) & 0xff;
          bStack_1c = *(byte *)(puVar10 + 3);
        }
        bVar4 = (byte)uVar6;
        if (cVar1 <= iVar14) {
          bVar4 = bVar4 - ((char)iVar14 - cVar1);
        }
        bVar11 = 0;
        uVar6 = uVar5;
        bVar13 = (byte)param_4;
        if (param_4 < iVar9) {
          uVar6 = uVar5 - (iVar9 - param_4) & 0xff;
          bVar11 = (byte)(iVar9 - param_4);
          bVar13 = *(byte *)((int)puVar10 + 0xe);
        }
        bVar3 = (byte)uVar6;
        if (cVar2 <= iVar12) {
          bVar3 = bVar3 - ((char)iVar12 - cVar2);
        }
        CopyToBgTilemapRect(*(undefined **)param_1,*(byte *)((int)puVar10 + 10),bStack_1c,bVar13,
                            bVar4,bVar3,(undefined *)*puVar10,bStack_20,bVar11,(byte)uVar7,
                            (byte)uVar5);
        (**(code **)(&UNK_020f6298 + (*(ushort *)(param_1 + 10) & 0x7fff) * 4))
                  (*(undefined4 *)param_1,*(undefined1 *)((int)puVar10 + 10));
        *(ushort *)(puVar10 + 1) = *(ushort *)(puVar10 + 1) & 0xefff;
      }
    }
  }
  return;
}

