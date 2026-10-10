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
undefined4 ov01_021F5BBC(undefined4, undefined4, undefined4);
undefined4 ov01_021F474C(undefined4, undefined4);
undefined4 ov01_021F5038(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 GF_AssertFail(void);

void ov01_021F54AC(undefined4 param_1,undefined4 param_2,int param_3,int param_4,undefined4 param_5,
                  int param_6)

{
  int iVar1;
  undefined1 auStack_1c [4];
  int iStack_18;
  
  iStack_18 = param_4;
  if (*(int *)(param_6 + 0x6c) == 1) {
    GF_AssertFail();
  }
  iVar1 = ov01_021F5BBC(param_5,param_6,auStack_1c);
  if (iVar1 == 1) {
    ov01_021F474C(param_6,auStack_1c[0]);
    if (1 < *(byte *)(param_6 + 0xa0)) {
      *(undefined4 *)(param_6 + 0x6c) = 1;
      *(undefined4 *)(param_6 + 0x74) = param_1;
      *(undefined4 *)(param_6 + 0x78) = param_2;
      *(char *)(param_6 + 0x7c) = (char)param_3;
      *(char *)(param_6 + 0x7d) = (char)param_4;
      iVar1 = param_6 + 0x90;
      *(undefined4 *)(param_6 + 100) = *(undefined4 *)(iVar1 + param_3 * 4);
      *(undefined4 *)(param_6 + 0x68) = *(undefined4 *)(iVar1 + param_4 * 4);
      *(char *)(param_6 + 0x70) = (char)param_5;
      *(undefined4 *)(*(int *)(iVar1 + param_3 * 4) + 0x860) = param_1;
      *(undefined4 *)(*(int *)(iVar1 + param_4 * 4) + 0x860) = param_2;
      return;
    }
    ov01_021F5038(param_6,param_1,param_2,param_3,param_4,*(undefined1 *)(param_6 + 0xa1),param_5);
    return;
  }
  iVar1 = ov01_021F5038(param_6,param_1,param_2,param_3,param_4,*(undefined1 *)(param_6 + 0xa1),
                        param_5);
  if (iVar1 != 1) {
    GF_AssertFail();
  }
  return;
}

