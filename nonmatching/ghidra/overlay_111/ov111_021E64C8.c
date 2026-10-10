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
undefined4 Mon_GetBoxMon();
undefined4 ov111_021E6A2C();
undefined4 ov111_021E6934();
undefined4 GetMonData();
undefined4 BufferBoxMonSpeciesName();
undefined4 ov111_021E5D2C();
undefined4 GF_AssertFail();
undefined4 ov111_021E696C();
undefined4 GetMonGender();
undefined4 ov111_021E69A0();

void ov111_021E64C8(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  uint uVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uStack_20;

  uVar1 = ov111_021E6A2C(param_2);
  uVar6 = *param_1;
  if (param_1 == (undefined4 *)0x0) {
    GF_AssertFail();
  }
  if (param_2 == 0) {
    GF_AssertFail();
  }
  uVar2 = GetMonData(uVar6,0xa3,0);
  uVar3 = GetMonData(uVar6,0xa4,0);
  uVar4 = Mon_GetBoxMon(uVar6);
  BufferBoxMonSpeciesName(uVar1,0,uVar4);
  ov111_021E6934(param_2,param_1 + 3,4,4,1);
  uVar1 = 0x70800;
  iVar5 = GetMonGender(uVar6);
  if (iVar5 == 0) {
    uStack_20 = 5;
  }
  else if (iVar5 == 1) {
    uStack_20 = 6;
    uVar1 = 0x30400;
  }
  else if (iVar5 == 2) {
    uStack_20 = 7;
  }
  else {
    GF_AssertFail();
  }
  ov111_021E696C(param_2,param_1 + 7,uStack_20,0,1,uVar1);
  uVar1 = GetMonData(uVar6,0xa1,0);
  ov111_021E69A0(param_2,param_1 + 0xb,uVar1,3,1,1);
  ov111_021E69A0(param_2,param_1 + 0xf,uVar2,3,0,0);
  ov111_021E69A0(param_2,param_1 + 0x13,uVar3,3,1,0);
  ov111_021E5D2C(param_1 + 0x17,uVar2 & 0xffff,uVar3 & 0xffff);
  return;
}

