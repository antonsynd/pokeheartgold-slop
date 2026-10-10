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
undefined4 Sprite_GetDrawFlag();

undefined4 sub_020947C0(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  
  if ((*(int *)(param_1 + param_2 * 0x34 + 0x198) != 0) &&
     (iVar1 = Sprite_GetDrawFlag(), iVar1 == 0)) {
    return 3;
  }
  if (*(short *)(param_1 + param_2 * 0x34 + 0x1a4) != 0) {
    return 3;
  }
  iVar1 = -1;
  iVar3 = 0;
  for (iVar2 = 0; (iVar1 == -1 && (iVar2 < (int)(uint)*(byte *)(param_1 + 0xd))); iVar2 = iVar2 + 1)
  {
    iVar5 = *(int *)(param_1 + 0x8d0) + iVar3;
    if (((uint)*(byte *)(param_1 + 0xf) == *(uint *)(iVar5 + 8)) && (param_2 == *(int *)(iVar5 + 4))
       ) {
      iVar1 = iVar2;
    }
    iVar3 = iVar3 + 0xc;
  }
  if (iVar1 == -1) {
    uVar4 = (uint)*(byte *)(param_1 + 0xd);
    if (*(byte *)(param_1 + 0xe) == uVar4) {
      return 0;
    }
    iVar1 = 0;
    if (uVar4 != 0) {
      iVar2 = *(int *)(param_1 + 0x8d0);
      do {
        if (*(int *)(iVar2 + 4) == -1) {
          return 1;
        }
        iVar1 = iVar1 + 1;
        iVar2 = iVar2 + 0xc;
      } while (iVar1 < (int)uVar4);
    }
  }
  return 2;
}

