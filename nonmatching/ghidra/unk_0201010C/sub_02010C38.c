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
undefined4 GF_AssertFail();
undefined4 sub_02010EE0();
extern ushort uRam04001040 __asm__("sub_04001040");
extern ushort uRam04000006 __asm__("sub_04000006");
extern ushort uRam04000042 __asm__("sub_04000042");
extern ushort uRam04001042 __asm__("sub_04001042");
extern ushort uRam04001046 __asm__("sub_04001046");
extern ushort uRam04000040 __asm__("sub_04000040");
extern ushort uRam04001044 __asm__("sub_04001044");
extern ushort uRam04000046 __asm__("sub_04000046");
extern undefined2 uRam04000044 __asm__("sub_04000044");
extern ushort uRam04000004 __asm__("sub_04000004");

void sub_02010C38(int param_1)

{
  ushort uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  
  if (param_1 == 0) {
    GF_AssertFail();
  }
  uVar2 = (uint)uRam04000006;
  if (uVar2 < 0xc0) {
    uVar5 = uVar2 + 1;
    if (0xbf < uVar5) {
      uVar5 = uVar2 - 0xbf;
    }
    if (*(int *)(param_1 + 4) == 1) {
      iVar3 = sub_02010EE0(param_1,0);
      uVar1 = *(ushort *)(iVar3 + uVar5 * 2 + 0x180);
      iVar4 = (int)*(short *)(iVar3 + uVar5 * 2);
      if (*(int *)(iVar3 + 0x600) == 0) {
        if (*(int *)(param_1 + 8) == 0) {
          if ((uRam04000004 & 2) != 0) {
            uRam04000040 = uVar1 & 0xff | (ushort)(iVar4 << 8);
            uRam04000044 = 0xc0;
            return;
          }
        }
        else if ((uRam04000004 & 2) != 0) {
          uRam04001040 = uVar1 & 0xff | (ushort)(iVar4 << 8);
          uRam04001044 = 0xc0;
          return;
        }
      }
      else if (*(int *)(param_1 + 8) == 0) {
        if ((uRam04000004 & 2) != 0) {
          uRam04000042 = uVar1 & 0xff | (ushort)(iVar4 << 8);
          uRam04000046 = 0xc0;
          return;
        }
      }
      else if ((uRam04000004 & 2) != 0) {
        uRam04001042 = uVar1 & 0xff | (ushort)(iVar4 << 8);
        uRam04001046 = 0xc0;
        return;
      }
    }
    else {
      iVar3 = sub_02010EE0(param_1,0);
      iVar4 = uVar5 * 2;
      uVar1 = *(ushort *)(iVar3 + iVar4 + 0x180);
      uVar2 = (uint)*(short *)(iVar3 + iVar4);
      if (*(int *)(iVar3 + 0x600) == 0) {
        if (*(int *)(param_1 + 8) == 0) {
          if ((uRam04000004 & 2) != 0) {
            uRam04000040 = uVar1 & 0xff | (ushort)((uVar2 & 0xff) << 8);
            uRam04000044 = 0xc0;
          }
        }
        else if ((uRam04000004 & 2) != 0) {
          uRam04001040 = uVar1 & 0xff | (ushort)(uVar2 << 8);
          uRam04001044 = 0xc0;
        }
      }
      else if (*(int *)(param_1 + 8) == 0) {
        if ((uRam04000004 & 2) != 0) {
          uRam04000042 = uVar1 & 0xff | (ushort)((uVar2 & 0xff) << 8);
          uRam04000046 = 0xc0;
        }
      }
      else if ((uRam04000004 & 2) != 0) {
        uRam04001042 = uVar1 & 0xff | (ushort)(uVar2 << 8);
        uRam04001046 = 0xc0;
      }
      iVar3 = sub_02010EE0(param_1,1);
      uVar1 = *(ushort *)(iVar3 + iVar4 + 0x180);
      iVar4 = (int)*(short *)(iVar3 + iVar4);
      if (*(int *)(iVar3 + 0x600) == 0) {
        if (*(int *)(param_1 + 8) == 0) {
          if ((uRam04000004 & 2) != 0) {
            uRam04000040 = uVar1 & 0xff | (ushort)(iVar4 << 8);
            uRam04000044 = 0xc0;
            return;
          }
        }
        else if ((uRam04000004 & 2) != 0) {
          uRam04001040 = uVar1 & 0xff | (ushort)(iVar4 << 8);
          uRam04001044 = 0xc0;
          return;
        }
      }
      else if (*(int *)(param_1 + 8) == 0) {
        if ((uRam04000004 & 2) != 0) {
          uRam04000042 = uVar1 & 0xff | (ushort)(iVar4 << 8);
          uRam04000046 = 0xc0;
          return;
        }
      }
      else if ((uRam04000004 & 2) != 0) {
        uRam04001042 = uVar1 & 0xff | (ushort)(iVar4 << 8);
        uRam04001046 = 0xc0;
      }
    }
  }
  return;
}

