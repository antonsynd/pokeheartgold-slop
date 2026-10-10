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
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ManagedSprite_GetPriority();
undefined4 func_0x0200dd7c() __asm__("sub_0200DD7C");
undefined4 ov14_021F2A74();
undefined4 func_0x0200dd54() __asm__("sub_0200DD54");

void ov14_021F40E8(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;

  uVar5 = 0;
  iVar4 = 0;
  do {
    iVar1 = *(int *)(*(int *)(param_1 + 0x34) + iVar4 + 0x3f0);
    if (((iVar1 != 0) && (ManagedSprite_SetDrawFlag(iVar1,param_2 == 1), param_2 == 1)) &&
       (*(byte *)(param_1 + 0x21) != 0xff)) {
      iVar3 = (uint)*(byte *)(*(int *)(param_1 + 0x34) + (uint)*(byte *)(param_1 + 0x21) + 0x4094) *
              4;
      iVar1 = func_0x0200dd7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + iVar3 + 0x2fc));
      ov14_021F2A74(*(undefined4 *)(param_1 + 0x34),uVar5 + 0x3d,iVar1 + 1);
      uVar2 = ManagedSprite_GetPriority(*(undefined4 *)(*(int *)(param_1 + 0x34) + iVar3 + 0x2fc));
      func_0x0200dd54(*(undefined4 *)(*(int *)(param_1 + 0x34) + iVar4 + 0x3f0),uVar2);
    }
    uVar5 = uVar5 + 1;
    iVar4 = iVar4 + 4;
  } while (uVar5 < 8);
  return;
}

