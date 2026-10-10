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
undefined4 ov34_0225E5DC();
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 System_GetTouchHeldCoords();
undefined4 ov34_0225DDB8();
undefined4 func_0x02025204() __asm__("sub_02025204");
extern undefined ov34_0225E6AC;

int ov34_0225E020(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uStack_1c;
  undefined1 auStack_18 [4];

  iVar1 = func_0x02025204(&ov34_0225E6AC);
  if (iVar1 == -1) {
    ov34_0225E5DC(param_1,1);
  }
  else if (iVar1 == 0) {
    ov34_0225E5DC(param_1,0);
    System_GetTouchHeldCoords(auStack_18,&uStack_1c);
    ov34_0225DDB8(*(undefined4 *)(param_1 + 0x1a0),uStack_1c);
    if (3 < *(ushort *)(param_1 + 0x284)) {
      iVar6 = *(ushort *)(param_1 + 0x284) - 2;
      iVar2 = func_0x020f2998(0x60,iVar6);
      iVar3 = 0;
      if (0 < iVar6) {
        iVar4 = 0;
        iVar5 = 0;
        do {
          if ((iVar4 + 0x30U <= uStack_1c) && (uStack_1c < iVar5 + iVar2 + 0x30U)) {
            *(short *)(param_1 + 0x288) = (short)iVar3;
            return 0;
          }
          iVar3 = iVar3 + 1;
          iVar4 = iVar4 + iVar2;
          iVar5 = iVar5 + iVar2;
        } while (iVar3 < iVar6);
      }
    }
  }
  else if ((iVar1 <= *(int *)(*(int *)(param_1 + 0x270) + 0x348)) &&
          (*(int *)(param_1 + 0x1c4) == iVar1 + -1)) {
    iVar3 = (iVar1 + -1) * 0x38;
    iVar2 = *(int *)(param_1 + 0x1fc + iVar3);
    if (iVar2 < 5) {
      *(int *)(param_1 + 0x1fc + iVar3) = iVar2 + 1;
    }
  }
  return iVar1;
}

