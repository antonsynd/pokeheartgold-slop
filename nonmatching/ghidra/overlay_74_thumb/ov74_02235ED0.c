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
undefined4 func_0x020e389c() __asm__("sub_020E389C");
undefined4 Heap_Alloc();
undefined4 func_0x020a0598() __asm__("sub_020A0598");
undefined4 CRYPTO_RC4Encrypt();
undefined4 Heap_Free();
undefined4 func_0x020e3a04() __asm__("sub_020E3A04");
undefined4 func_0x020d3c40() __asm__("sub_020D3C40");

void ov74_02235ED0(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined2 uVar1;
  undefined4 uVar2;
  ushort uVar3;
  int iVar4;
  ushort *puVar5;
  ushort auStack_1c [4];
  
  uVar2 = Heap_Alloc(param_3,0x200);
  func_0x020e389c(uVar2,0xa001);
  uVar1 = func_0x020e3a04(uVar2,param_1,0x50);
  Heap_Free(uVar2);
  func_0x020d3c40(auStack_1c);
  iVar4 = 0;
  puVar5 = auStack_1c;
  auStack_1c[3] = auStack_1c[1];
  uVar3 = 0xd679;
  auStack_1c[1] = uVar1;
  do {
    iVar4 = iVar4 + 1;
    *puVar5 = *puVar5 ^ uVar3;
    uVar3 = *puVar5;
    puVar5 = puVar5 + 1;
  } while (iVar4 < 4);
  uVar2 = Heap_Alloc(param_3,0x104);
  func_0x020a0598(uVar2,auStack_1c,8);
  CRYPTO_RC4Encrypt(uVar2,param_1 + 0x50,0x358,param_2);
  Heap_Free(uVar2);
  return;
}

