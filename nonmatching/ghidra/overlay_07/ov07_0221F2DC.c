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
undefined4 ov07_0221F8C8(undefined4, undefined4);
undefined4 func_0x020e5b44(undefined4, undefined4, undefined4) __asm__("sub_020E5B44");
undefined4 ov07_0221C53C(void);
undefined4 ov07_0221C56C(undefined4, undefined4);

void ov07_0221F2DC(int param_1)

{
  undefined1 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  puVar1 = (undefined1 *)ov07_0221C53C();
  func_0x020e5b44(puVar1,0,0x3c);
  *puVar1 = 4;
  puVar2 = (undefined4 *)(*(int *)(param_1 + 0x18) + 4);
  *(undefined4 **)(param_1 + 0x18) = puVar2;
  *(short *)(puVar1 + 0x1a) = (short)*puVar2;
  puVar2 = (undefined4 *)(*(int *)(param_1 + 0x18) + 4);
  *(undefined4 **)(param_1 + 0x18) = puVar2;
  *(int *)(puVar1 + 0x14) = (int)(char)*puVar2;
  puVar2 = (undefined4 *)(*(int *)(param_1 + 0x18) + 4);
  *(undefined4 **)(param_1 + 0x18) = puVar2;
  puVar1[3] = (char)*puVar2;
  puVar2 = (undefined4 *)(*(int *)(param_1 + 0x18) + 4);
  *(undefined4 **)(param_1 + 0x18) = puVar2;
  puVar1[0x18] = (char)*puVar2;
  *(int *)(param_1 + 0x18) = *(int *)(param_1 + 0x18) + 4;
  puVar1[4] = puVar1[3];
  uVar3 = ov07_0221F8C8(param_1,(int)(char)*(undefined4 *)(puVar1 + 0x14));
  *(undefined4 *)(puVar1 + 0x14) = uVar3;
  ov07_0221C56C(param_1,puVar1);
  return;
}

