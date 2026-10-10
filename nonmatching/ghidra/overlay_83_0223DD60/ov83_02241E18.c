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
undefined4 GetMonData();
undefined4 GetMonNature();
undefined4 GetMoveMaxPP();
undefined4 ReleaseMonLock();
undefined4 GetMonGender();
undefined4 Party_GetMonByIndex();
undefined4 AcquireMonLock();
undefined4 ov83_02247768();
undefined4 Mon_GetBoxMon();

void ov83_02241E18(int param_1)

{
  undefined1 uVar1;
  byte bVar2;
  undefined2 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  uint uVar8;
  
  uVar4 = ov83_02247768(*(undefined1 *)(param_1 + 0x14),*(undefined1 *)(param_1 + 0xd));
  uVar4 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x7a4),uVar4);
  uVar5 = AcquireMonLock();
  *(undefined4 *)(param_1 + 0x804) = uVar4;
  uVar6 = Mon_GetBoxMon(uVar4);
  *(undefined4 *)(param_1 + 0x808) = uVar6;
  uVar3 = GetMonData(uVar4,5,0);
  *(undefined2 *)(param_1 + 0x80c) = uVar3;
  uVar1 = GetMonData(uVar4,0xa1,0);
  *(undefined1 *)(param_1 + 0x80f) = uVar1;
  uVar1 = GetMonData(uVar4,10,0);
  *(undefined1 *)(param_1 + 0x810) = uVar1;
  uVar1 = GetMonNature(uVar4);
  *(undefined1 *)(param_1 + 0x811) = uVar1;
  uVar3 = GetMonData(uVar4,6,0);
  *(undefined2 *)(param_1 + 0x812) = uVar3;
  uVar3 = GetMonData(uVar4,0xa3,0);
  *(undefined2 *)(param_1 + 0x818) = uVar3;
  uVar3 = GetMonData(uVar4,0xa4,0);
  *(undefined2 *)(param_1 + 0x81a) = uVar3;
  uVar3 = GetMonData(uVar4,0xa5,0);
  *(undefined2 *)(param_1 + 0x81c) = uVar3;
  uVar3 = GetMonData(uVar4,0xa8,0);
  *(undefined2 *)(param_1 + 0x81e) = uVar3;
  uVar3 = GetMonData(uVar4,0xa6,0);
  *(undefined2 *)(param_1 + 0x820) = uVar3;
  uVar3 = GetMonData(uVar4,0xa9,0);
  *(undefined2 *)(param_1 + 0x822) = uVar3;
  uVar3 = GetMonData(uVar4,0xa7,0);
  *(undefined2 *)(param_1 + 0x824) = uVar3;
  uVar1 = GetMonData(uVar4,0x70,0);
  *(undefined1 *)(param_1 + 0x826) = uVar1;
  uVar6 = GetMonData(uVar4,0,0);
  *(undefined4 *)(param_1 + 0x814) = uVar6;
  iVar7 = GetMonData(uVar4,0xb0,0);
  if (iVar7 == 1) {
    *(byte *)(param_1 + 0x80e) = *(byte *)(param_1 + 0x80e) & 0x7f;
  }
  else {
    *(byte *)(param_1 + 0x80e) = *(byte *)(param_1 + 0x80e) | 0x80;
  }
  bVar2 = GetMonGender(uVar4);
  uVar8 = 0;
  *(byte *)(param_1 + 0x80e) = bVar2 & 0x7f | *(byte *)(param_1 + 0x80e) & 0x80;
  do {
    iVar7 = param_1 + uVar8 * 2;
    uVar3 = GetMonData(uVar4,uVar8 + 0x36,0);
    *(undefined2 *)(iVar7 + 0x828) = uVar3;
    uVar1 = GetMonData(uVar4,uVar8 + 0x3a,0);
    *(undefined1 *)(param_1 + uVar8 + 0x830) = uVar1;
    uVar1 = GetMonData(uVar4,uVar8 + 0x3e,0);
    uVar1 = GetMoveMaxPP(*(undefined2 *)(iVar7 + 0x828),uVar1);
    *(undefined1 *)(param_1 + uVar8 + 0x834) = uVar1;
    uVar8 = uVar8 + 1 & 0xffff;
  } while (uVar8 < 4);
  ReleaseMonLock(uVar4,uVar5);
  return;
}

