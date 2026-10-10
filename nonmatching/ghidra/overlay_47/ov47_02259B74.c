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
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 func_0x0201d9d8() __asm__("sub_0201D9D8");
undefined4 ScheduleWindowCopyToVram();

undefined4 ov47_02259B74(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  
  if (0x13 < *(int *)(param_1 + 100)) {
    return 1;
  }
  iVar2 = *(int *)(param_1 + 100) + 1;
  *(int *)(param_1 + 100) = iVar2;
  iVar2 = func_0x020f2998(iVar2 * 0x50,0x14);
  uStack_24 = 0;
  uStack_20 = 0;
  uStack_28 = param_1;
  do {
    iVar3 = *(int *)(uStack_28 + 0x74);
    iVar1 = *(int *)(uStack_28 + 0x68);
    if (iVar1 == iVar3) {
      uStack_24 = uStack_24 + 1;
    }
    else {
      if (iVar3 < iVar2) {
        iVar4 = iVar3 - iVar1;
      }
      else {
        iVar4 = iVar2 - iVar1;
        iVar3 = iVar2;
      }
      iVar5 = 0;
      *(int *)(uStack_28 + 0x68) = iVar3;
      if (0 < iVar4) {
        do {
          func_0x0201d9d8(param_1 + (uStack_20 + 2) * 0x10,
                          *(undefined4 *)(*(int *)(param_1 + 0x84) + 0x14),0xf7,0x10,0x100,0x20,
                          iVar1 + 4 + iVar5 & 0xffff,0,1,0x10);
          iVar5 = iVar5 + 1;
        } while (iVar5 < iVar4);
      }
      ScheduleWindowCopyToVram(param_1 + (uStack_20 + 2) * 0x10);
    }
    uStack_28 = uStack_28 + 4;
    uStack_20 = uStack_20 + 1;
  } while (uStack_20 < 3);
  if (uStack_24 == 3) {
    return 1;
  }
  return 0;
}

