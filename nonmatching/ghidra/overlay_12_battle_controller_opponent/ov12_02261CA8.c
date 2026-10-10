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
undefined4 ov12_0223BB88(undefined4, undefined4);
undefined4 ov12_0223C1F4(undefined4, undefined4);
undefined4 ov12_0223C1C4(undefined4, undefined4);

void ov12_02261CA8(undefined4 param_1,int param_2,undefined4 *param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int iStack_24;
  undefined4 *puStack_20;
  int iStack_1c;

  *param_3 = param_4;
  param_3[1] = param_4;
  iVar2 = 0;
  puVar3 = param_3;
  iStack_24 = param_2;
  puStack_20 = param_3;
  iStack_1c = param_2;
  do {
    uVar1 = ov12_0223BB88(param_1,iVar2);
    puVar3[2] = uVar1;
    *(undefined2 *)(puStack_20 + 10) = *(undefined2 *)(iStack_1c + 0x18);
    *(undefined1 *)((int)param_3 + iVar2 + 0x30) = *(undefined1 *)(param_2 + iVar2 + 0x20);
    *(undefined1 *)((int)param_3 + iVar2 + 0x34) = *(undefined1 *)(param_2 + iVar2 + 0x24);
    *(undefined1 *)((int)param_3 + iVar2 + 0x38) = *(undefined1 *)(param_2 + iVar2 + 0x28);
    iVar2 = iVar2 + 1;
    puVar3[0xf] = *(undefined4 *)(iStack_24 + 0x2c);
    puVar3 = puVar3 + 1;
    iStack_1c = iStack_1c + 2;
    puStack_20 = (undefined4 *)((int)puStack_20 + 2);
    iStack_24 = iStack_24 + 4;
  } while (iVar2 < 4);
  ov12_0223C1C4(param_1,param_3 + 0x13);
  ov12_0223C1F4(param_1,param_3 + 6);
  return;
}

