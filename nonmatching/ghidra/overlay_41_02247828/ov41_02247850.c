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
undefined4 ScheduleSetBgPosText();
undefined4 ov41_02248750();
undefined4 GF_AssertFail();
undefined4 ov41_02247480();
undefined4 DestroySysTaskAndEnvironment();
undefined4 func_0x0200b5c0() __asm__("sub_0200B5C0");
undefined4 ov41_02247A48();
undefined4 ov41_02247588();
undefined4 func_0x0200b484() __asm__("sub_0200B484");
undefined4 ov41_0224A5A4();
undefined4 ov41_02247B5C();
undefined4 ov41_02248998();
undefined4 ov41_02247414();

void ov41_02247850(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;

  switch(param_2[3]) {
  case 0:
    func_0x0200b484(8,0xfffffff0,0,10,1,param_4);
    param_2[3] = param_2[3] + 1;
    return;
  case 1:
    iVar1 = func_0x0200b5c0(1);
    if (iVar1 != 0) {
      param_2[3] = param_2[3] + 1;
      return;
    }
    break;
  case 2:
    ov41_02247B5C(*param_2);
    ov41_02247414(*param_2);
    ov41_02247588(*param_2);
    ov41_02247480(*param_2,0);
    ScheduleSetBgPosText(*(undefined4 *)(*param_2 + 0x40),1,3,0xffffffd8);
    param_2[3] = param_2[3] + 1;
    return;
  case 3:
    iVar1 = ov41_02247A48(param_2,8,0xfffffffb,8);
    if (iVar1 != 0) {
      param_2[2] = 0;
      param_2[3] = param_2[3] + 1;
      return;
    }
    break;
  case 4:
    ov41_0224A5A4(*param_2 + 0x4e0,0,0xfffffff8);
    iVar1 = param_2[2];
    param_2[2] = iVar1 + 1;
    if (7 < iVar1 + 1) {
      param_2[2] = 0;
      param_2[3] = param_2[3] + 1;
      return;
    }
    break;
  case 5:
    func_0x0200b484(8,0,0xfffffff0,10,1,param_4);
    param_2[3] = param_2[3] + 1;
    return;
  case 6:
    iVar1 = func_0x0200b5c0(1);
    if (iVar1 != 0) {
      param_2[3] = param_2[3] + 1;
      return;
    }
    break;
  case 7:
    iVar1 = ov41_02248750(*param_2 + 0x368,0,0);
    if (iVar1 == 0) {
      GF_AssertFail();
    }
    param_2[3] = param_2[3] + 1;
    return;
  case 8:
    iVar1 = ov41_02248998(*param_2 + 0x368);
    if (iVar1 != 0) {
      param_2[3] = param_2[3] + 1;
      return;
    }
    break;
  case 9:
    *(undefined4 *)param_2[1] = 1;
    DestroySysTaskAndEnvironment();
  }
  return;
}

