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
undefined4 func_0x020d4994(undefined4, undefined4, undefined4) __asm__("sub_020D4994");
undefined4 ov07_022325BC(undefined4);
undefined4 SysTask_CreateOnMainQueue(undefined4, undefined4, undefined4);
undefined4 ov07_02233F30(undefined4);
undefined4 SpriteManager_New(undefined4);
undefined4 ov07_0223441C(undefined4);
undefined4 Heap_Alloc(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_022342E4(undefined4);
undefined4 ov07_0221C69C(void);
undefined4 GF_AssertFail(void);
undefined4 LCRandom(void);

undefined4 *
ov07_02233DB8(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 *puVar6;

  puVar2 = (undefined4 *)Heap_Alloc(param_1[1],0xe0,param_3,param_4,param_4);
  func_0x020d4994(puVar2,0,0xe0);
  if (puVar2 == (undefined4 *)0x0) {
    GF_AssertFail();
  }
  puVar6 = puVar2 + 0x24;
  iVar5 = 5;
  do {
    uVar3 = *param_1;
    uVar4 = param_1[1];
    param_1 = param_1 + 2;
    *puVar6 = uVar3;
    puVar6[1] = uVar4;
    puVar6 = puVar6 + 2;
    iVar5 = iVar5 + -1;
  } while (iVar5 != 0);
  puVar2[2] = 0;
  puVar2[4] = 0;
  puVar2[3] = 0;
  puVar2[5] = 0;
  puVar2[6] = 0;
  *puVar2 = 0;
  puVar2[1] = 0;
  uVar3 = SpriteManager_New(puVar2[0x2b]);
  puVar2[0xb] = uVar3;
  puVar2[0x37] = 0;
  uVar3 = ov07_022325BC(puVar2[0x24]);
  puVar2[9] = uVar3;
  puVar2[0x31] = 0;
  *(undefined1 *)(puVar2 + 8) = 0x10;
  *(undefined1 *)((int)puVar2 + 0x21) = 0;
  ov07_0221C69C();
  iVar5 = LCRandom();
  uVar1 = iVar5 >> 0x1f;
  if ((iVar5 * -0x80000000 + uVar1 >> 0x1f | uVar1 << 1) == uVar1) {
    *(undefined1 *)((int)puVar2 + 0x22) = 0xff;
  }
  else {
    *(undefined1 *)((int)puVar2 + 0x22) = 1;
  }
  ov07_022342E4(puVar2);
  ov07_0223441C(puVar2);
  ov07_02233F30(puVar2);
  puVar2[7] = 1;
  puVar2[10] = 0;
  uVar3 = SysTask_CreateOnMainQueue(0x2233d61,puVar2,1000);
  puVar2[0x33] = uVar3;
  return puVar2;
}

