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
undefined4 ov07_022227A8(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x0200e0fc(undefined4, undefined4) __asm__("sub_0200E0FC");
undefined4 func_0x0200df98(undefined4, undefined4) __asm__("sub_0200DF98");
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_0221C4E8(undefined4, undefined4);
undefined4 ov07_0221FA48(undefined4, undefined4);
undefined4 func_0x0200dd68(undefined4, undefined4) __asm__("sub_0200DD68");
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 func_0x0200dd54(undefined4, undefined4) __asm__("sub_0200DD54");
undefined4 ov07_02222590(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Heap_Alloc(undefined4, undefined4);
undefined4 ov07_02231E08(undefined4, undefined4, undefined4);
undefined4 ov07_0221C470(undefined4);
undefined4 ov07_0221C514(undefined4);
undefined4 ov07_0221BFD0(void);

void ov07_0222C780(undefined4 param_1)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;

  uVar2 = ov07_0221BFD0();
  puVar3 = (undefined4 *)Heap_Alloc(uVar2,0x68);
  *puVar3 = param_1;
  uVar2 = ov07_0221C514(param_1);
  puVar3[1] = uVar2;
  puVar3[2] = 0;
  puVar3[3] = 0;
  uVar2 = ov07_0221C470(*puVar3);
  uVar2 = ov07_0221FA48(*puVar3,uVar2);
  puVar3[0x17] = uVar2;
  uVar1 = Pokepic_GetAttr(uVar2,0);
  *(undefined2 *)(puVar3 + 0x18) = uVar1;
  uVar1 = Pokepic_GetAttr(puVar3[0x17],1);
  *(undefined2 *)((int)puVar3 + 0x62) = uVar1;
  uVar1 = Pokepic_GetAttr(puVar3[0x17],0x29);
  *(undefined2 *)((int)puVar3 + 0x66) = uVar1;
  ov07_022227A8(puVar3 + 4,2,0,1,6);
  uVar2 = ov07_0221C4E8(*puVar3,0);
  puVar3[0x16] = uVar2;
  func_0x0200e0fc(uVar2,1);
  func_0x0200df98(puVar3[0x16],2);
  func_0x0200dd68(puVar3[0x16],100);
  func_0x0200dd54(puVar3[0x16],1);
  ov07_02222590(puVar3 + 0xd,10,0xc,10,0xf,10,7);
  *(undefined2 *)(puVar3 + 0x19) = 1;
  ov07_02231E08(*puVar3,0x1c,0xf);
  ov07_0221C410(*puVar3,0x222c6a9,puVar3);
  return;
}

