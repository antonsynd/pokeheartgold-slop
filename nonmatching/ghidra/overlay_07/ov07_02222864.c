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
undefined4 ManagedSprite_SetDrawFlag(undefined4, undefined4);

void ov07_02222864(undefined2 *param_1,undefined4 *param_2,undefined4 param_3,undefined2 param_4,
                  undefined2 param_5,undefined2 param_6,byte param_7,undefined1 param_8,
                  undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined2 *puVar6;
  int iVar7;

  *param_1 = param_4;
  iVar7 = 0;
  param_1[1] = param_5;
  *(undefined4 *)(param_1 + 0x4a) = param_3;
  param_1[0x54] = param_6;
  param_1[0x55] = 0;
  *(byte *)(param_1 + 0x56) = param_7;
  *(undefined1 *)((int)param_1 + 0xad) = 0;
  *(undefined1 *)(param_1 + 0x57) = param_8;
  puVar6 = param_1;
  if (param_7 != 0) {
    do {
      puVar4 = (undefined4 *)(puVar6 + 2);
      iVar3 = 4;
      puVar5 = param_2;
      do {
        uVar1 = *puVar5;
        uVar2 = puVar5[1];
        puVar5 = puVar5 + 2;
        *puVar4 = uVar1;
        puVar4[1] = uVar2;
        puVar4 = puVar4 + 2;
        iVar3 = iVar3 + -1;
      } while (iVar3 != 0);
      iVar7 = iVar7 + 1;
      *puVar4 = *puVar5;
      puVar6 = puVar6 + 0x12;
    } while (iVar7 < (int)(uint)param_7);
  }
  *(undefined4 *)(param_1 + 0x4c) = param_9;
  *(undefined4 *)(param_1 + 0x4e) = param_10;
  *(undefined4 *)(param_1 + 0x50) = param_11;
  *(undefined4 *)(param_1 + 0x52) = param_12;
  iVar7 = 0;
  puVar6 = param_1;
  if (*(char *)(param_1 + 0x56) != '\0') {
    do {
      ManagedSprite_SetDrawFlag(*(undefined4 *)(puVar6 + 0x4c),0);
      iVar7 = iVar7 + 1;
      puVar6 = puVar6 + 2;
    } while (iVar7 < (int)(uint)*(byte *)(param_1 + 0x56));
  }
  return;
}

