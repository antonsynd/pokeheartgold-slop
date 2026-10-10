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
undefined4 sub_0208FAF8();
undefined4 sub_0203769C();
undefined4 func_0x020d48b4() __asm__("sub_020D48B4");
undefined4 sub_02037108();
undefined4 CopyWindowToVram();

void sub_0208F828(undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  int iVar1;
  uint uVar2;
  int iVar3;

  iVar3 = param_4;
  iVar1 = sub_0203769C();
  if (iVar1 != 0) {
    uVar2 = (uint)*(byte *)(param_3 + 0x3ec) * 1000;
    if (uVar2 < 0x3841) {
      func_0x020d48b4(param_3,param_4 + 0x43d0 + uVar2,1000);
    }
    else {
      func_0x020d48b4(param_3,param_4 + 0x43d0 + uVar2,400);
    }
    func_0x020d48b4(param_4 + 0x43d0,*(undefined4 *)(param_4 + 0x2d4),0x3840);
    CopyWindowToVram(param_4 + 0x2c8);
    return;
  }
  iVar1 = *(int *)(param_4 + 0x43cc) * 1000;
  if (iVar1 < 0x3840) {
    *(int *)(param_4 + 0x43cc) = *(int *)(param_4 + 0x43cc) + 1;
    sub_0208FAF8(param_4,*(undefined4 *)(param_4 + 0x43cc));
    return;
  }
  sub_02037108(0x7c,0,0,iVar1,iVar3);
  return;
}

