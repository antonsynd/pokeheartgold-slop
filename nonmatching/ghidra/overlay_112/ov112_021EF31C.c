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
undefined4 SaveArray_Party_Get();
undefined4 Party_GetMonByIndex();
undefined4 MonIsShiny();
undefined4 GetMonData();
undefined4 GetBoxMonData();
undefined4 CopyU16StringArrayN();
undefined4 func_0x02074058() __asm__("sub_02074058");
undefined4 func_0x020270d8() __asm__("sub_020270D8");
undefined4 ov112_021EF1F0();

void ov112_021EF31C(int param_1,int param_2)

{
  undefined1 uVar1;
  undefined2 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined2 auStack_40 [5];
  undefined1 uStack_36;
  undefined1 uStack_30;
  undefined1 uStack_2e;
  undefined1 auStack_28 [24];

  if (*(int *)(param_1 + 0x14) == 0) {
    iVar4 = *(int *)(param_1 + 0xc);
    if (iVar4 == 0x12) {
      uVar3 = SaveArray_Party_Get();
      uVar3 = Party_GetMonByIndex(uVar3,*(undefined4 *)(param_1 + 0x10));
      uVar2 = GetMonData(uVar3,5,0);
      *(undefined2 *)(param_1 + 0x18) = uVar2;
      uVar1 = GetMonData(uVar3,0x70,0);
      *(undefined1 *)(param_1 + 0x30) = uVar1;
      GetMonData(uVar3,0x75,param_1 + 0x1a);
      uVar1 = MonIsShiny(uVar3);
      *(undefined1 *)(param_1 + 0x31) = uVar1;
      uVar1 = GetMonData(uVar3,0x6f,0);
      *(undefined1 *)(param_1 + 0x32) = uVar1;
      *(undefined4 *)(param_2 + 0x1e42c) = uVar3;
      *(undefined4 *)(param_2 + 0x1e430) = 0;
      return;
    }
    uVar3 = func_0x020270d8(*(undefined4 *)(param_2 + 0x20));
    uVar3 = func_0x02074058(uVar3,iVar4,*(undefined4 *)(param_1 + 0x10));
    iVar4 = GetBoxMonData(uVar3,0xac,0);
    if (iVar4 != 0) {
      *(undefined4 *)(param_2 + 0x1e430) = uVar3;
      *(undefined4 *)(param_2 + 0x1e42c) = 0;
    }
    uVar3 = func_0x020270d8(*(undefined4 *)(param_2 + 0x20));
    ov112_021EF1F0(uVar3,*(undefined4 *)(param_1 + 0xc),*(undefined4 *)(param_1 + 0x10),auStack_40);
    *(undefined2 *)(param_1 + 0x18) = auStack_40[0];
    *(undefined1 *)(param_1 + 0x30) = uStack_36;
    CopyU16StringArrayN(param_1 + 0x1a,auStack_28,0xb);
    *(undefined1 *)(param_1 + 0x31) = uStack_30;
    *(undefined1 *)(param_1 + 0x32) = uStack_2e;
  }
  return;
}

