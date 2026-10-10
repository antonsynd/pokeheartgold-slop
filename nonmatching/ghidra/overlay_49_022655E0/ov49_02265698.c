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
undefined4 func_0x020c3558() __asm__("sub_020C3558");
undefined4 func_0x020c3b40() __asm__("sub_020C3B40");
undefined4 GfGfxLoader_LoadFromOpenNarc();

void ov49_02265698(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int *piVar2;
  int iVar3;
  int iVar4;

  iVar4 = 0;
  do {
    uVar1 = GfGfxLoader_LoadFromOpenNarc(param_2,iVar4 + 0x81,0,param_3,0);
    *(undefined4 *)(param_1 + 0x10550) = uVar1;
    uVar1 = func_0x020c3b40(*(undefined4 *)(param_1 + 0x10550));
    *(undefined4 *)(param_1 + 0x10554) = uVar1;
    iVar3 = *(int *)(param_1 + 0x10554);
    if (iVar3 == 0) {
LAB_022656ec:
      iVar3 = 0;
    }
    else {
      if ((iVar3 + 8 == 0) || (*(char *)(iVar3 + 9) == '\0')) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = (int *)(iVar3 + 8 + (uint)*(ushort *)(iVar3 + 0xe) + 4);
      }
      if (piVar2 == (int *)0x0) goto LAB_022656ec;
      iVar3 = iVar3 + *piVar2;
    }
    *(int *)(param_1 + 0x10558) = iVar3;
    *(undefined4 *)(param_1 + 0x1055c) = 0;
    func_0x020c3558(*(undefined4 *)(param_1 + 0x10558),0x7fff);
    iVar4 = iVar4 + 1;
    param_1 = param_1 + 0x10;
    if (0xe < iVar4) {
      return;
    }
  } while( true );
}

