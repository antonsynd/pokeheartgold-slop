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
undefined4 func_0x020b70a8() __asm__("sub_020B70A8");
undefined4 ov41_02249978();
undefined4 sub_02070848();
undefined4 func_0x02007a44() __asm__("sub_02007A44");
undefined4 sub_02070130();
undefined4 PokepicManager_CreatePokepic();
undefined4 Heap_Free();
undefined4 UnscanPokepic();
undefined4 ov41_022498E8();
undefined4 GetMonData();
undefined4 ov41_0224989C();
undefined4 ov41_022497A0();

void ov41_02249604(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined2 *param_4,
                  undefined4 param_5,int param_6)

{
  undefined1 uVar1;
  undefined1 uVar2;
  undefined4 uVar3;
  ushort *puStack_24;
  int iStack_20;
  int iStack_1c;
  undefined2 *puStack_18;

  puStack_18 = param_4;
  GetMonData(param_3,5,0);
  sub_02070130(param_4,param_3,2);
  uVar3 = PokepicManager_CreatePokepic(param_2,param_4,0xc0,0x38,0,0,0,0);
  *param_1 = uVar3;
  ov41_022497A0(param_1,&iStack_1c,&iStack_20);
  iStack_1c = iStack_1c / 2;
  iStack_20 = iStack_20 / 2;
  *(char *)(param_1 + 1) = '8' - (char)iStack_20;
  *(char *)((int)param_1 + 5) = (char)iStack_20 + '8';
  *(char *)((int)param_1 + 6) = -0x40 - (char)iStack_1c;
  *(char *)((int)param_1 + 7) = (char)iStack_1c + -0x40;
  ov41_02249978(param_1 + 1,0xc0,0x38,iStack_1c,iStack_20);
  uVar1 = sub_02070848(param_3,2);
  uVar3 = func_0x02007a44(*param_4,param_4[1],0,param_5,0);
  func_0x020b70a8(uVar3,&puStack_24);
  UnscanPokepic(*(undefined4 *)(puStack_24 + 10),*param_4);
  if (param_6 == 0) {
    ov41_022498E8(*(undefined4 *)(puStack_24 + 10),(uint)puStack_24[1] << 3,(uint)*puStack_24 << 3,
                  param_1 + 2);
  }
  else {
    uVar2 = ov41_0224989C(*(undefined4 *)(puStack_24 + 10),(uint)puStack_24[1] << 3);
    *(undefined1 *)(param_1 + 2) = uVar2;
    *(undefined1 *)((int)param_1 + 9) = *(undefined1 *)(param_1 + 2);
    *(undefined1 *)((int)param_1 + 0xb) = uVar1;
    *(undefined1 *)((int)param_1 + 10) = uVar1;
  }
  Heap_Free(uVar3);
  param_1[3] = param_3;
  return;
}

