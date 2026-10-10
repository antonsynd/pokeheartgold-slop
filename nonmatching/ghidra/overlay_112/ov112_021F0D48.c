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
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");

void ov112_021F0D48(undefined2 *param_1)

{
  char *pcVar1;
  byte *pbVar2;
  byte bVar3;
  char cVar4;
  uint uVar5;
  char *pcVar6;
  uint uVar7;
  char cVar8;
  undefined4 *puVar9;
  undefined2 *puVar10;
  uint uVar11;
  byte *pbStack_20;
  int iStack_1c;

  uVar11 = 0;
  pbStack_20 = (byte *)0x21ff2cc;
  puVar9 = (undefined4 *)0x21ff244;
  iStack_1c = 0;
  puVar10 = param_1;
  do {
    *puVar10 = (short)uVar11;
    bVar3 = *pbStack_20;
    cVar8 = '\0';
    uVar5 = 0;
    *(byte *)(puVar10 + 1) = bVar3;
    pcVar6 = (char *)*puVar9;
    uVar7 = (uint)(bVar3 >> 1);
    if (uVar7 != 0) {
      do {
        cVar4 = *pcVar6;
        uVar5 = uVar5 + 1;
        pcVar1 = pcVar6 + 1;
        pcVar6 = pcVar6 + 2;
        cVar8 = cVar8 + cVar4 + *pcVar1;
      } while (uVar5 < uVar7);
    }
    *(char *)((int)puVar10 + 3) = cVar8;
    func_0x020d4a50(*puVar9,(int)param_1 + uVar11 + 0x40,*(undefined1 *)(puVar10 + 1));
    pbVar2 = (byte *)(puVar10 + 1);
    puVar10 = puVar10 + 2;
    puVar9 = puVar9 + 1;
    uVar11 = uVar11 + *pbVar2 & 0xffff;
    pbStack_20 = pbStack_20 + 1;
    iStack_1c = iStack_1c + 1;
  } while (iStack_1c < 0x10);
  return;
}

