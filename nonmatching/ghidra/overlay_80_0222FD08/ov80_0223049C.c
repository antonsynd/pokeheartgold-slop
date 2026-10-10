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
undefined4 sub_0205C048(unsigned char, unsigned char);
undefined4 sub_0203126C(void *, unsigned int, unsigned int, unsigned short);
undefined4 sub_02030AE8(void *);
undefined4 sub_02030AA4(unsigned int, unsigned int, unsigned char, void *);
undefined4 Party_GetCount(void *);
void * Save_Frontier_GetStatic(void *);
undefined4 GetMonData(void *, int, void *);
undefined4 sub_02030964(void *, int);
undefined4 sub_0205C01C(unsigned char, unsigned char);
void * Party_GetMonByIndex(void *, int);
undefined4 sub_02030978(void *, unsigned int, unsigned int, void *);
undefined4 func_0x02236dd4(int) __asm__("sub_02236DD4");
undefined4 sub_0205C268(unsigned int);
undefined4 sub_0205BFF0(unsigned char, unsigned char);
unsigned short FrontierSave_GetStat(void *, int, int);
undefined4 sub_02031108(void *, int, int, unsigned short);
undefined4 ov80_02236DF8(int, int);
undefined4 sub_0205C074(unsigned char, unsigned char);



void ov80_0223049C(undefined *param_1,int param_2)

{
  ushort uVar1;
  ushort uVar2;
  uint uVar3;
  undefined *puVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  undefined2 auStack_34 [4];
  undefined1 auStack_2c [4];
  uint auStack_28 [5];
  
  uVar3 = sub_02030AE8(*(undefined **)(param_1 + 0x4f8));
  puVar4 = Save_Frontier_GetStatic(*(undefined **)(param_1 + 0x4f8));
  func_0x02236dd4(param_1[4]);
  ov80_02236DF8((uint)(byte)param_1[4],1);
  auStack_2c[0] = param_1[5];
  sub_02030978(*(undefined **)(param_1 + 0x4f4),0,0,auStack_2c);
  auStack_2c[0] = param_1[4];
  sub_02030978(*(undefined **)(param_1 + 0x4f4),1,0,auStack_2c);
  sub_02030964(*(undefined **)(param_1 + 0x4f4),1);
  auStack_2c[0] = param_1[6];
  sub_02030978(*(undefined **)(param_1 + 0x4f4),2,0,auStack_2c);
  iVar5 = sub_0205C048(param_1[5],param_1[4]);
  uVar6 = sub_0205C048(param_1[5],param_1[4]);
  uVar6 = sub_0205C268(uVar6);
  sub_02031108(puVar4,iVar5,uVar6,*(ushort *)(param_1 + 8));
  iVar5 = sub_0205BFF0(param_1[5],param_1[4]);
  uVar6 = sub_0205BFF0(param_1[5],param_1[4]);
  uVar6 = sub_0205C268(uVar6);
  sub_02031108(puVar4,iVar5,uVar6,*(ushort *)(param_1 + 0xc));
  if (param_2 != 2) {
    iVar5 = sub_0205C01C(param_1[5],param_1[4]);
    uVar6 = sub_0205C01C(param_1[5],param_1[4]);
    uVar6 = sub_0205C268(uVar6);
    uVar1 = FrontierSave_GetStat(puVar4,iVar5,uVar6);
    uVar6 = sub_0205C01C(param_1[5],param_1[4]);
    uVar7 = sub_0205C01C(param_1[5],param_1[4]);
    uVar7 = sub_0205C268(uVar7);
    sub_0203126C(puVar4,uVar6,uVar7,*(ushort *)(param_1 + 0xc));
    iVar5 = sub_0205C01C(param_1[5],param_1[4]);
    uVar6 = sub_0205C01C(param_1[5],param_1[4]);
    uVar6 = sub_0205C268(uVar6);
    uVar2 = FrontierSave_GetStat(puVar4,iVar5,uVar6);
    if (*(ushort *)(param_1 + 0xc) == uVar1) {
      uVar6 = sub_0205C074(param_1[5],param_1[4]);
      uVar7 = sub_0205C074(param_1[5],param_1[4]);
      uVar7 = sub_0205C268(uVar7);
      sub_0203126C(puVar4,uVar6,uVar7,*(ushort *)(param_1 + 8));
    }
    else if (uVar1 < uVar2) {
      iVar5 = sub_0205C074(param_1[5],param_1[4]);
      uVar6 = sub_0205C074(param_1[5],param_1[4]);
      uVar6 = sub_0205C268(uVar6);
      sub_02031108(puVar4,iVar5,uVar6,*(ushort *)(param_1 + 8));
    }
    auStack_2c[0] = param_1[10];
    sub_02030AA4(uVar3,10,param_1[4] + param_1[5] * '\x04',auStack_2c);
    if (param_1[4] == '\x03') {
      if (param_1[5] == '\0') {
        uVar3 = 0x66;
      }
      else {
        uVar3 = 0x68;
      }
      uVar6 = sub_0205C268(uVar3);
      sub_02031108(puVar4,uVar3,uVar6,(ushort)(byte)param_1[10]);
    }
  }
  uVar3 = 0;
  do {
    auStack_34[0] = *(undefined2 *)(param_1 + uVar3 * 2 + 0x18);
    sub_02030978(*(undefined **)(param_1 + 0x4f4),3,uVar3 & 0xff,(undefined *)auStack_34);
    uVar3 = uVar3 + 1 & 0xffff;
  } while (uVar3 < 0xe);
  uVar3 = Party_GetCount(*(undefined **)(param_1 + 0x4d4));
  uVar6 = 0;
  if (uVar3 != 0) {
    do {
      puVar4 = Party_GetMonByIndex(*(undefined **)(param_1 + 0x4d4),uVar6);
      auStack_34[0] = *(undefined2 *)(param_1 + uVar6 * 2 + 0x4e8);
      sub_02030978(*(undefined **)(param_1 + 0x4f4),4,uVar6 & 0xff,(undefined *)auStack_34);
      uVar7 = GetMonData(puVar4,0x47,(undefined *)0x0);
      auStack_2c[0] = (undefined1)uVar7;
      sub_02030978(*(undefined **)(param_1 + 0x4f4),5,uVar6 & 0xff,auStack_2c);
      auStack_28[0] = GetMonData(puVar4,0,(undefined *)0x0);
      sub_02030978(*(undefined **)(param_1 + 0x4f4),6,uVar6 & 0xff,(undefined *)auStack_28);
      uVar6 = uVar6 + 1 & 0xffff;
    } while (uVar6 < uVar3);
  }
  uVar3 = Party_GetCount(*(undefined **)(param_1 + 0x4d8));
  uVar6 = 0;
  if (uVar3 != 0) {
    do {
      puVar4 = Party_GetMonByIndex(*(undefined **)(param_1 + 0x4d8),uVar6);
      auStack_34[0] = *(undefined2 *)(param_1 + uVar6 * 2 + 0x3d2);
      sub_02030978(*(undefined **)(param_1 + 0x4f4),7,uVar6 & 0xff,(undefined *)auStack_34);
      uVar7 = GetMonData(puVar4,0x47,(undefined *)0x0);
      auStack_2c[0] = (undefined1)uVar7;
      sub_02030978(*(undefined **)(param_1 + 0x4f4),8,uVar6 & 0xff,auStack_2c);
      auStack_28[0] = GetMonData(puVar4,0,(undefined *)0x0);
      sub_02030978(*(undefined **)(param_1 + 0x4f4),9,uVar6 & 0xff,(undefined *)auStack_28);
      uVar6 = uVar6 + 1 & 0xffff;
    } while (uVar6 < uVar3);
  }
  return;
}

