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
undefined4 ov40_0222FA5C();
undefined4 ov40_0222F740();
undefined4 ov40_0222F734();
undefined4 ov40_0222F858();
undefined4 NewString_ReadMsgData();
undefined4 ov40_0222EB9C();
undefined4 ov40_02230964();
extern undefined ov40_02245418;
extern undefined ov40_02245444;

void ov40_02238F00(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;

  iVar5 = *(int *)(param_1 + 0x860);
  if (*(int *)(iVar5 + 0x1c) == 0) {
    puVar4 = (undefined4 *)&ov40_02245418;
    puVar3 = (undefined4 *)(iVar5 + 0xb0c);
    iVar6 = 5;
    do {
      uVar1 = *puVar4;
      uVar2 = puVar4[1];
      puVar4 = puVar4 + 2;
      *puVar3 = uVar1;
      puVar3[1] = uVar2;
      puVar3 = puVar3 + 2;
      iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    *puVar3 = *puVar4;
    *(undefined4 *)(iVar5 + 0x748) = 0;
  }
  else {
    puVar4 = (undefined4 *)&ov40_02245444;
    puVar3 = (undefined4 *)(iVar5 + 0xb0c);
    iVar6 = 5;
    do {
      uVar1 = *puVar4;
      uVar2 = puVar4[1];
      puVar4 = puVar4 + 2;
      *puVar3 = uVar1;
      puVar3[1] = uVar2;
      puVar3 = puVar3 + 2;
      iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    *puVar3 = *puVar4;
    uVar1 = NewString_ReadMsgData
                      (*(undefined4 *)(param_1 + 0x4c),
                       *(byte *)(*(int *)(iVar5 + 0x714) + *(int *)(iVar5 + 0xc) * 0x1c8) + 0x5e);
    *(undefined4 *)(iVar5 + 0x748) = uVar1;
  }
  *(undefined4 *)(iVar5 + 0xb10) = *(undefined4 *)(iVar5 + 0x20);
  *(int *)(iVar5 + 0xb0c) = iVar5 + 0x74c + *(int *)(iVar5 + 0xc) * 0x140;
  ov40_02230964(param_1,1);
  ov40_0222F734(param_1 + 0x49c);
  ov40_0222EB9C(param_1 + 0x49c,param_1,*(undefined4 *)(iVar5 + 0x744),iVar5 + 0xb0c,
                *(undefined4 *)(iVar5 + 0xc),*(undefined4 *)(iVar5 + 0x14),
                *(undefined4 *)(iVar5 + 0x748),param_4);
  ov40_0222FA5C(param_1 + 0x47c,param_1 + 0x49c);
  ov40_0222F740(param_1 + 0x49c,param_1,1);
  ov40_0222F858(param_1 + 0x49c,0x70,0xb8);
  ov40_02230964(param_1,0);
  return;
}

