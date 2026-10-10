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
undefined4 GF_AssertFail();
undefined4 sub_020379A0();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 sub_02033FC4();
undefined4 Heap_Alloc();
undefined4 sub_02034044();
undefined4 sub_0203993C();
extern int iRam021d4148 __asm__("sub_021D4148");
extern undefined4 uRam021d4144 __asm__("sub_021D4144");
extern undefined1 uRam021d4141 __asm__("sub_021D4141");
undefined4 sub_02035DA4();
undefined4 sub_02033F44();
undefined4 sub_0203778C();
undefined4 SysTask_CreateOnVBlankQueue();

undefined4 sub_02035900(int param_1,int param_2)

{
  bool bVar1;
  undefined2 uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  
  bVar1 = false;
  uRam021d4141 = 0;
  if (param_1 == 0) {
    bVar1 = true;
    if (iRam021d4148 == 0) {
      GF_AssertFail();
    }
  }
  else {
    uVar2 = sub_0203993C();
    iVar3 = sub_02033FC4(uVar2);
    if (iRam021d4148 != 0) {
      return 1;
    }
    sub_020379A0(0xf);
    uRam021d4144 = Heap_Alloc(0xf,0x6e0);
    iRam021d4148 = (0x20 - (uRam021d4144 & 0x1f)) + uRam021d4144;
    func_0x020d4994(iRam021d4148,0,0x6c0);
    sub_0203993C();
    iVar5 = sub_02034044();
    if (iVar5 == 0) {
      *(int *)(iRam021d4148 + 0x690) = param_2 + 0x40;
    }
    else {
      *(int *)(iRam021d4148 + 0x690) = param_2 * 2 + 0x40;
    }
    *(int *)(iRam021d4148 + 0x68c) = (iVar3 + 1) * *(int *)(iRam021d4148 + 0x690);
    *(undefined1 *)(iRam021d4148 + 0x6ad) = 0;
    *(undefined1 *)(iRam021d4148 + 0x6ae) = 0x2a;
    uVar4 = Heap_Alloc(0xf,*(int *)(iRam021d4148 + 0x690) << 1);
    *(undefined4 *)(iRam021d4148 + 0x490) = uVar4;
    uVar4 = Heap_Alloc(0xf,*(undefined4 *)(iRam021d4148 + 0x690));
    *(undefined4 *)(iRam021d4148 + 0x494) = uVar4;
    uVar4 = Heap_Alloc(0xf,*(undefined4 *)(iRam021d4148 + 0x68c));
    *(undefined4 *)(iRam021d4148 + 0x48c) = uVar4;
    uVar4 = Heap_Alloc(0xf,*(undefined4 *)(iRam021d4148 + 0x68c));
    *(undefined4 *)(iRam021d4148 + 0x488) = uVar4;
    iVar3 = sub_0203993C();
    if (iVar3 == 10) {
      sub_02033F44(iRam021d4148 + 0x580,100,iRam021d4148 + 0x498);
      sub_02033F44(iRam021d4148 + 0x5a0,800,iRam021d4148 + 0x510);
    }
    else {
      sub_02033F44(iRam021d4148 + 0x580,0x14,iRam021d4148 + 0x498);
      sub_02033F44(iRam021d4148 + 0x5a0,0x118,iRam021d4148 + 0x510);
    }
  }
  iVar3 = 0;
  *(undefined2 *)(iRam021d4148 + 0x694) = 0;
  do {
    iVar5 = iRam021d4148 + iVar3;
    iVar3 = iVar3 + 1;
    *(undefined1 *)(iVar5 + 0x6a6) = 0xff;
  } while (iVar3 < 4);
  if (!bVar1) {
    sub_02035DA4();
  }
  sub_0203778C(iRam021d4148 + 0x62c);
  if (!bVar1) {
    uVar4 = SysTask_CreateOnVBlankQueue(0x20360ed,0,0);
    *(undefined4 *)(iRam021d4148 + 0x57c) = uVar4;
  }
  *(undefined1 *)(iRam021d4148 + 0x6b6) = 0;
  return 1;
}

