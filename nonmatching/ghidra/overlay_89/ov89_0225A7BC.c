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
undefined4 func_0x020181b0() __asm__("sub_020181B0");
undefined4 func_0x020182a0() __asm__("sub_020182A0");
undefined4 GF_AssertFail();
undefined4 func_0x020182c4() __asm__("sub_020182C4");
undefined4 ov89_0225AC68();
undefined4 func_0x020182a8() __asm__("sub_020182A8");
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov89_0225A878();
undefined4 Heap_Alloc();

undefined4 *
ov89_0225A7BC(undefined4 param_1,undefined4 param_2,undefined4 *param_3,undefined4 param_4,
             undefined4 param_5,undefined4 param_6)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  puVar1 = (undefined4 *)Heap_Alloc(0x7d,0x244);
  func_0x020d4994(puVar1,0,0x244);
  puVar1[0x90] = puVar1[0x90] & 0xffffff | 0xff000000;
  uVar3 = param_3[1];
  *puVar1 = *param_3;
  puVar1[1] = uVar3;
  puVar1[2] = param_3[2];
  if (0x1ed < *(ushort *)((int)puVar1 + 2)) {
    GF_AssertFail();
    *(undefined2 *)((int)puVar1 + 2) = 0x84;
  }
  iVar2 = ov89_0225A878(param_2,puVar1 + 3,param_4,param_5,puVar1,param_6);
  if (iVar2 == 0) {
    return (undefined4 *)0x0;
  }
  func_0x020181b0(puVar1 + 7,puVar1 + 3);
  ov89_0225AC68(param_1,*(undefined1 *)((int)param_3 + 9),*(undefined1 *)((int)param_3 + 10),
                &uStack_1c,&uStack_20);
  func_0x020182a8(puVar1 + 7,uStack_1c,uStack_20,0x10000);
  func_0x020182c4(puVar1 + 7,0x1000,0x1000,0x1000);
  func_0x020182a0(puVar1 + 7,0);
  return puVar1;
}

