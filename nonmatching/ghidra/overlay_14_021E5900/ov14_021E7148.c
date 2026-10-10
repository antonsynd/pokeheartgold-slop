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
undefined4 ov14_021F3190();

void ov14_021E7148(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  int iVar2;
  undefined1 *puVar3;
  undefined1 *puVar4;
  undefined1 auStack_20 [8];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  puVar3 = auStack_20;
  puVar4 = auStack_20;
  uVar1 = 0;
  iVar2 = param_2;
  do {
    if (*(int *)(iVar2 + 0xc) != 0) {
      *puVar3 = *(undefined1 *)(*(int *)(param_1 + 0x34) + *(int *)(iVar2 + 4) + 0x4094);
    }
    uVar1 = uVar1 + 1;
    iVar2 = iVar2 + 0x20;
    puVar3 = puVar3 + 1;
  } while (uVar1 < 7);
  uVar1 = 0;
  do {
    if (*(int *)(param_2 + 0xc) != 0) {
      if ((*(uint *)(param_2 + 8) & 0x80) == 0) {
        *(undefined1 *)(*(int *)(param_1 + 0x34) + *(uint *)(param_2 + 8) + 0x4094) = *puVar4;
        ov14_021F3190(*(undefined4 *)(param_1 + 0x34),*(undefined4 *)(param_2 + 8),1);
      }
      else {
        if (0x1d < *(uint *)(param_2 + 4)) {
          *(undefined1 *)(*(int *)(param_1 + 0x34) + 0x40b7) = *puVar4;
        }
        ov14_021F3190(*(undefined4 *)(param_1 + 0x34),*(undefined4 *)(param_2 + 4),1);
      }
    }
    uVar1 = uVar1 + 1;
    param_2 = param_2 + 0x20;
    puVar4 = puVar4 + 1;
  } while (uVar1 < 7);
  return;
}

