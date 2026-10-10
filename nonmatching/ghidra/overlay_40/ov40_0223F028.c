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
undefined4 sub_02087E1C();
undefined4 ov40_0222BF80();
undefined4 ov40_0222F734();
undefined4 ov40_0223D540();
undefined4 func_0x02227d44() __asm__("sub_02227D44");
undefined4 ov40_0223D5CC();
undefined4 ov40_0222DF60();
undefined4 PlaySE();
undefined4 ov40_022309DC();
undefined4 func_0x02227590() __asm__("sub_02227590");
undefined4 func_0x02006154() __asm__("sub_02006154");

undefined4 ov40_0223F028(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  char cVar4;
  int iStack_14;
  
  iVar3 = *(int *)(param_1 + 0x860);
  iVar1 = ov40_0223D5CC();
  if (iVar1 != 0) {
    switch(*(undefined4 *)(param_1 + 8)) {
    case 0:
      ov40_0222DF60(param_1,0x75);
      PlaySE(0x57d);
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      break;
    case 1:
      cVar4 = *(char *)(iVar3 + 0x4c2);
      if (cVar4 == -1) {
        iVar1 = sub_02087E1C(param_1);
        if (iVar1 == 1) {
          cVar4 = -1;
        }
        else {
          cVar4 = -2;
        }
      }
      uVar2 = ov40_0223D540(param_1);
      iVar1 = func_0x02227590(uVar2,*(undefined2 *)(iVar3 + 0x4c0),cVar4,
                              *(undefined1 *)(iVar3 + 0x4c3),*(undefined1 *)(iVar3 + 0x4c4));
      if (iVar1 == 1) {
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      break;
    case 2:
      uVar2 = ov40_0223D540(param_1);
      iVar1 = func_0x02227d44(uVar2,&iStack_14);
      if (iVar1 == 1) {
        func_0x02006154(0x57d,0);
        ov40_022309DC(param_1,7,*(undefined4 *)(iStack_14 + 0xc),*(undefined4 *)(iStack_14 + 4));
        *(undefined4 *)(param_1 + 0x4138) = 0;
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      else {
        func_0x02006154(0x57d,0);
        *(undefined4 *)(param_1 + 0x510) = 0x76;
        *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      }
      break;
    case 3:
      if (*(int *)(param_1 + 0x4138) == 0) {
        ov40_0222DF60(param_1,*(undefined4 *)(param_1 + 0x510));
        PlaySE(0x57c);
      }
      else {
        PlaySE(0x577);
      }
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
      break;
    default:
      ov40_0222F734(param_1 + 0x49c);
      if (*(int *)(param_1 + 0x4138) == 0) {
        ov40_0222BF80(param_1,3);
      }
      else {
        ov40_0222BF80(param_1,0xd);
      }
    }
    return 0;
  }
  return 0;
}

