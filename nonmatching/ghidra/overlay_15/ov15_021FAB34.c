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
undefined4 ov15_02200030();
undefined4 ov15_021FD404();
undefined4 ov15_021FA074();
undefined4 ov15_021FA070();
undefined4 ov15_021FD574();
undefined4 ov15_021FF364();
undefined4 ov15_021F9F08();
undefined4 ov15_021FA044();

undefined4 ov15_021FAB34(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;

  cVar1 = *(char *)(param_1 + 0x61b);
  if (cVar1 == '\0') {
    *(undefined1 *)(param_1 + 0x61c) = 0;
    *(char *)(param_1 + 0x61b) = *(char *)(param_1 + 0x61b) + '\x01';
  }
  else if (cVar1 == '\x01') {
    if (7 < *(byte *)(param_1 + 0x61c)) {
      *(undefined1 *)(*(int *)(param_1 + 0x234) + 100) = *(undefined1 *)(param_1 + 0x619);
      ov15_021F9F08();
      ov15_021FF364(param_1,(int)*(short *)(*(int *)(param_1 + 0x234) +
                                            (uint)*(byte *)(*(int *)(param_1 + 0x234) + 100) * 0xc +
                                           10),0xffffffff,0,param_4);
      uVar2 = ov15_021FA074(param_1);
      ov15_021FD574(param_1,0,uVar2,0);
      ov15_02200030(param_1,*(undefined1 *)(*(int *)(param_1 + 0x234) + 100));
      ov15_021FD404(param_1,1,*(undefined1 *)(*(int *)(param_1 + 0x234) + 100));
      iVar4 = *(int *)(param_1 + 0x234);
      iVar3 = (uint)*(byte *)(iVar4 + 100) * 0xc;
      ov15_021FA044(iVar4 + 10 + iVar3,iVar4 + 8 + iVar3,*(undefined1 *)(iVar4 + iVar3 + 0xd));
      iVar4 = *(int *)(param_1 + 0x234);
      iVar3 = (uint)*(byte *)(iVar4 + 100) * 0xc;
      ov15_021FA070(iVar4 + 10 + iVar3,iVar4 + 8 + iVar3,*(undefined1 *)(iVar4 + iVar3 + 0xd),6);
      *(char *)(param_1 + 0x61b) = *(char *)(param_1 + 0x61b) + '\x01';
      return 1;
    }
    *(byte *)(param_1 + 0x61c) = *(byte *)(param_1 + 0x61c) + 1;
  }
  else if (cVar1 == '\x02') {
    return 1;
  }
  return 0;
}

