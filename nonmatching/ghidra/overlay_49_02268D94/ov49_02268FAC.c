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
undefined4 ov49_0225E3B8();
undefined4 func_0x0222ad80() __asm__("sub_0222AD80");
undefined4 ov49_02259FE8();
undefined4 ov49_022589A8();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 Heap_Alloc();
undefined4 ov49_02259FF8();
undefined4 ov49_0225A000();
undefined4 ov49_022695C4();
undefined4 ov49_022589D8();
undefined4 ov49_02269178();

undefined4 *
ov49_02268FAC(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int iVar3;
  short *psVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined1 *puVar7;
  short sStack_1c;
  short sStack_1a;
  undefined4 uStack_18;

  uStack_18 = param_4;
  puVar1 = (undefined4 *)Heap_Alloc(param_2,0xc4);
  func_0x020e5b44(puVar1,0,0xc4);
  *puVar1 = param_1;
  uVar2 = ov49_02259FE8(param_1);
  puVar1[1] = uVar2;
  uVar2 = ov49_02259FF8(param_1);
  puVar1[2] = uVar2;
  uVar2 = ov49_0225A000(param_1);
  puVar1[3] = uVar2;
  iVar3 = ov49_022589A8();
  puVar1[0x2f] = iVar3 + 6;
  puVar1[0x30] = -8 - puVar1[0x2f];
  puVar7 = (undefined1 *)0x226a8c8;
  puVar1[0x2f] = puVar1[0x2f] << 0x10;
  iVar3 = 0;
  puVar1[0x30] = puVar1[0x30] << 0x10;
  puVar6 = puVar1;
  do {
    ov49_022589D8(puVar1[3],*puVar7,&sStack_1a,&sStack_1c,0);
    iVar3 = iVar3 + 1;
    puVar7 = puVar7 + 1;
    *(short *)((int)puVar6 + 0xaa) = sStack_1a << 4;
    psVar4 = (short *)(puVar6 + 0x2b);
    puVar6 = puVar6 + 1;
    *psVar4 = sStack_1c << 4;
  } while (iVar3 < 3);
  iVar3 = 0;
  do {
    ov49_0225E3B8(puVar1[2],iVar3,puVar1[0x2f]);
    iVar5 = func_0x0222ad80(puVar1[1],iVar3);
    if (iVar5 == 1) {
      ov49_02269178(puVar1,iVar3);
      ov49_022695C4(puVar1,iVar3);
    }
    iVar3 = iVar3 + 1;
  } while (iVar3 < 9);
  return puVar1;
}

