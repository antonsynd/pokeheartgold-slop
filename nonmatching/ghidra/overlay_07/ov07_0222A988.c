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
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 func_0x0200e0c0(undefined4, undefined4) __asm__("sub_0200E0C0");
undefined4 ov07_0221F9E8(undefined4, undefined4);
undefined4 func_0x0200ded0(undefined4, undefined4, undefined4) __asm__("sub_0200DED0");
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_02231FE4(undefined4, undefined4);
undefined4 SpriteSystem_NewSprite(undefined4, undefined4, undefined4);

void ov07_0222A988(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined1 auStack_48 [52];
  
  iVar3 = ov07_022324D8(param_1,0x38);
  *(undefined2 *)(iVar3 + 0x1c) = 10;
  ov07_02231FE4(param_1,iVar3);
  ov07_0221F9E8(auStack_48,*(undefined4 *)(iVar3 + 4));
  *(undefined4 *)(iVar3 + 0x28) = param_4;
  *(undefined2 *)(iVar3 + 0x1e) = 0;
  iVar5 = 1;
  iVar1 = iVar3;
  iVar2 = iVar3;
  do {
    *(undefined2 *)(iVar1 + 0x20) = 0;
    uVar4 = SpriteSystem_NewSprite
                      (*(undefined4 *)(iVar3 + 8),*(undefined4 *)(iVar3 + 0x10),auStack_48);
    *(undefined4 *)(iVar2 + 0x2c) = uVar4;
    iVar5 = iVar5 + 1;
    iVar1 = iVar1 + 2;
    iVar2 = iVar2 + 4;
  } while (iVar5 < 4);
  func_0x0200e0c0(*(undefined4 *)(iVar3 + 0x28),1);
  func_0x0200e0c0(*(undefined4 *)(iVar3 + 0x2c),1);
  func_0x0200ded0(*(undefined4 *)(iVar3 + 0x28),0xffffffe0,0);
  func_0x0200ded0(*(undefined4 *)(iVar3 + 0x2c),0xffffffe0,0x20);
  func_0x0200ded0(*(undefined4 *)(iVar3 + 0x30),0x20,0);
  func_0x0200ded0(*(undefined4 *)(iVar3 + 0x34),0x20,0x20);
  ov07_0221C410(*(undefined4 *)(iVar3 + 4),0x222a8ed,iVar3);
  return;
}

