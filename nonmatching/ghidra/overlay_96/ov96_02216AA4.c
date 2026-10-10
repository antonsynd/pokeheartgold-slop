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
undefined4 ov96_0221996C();
undefined4 ov96_021E8A20();
undefined4 PokeathlonCourse_GetDataCopyArea();
undefined4 ov96_021E5F24();
undefined4 ov96_02216934();
undefined4 ov96_02216770();
undefined4 PokeathlonCourse_GetParticipantCount();
undefined4 ov96_02216A54();

void ov96_02216AA4(byte *param_1,int param_2,undefined4 param_3,undefined4 param_4,uint param_5)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  bool bVar4;
  bool bVar5;
  undefined4 uStack_20;
  ushort uStack_1c;
  ushort uStack_1a;
  undefined4 uStack_18;

  uStack_18 = param_4;
  iVar2 = PokeathlonCourse_GetDataCopyArea(param_4);
  uStack_1c = (ushort)*param_1;
  uStack_1a = (ushort)param_1[1];
  uVar3 = PokeathlonCourse_GetParticipantCount(param_4);
  if (param_5 < uVar3) {
    uStack_20 = ov96_021E8A20(iVar2);
  }
  else {
    uStack_20 = ov96_021E8A20(iVar2 + 0x50 + param_5 * 0x28);
  }
  iVar2 = ov96_021E5F24(param_4);
  if ((iVar2 != 0) || (param_5 < uVar3)) {
    bVar1 = 0;
  }
  else {
    bVar1 = 1;
  }
  uVar3 = ov96_021E5F24(param_4);
  bVar4 = param_5 == uVar3;
  bVar5 = (param_1[5] & 0x7f) >> 5 != (*(uint *)(param_2 + 0xe4) & 0x3fff) >> 0xc;
  if (bVar5) {
    *(uint *)(param_2 + 0xe4) = *(uint *)(param_2 + 0xe4) & 0xfffff0ff;
    *(uint *)(param_2 + 0xe4) =
         ((param_1[5] & 0x7f) >> 5) << 0xc | *(uint *)(param_2 + 0xe4) & 0xffffcfff;
  }
  uVar3 = (*(uint *)(param_2 + 0xe4) & 0x3fff) >> 0xc;
  if (uVar3 == 0) {
    if (bVar5) {
      ov96_02216A54(param_2,&uStack_1c,uStack_20,bVar1 | bVar4,bVar4);
      ov96_0221996C(param_3,param_5,param_1[4] >> 6,0);
    }
    return;
  }
  if (uVar3 == 1) {
    if (bVar5) {
      ov96_0221996C(param_3,param_5,param_1[4] >> 6,1);
    }
    ov96_02216770(param_2,&uStack_1c,param_3,param_5,uStack_20,bVar1,bVar4);
    return;
  }
  if (uVar3 == 2) {
    ov96_02216934(param_2,&uStack_1c,param_3,param_5,uStack_20,bVar1 | bVar4,bVar4);
    return;
  }
  return;
}

