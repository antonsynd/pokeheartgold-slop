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
undefined4 Pokewalker_TryGetBoxMon();
undefined4 sub_02032688();
undefined4 func_0x020270d8() __asm__("sub_020270D8");
undefined4 func_0x02073c6c() __asm__("sub_02073C6C");
undefined4 func_0x02073d9c() __asm__("sub_02073D9C");

void ov112_021EC134(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  ushort uStack_20;
  undefined1 auStack_1e [2];
  undefined4 uStack_1c;
  uint uStack_18;
  undefined4 uStack_14;
  
  uStack_18 = 0xffffffff;
  uStack_1c = 0;
  uStack_14 = param_4;
  uVar1 = func_0x020270d8(*(undefined4 *)(param_1 + 0x20));
  sub_02032688(*(undefined4 *)(param_1 + 0x1e440),auStack_1e,&uStack_20);
  iVar2 = Pokewalker_TryGetBoxMon(*(undefined4 *)(param_1 + 0x1e440),param_1 + 0x1f2e8);
  if (iVar2 != 0) {
    uStack_18 = (uint)uStack_20;
    func_0x02073d9c(uVar1,&uStack_18,&uStack_1c);
    func_0x02073c6c(uVar1,uStack_18,uStack_1c,param_1 + 0x1f2e8);
    *(short *)(param_1 + 0x1f370) = (short)uStack_18;
    return;
  }
  *(undefined2 *)(param_1 + 0x1f370) = 0xffff;
  return;
}

