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
typedef void code(void);
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
undefined4 func_0x0200df98(undefined4, undefined4) __asm__("sub_0200DF98");
undefined4 ov07_0221FA04(undefined4, undefined4);
undefined4 ov07_0221FAA0(undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 func_0x0200dd54(undefined4, undefined4) __asm__("sub_0200DD54");
undefined4 ov07_02222590(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221FAE8(undefined4);
undefined4 ov07_0221C470(undefined4);
undefined4 ov07_0221C4E8(undefined4, undefined4);
undefined4 ov07_02231FE4(undefined4, undefined4);
undefined4 func_0x0200dd68(undefined4, undefined4) __asm__("sub_0200DD68");

void ov07_0222AEA0(undefined4 param_1)

{
  undefined2 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  iVar2 = ov07_022324D8(param_1,0x84);
  ov07_02231FE4(param_1,iVar2);
  uVar3 = ov07_0221C470(*(undefined4 *)(iVar2 + 4));
  uVar3 = ov07_0221FA48(*(undefined4 *)(iVar2 + 4),uVar3);
  *(undefined4 *)(iVar2 + 0x24) = uVar3;
  uVar1 = Pokepic_GetAttr(uVar3,1);
  *(undefined2 *)(iVar2 + 0x58) = uVar1;
  *(undefined2 *)(iVar2 + 0x5c) = *(undefined2 *)(iVar2 + 0x58);
  uVar3 = ov07_0221C470(*(undefined4 *)(iVar2 + 4));
  uVar1 = ov07_0221FAA0(*(undefined4 *)(iVar2 + 4),uVar3);
  *(undefined2 *)(iVar2 + 0x5a) = uVar1;
  uVar3 = ov07_0221C4E8(param_1,0);
  *(undefined4 *)(iVar2 + 0x28) = uVar3;
  uVar3 = ov07_0221C4E8(param_1,1);
  *(undefined4 *)(iVar2 + 0x3c) = uVar3;
  uVar3 = ov07_0221C4E8(param_1,2);
  *(undefined4 *)(iVar2 + 0x50) = uVar3;
  func_0x0200df98(*(undefined4 *)(iVar2 + 0x28),2);
  uVar3 = ov07_0221FAE8(param_1);
  func_0x0200dd54(*(undefined4 *)(iVar2 + 0x28),uVar3);
  uVar3 = ov07_0221FAE8(param_1);
  func_0x0200dd54(*(undefined4 *)(iVar2 + 0x3c),uVar3);
  uVar3 = ov07_0221FAE8(param_1);
  func_0x0200dd54(*(undefined4 *)(iVar2 + 0x50),uVar3);
  uVar3 = ov07_0221C470(*(undefined4 *)(iVar2 + 4));
  iVar4 = ov07_0221FA04(*(undefined4 *)(iVar2 + 4),uVar3);
  if (iVar4 - 3U < 2) {
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x28),0x1e);
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x3c),0x32);
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x50),0x46);
  }
  else {
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x28),0x3c);
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x3c),0x46);
    func_0x0200dd68(*(undefined4 *)(iVar2 + 0x50),0x32);
  }
  ov07_02222590(iVar2 + 0x60,100,0x14,100,0x14,100,10);
  ov07_0221C410(*(undefined4 *)(iVar2 + 4),0x222ae15,iVar2);
  return;
}

