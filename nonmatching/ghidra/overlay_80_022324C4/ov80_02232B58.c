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
undefined4 Save_Frontier_GetStatic();
undefined4 func_0x0205c240() __asm__("sub_0205C240");
undefined4 sub_0205C268();
undefined4 Party_GetCount();
undefined4 func_0x02031108() __asm__("sub_02031108");
undefined4 FrontierSave_GetStat();
undefined4 sub_0203126C();
undefined4 Party_GetMonByIndex();
undefined4 sub_02030CF4();
undefined4 func_0x02030e08() __asm__("sub_02030E08");
undefined4 func_0x0205c1f0() __asm__("sub_0205C1F0");
undefined4 sub_02030CE0();
undefined4 ov80_02237B58();
undefined4 func_0x0205c1c8() __asm__("sub_0205C1C8");
undefined4 sub_02030E18();
undefined4 func_0x0205c1a0() __asm__("sub_0205C1A0");

void ov80_02232B58(int param_1,int param_2)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  uint uVar7;
  undefined2 auStack_30 [4];
  undefined1 auStack_28 [4];
  undefined4 auStack_24 [4];
  
  uVar2 = func_0x02030e08(*(undefined4 *)(param_1 + 4));
  uVar3 = Save_Frontier_GetStatic(*(undefined4 *)(param_1 + 4));
  ov80_02237B58(*(undefined1 *)(param_1 + 0x10),1);
  auStack_28[0] = *(undefined1 *)(param_1 + 0x10);
  sub_02030CF4(*(undefined4 *)(param_1 + 8),0,0,0,auStack_28);
  sub_02030CE0(*(undefined4 *)(param_1 + 8),1);
  auStack_28[0] = *(undefined1 *)(param_1 + 0x11);
  sub_02030CF4(*(undefined4 *)(param_1 + 8),1,0,0,auStack_28);
  uVar4 = func_0x0205c1a0(*(undefined1 *)(param_1 + 0x10));
  func_0x0205c1a0(*(undefined1 *)(param_1 + 0x10));
  uVar5 = sub_0205C268();
  func_0x02031108(uVar3,uVar4,uVar5,*(undefined2 *)(param_1 + 0x14));
  if (param_2 != 2) {
    uVar4 = func_0x0205c1c8(*(undefined1 *)(param_1 + 0x10));
    func_0x0205c1c8(*(undefined1 *)(param_1 + 0x10));
    uVar5 = sub_0205C268();
    uVar6 = FrontierSave_GetStat(uVar3,uVar4,uVar5);
    uVar4 = func_0x0205c1c8(*(undefined1 *)(param_1 + 0x10));
    func_0x0205c1c8(*(undefined1 *)(param_1 + 0x10));
    uVar5 = sub_0205C268();
    sub_0203126C(uVar3,uVar4,uVar5,*(undefined2 *)(param_1 + 0x14));
    uVar4 = func_0x0205c1c8(*(undefined1 *)(param_1 + 0x10));
    func_0x0205c1c8(*(undefined1 *)(param_1 + 0x10));
    uVar5 = sub_0205C268();
    uVar7 = FrontierSave_GetStat(uVar3,uVar4,uVar5);
    uVar4 = func_0x0205c1f0(*(undefined1 *)(param_1 + 0x10));
    func_0x0205c1f0(*(undefined1 *)(param_1 + 0x10));
    uVar5 = sub_0205C268();
    uVar1 = FrontierSave_GetStat(uVar3,uVar4,uVar5);
    if (*(ushort *)(param_1 + 0x14) == uVar6) {
      uVar4 = func_0x0205c240(*(undefined1 *)(param_1 + 0x10));
      func_0x0205c240(*(undefined1 *)(param_1 + 0x10));
      uVar5 = sub_0205C268();
      sub_0203126C(uVar3,uVar4,uVar5,uVar1);
    }
    else if (uVar6 < uVar7) {
      uVar4 = func_0x0205c240(*(undefined1 *)(param_1 + 0x10));
      func_0x0205c240(*(undefined1 *)(param_1 + 0x10));
      uVar5 = sub_0205C268();
      func_0x02031108(uVar3,uVar4,uVar5,uVar1);
    }
    auStack_28[0] = *(undefined1 *)(param_1 + 0x27);
    sub_02030E18(uVar2,9,*(undefined1 *)(param_1 + 0x10),0,auStack_28);
    if (*(char *)(param_1 + 0x10) == '\x03') {
      uVar2 = sub_0205C268(0x6c);
      func_0x02031108(uVar3,0x6c,uVar2,*(undefined1 *)(param_1 + 0x27));
    }
  }
  uVar6 = 0;
  do {
    auStack_30[0] = *(undefined2 *)(param_1 + uVar6 * 2 + 0x30);
    sub_02030CF4(*(undefined4 *)(param_1 + 8),6,uVar6 & 0xff,0,auStack_30);
    uVar6 = uVar6 + 1 & 0xffff;
  } while (uVar6 < 0xe);
  uVar6 = 0;
  do {
    auStack_28[0] = *(undefined1 *)(param_1 + uVar6 + 0x24);
    sub_02030CF4(*(undefined4 *)(param_1 + 8),7,uVar6 & 0xff,0,auStack_28);
    uVar6 = uVar6 + 1 & 0xffff;
  } while (uVar6 < 3);
  uVar6 = Party_GetCount(*(undefined4 *)(param_1 + 0x28));
  uVar7 = 0;
  if (uVar6 != 0) {
    do {
      uVar2 = Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x28),uVar7);
      auStack_30[0] = GetMonData(uVar2,0xa3,0);
      sub_02030CF4(*(undefined4 *)(param_1 + 8),2,uVar7 & 0xff,0,auStack_30);
      auStack_28[0] = GetMonData(uVar2,0x3a,0);
      sub_02030CF4(*(undefined4 *)(param_1 + 8),3,uVar7 & 0xff,0,auStack_28);
      auStack_28[0] = GetMonData(uVar2,0x3b,0);
      sub_02030CF4(*(undefined4 *)(param_1 + 8),3,uVar7 & 0xff,1,auStack_28);
      auStack_28[0] = GetMonData(uVar2,0x3c,0);
      sub_02030CF4(*(undefined4 *)(param_1 + 8),3,uVar7 & 0xff,2,auStack_28);
      auStack_28[0] = GetMonData(uVar2,0x3d,0);
      sub_02030CF4(*(undefined4 *)(param_1 + 8),3,uVar7 & 0xff,3,auStack_28);
      auStack_24[0] = GetMonData(uVar2,0xa0,0);
      sub_02030CF4(*(undefined4 *)(param_1 + 8),4,uVar7 & 0xff,0,auStack_24);
      auStack_30[0] = GetMonData(uVar2,6,0);
      sub_02030CF4(*(undefined4 *)(param_1 + 8),5,uVar7 & 0xff,0,auStack_30);
      uVar7 = uVar7 + 1 & 0xffff;
    } while (uVar7 < uVar6);
  }
  uVar6 = Party_GetCount(*(undefined4 *)(param_1 + 0x2c));
  uVar7 = 0;
  if (uVar6 != 0) {
    do {
      Party_GetMonByIndex(*(undefined4 *)(param_1 + 0x2c),uVar7);
      auStack_30[0] = *(undefined2 *)(param_1 + uVar7 * 2 + 0x26c);
      sub_02030CF4(*(undefined4 *)(param_1 + 8),8,uVar7 & 0xff,0,auStack_30);
      uVar7 = uVar7 + 1 & 0xffff;
    } while (uVar7 < uVar6);
  }
  return;
}

