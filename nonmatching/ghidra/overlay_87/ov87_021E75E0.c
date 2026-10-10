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
undefined4 PlaySE();
extern undefined ov87_021E82C2;
extern undefined ov87_021E82C0;

undefined4 ov87_021E75E0(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iStack_18;
  
  iVar3 = 0;
  iVar6 = (int)*(short *)(&ov87_021E82C0 + param_2 * 4);
  iStack_18 = (int)*(short *)(&ov87_021E82C2 + param_2 * 4);
  iVar1 = iStack_18 + 0x14;
  if (iStack_18 < iVar1) {
    iVar5 = iStack_18 * 0xf0;
    do {
      if (iVar6 < iVar6 + 0x19) {
        iVar4 = param_1 + iVar5 + iVar6;
        iVar2 = iVar6;
        do {
          if (*(char *)(iVar4 + 0x3fa) == '\x01') {
            iVar3 = iVar3 + 1;
          }
          iVar2 = iVar2 + 1;
          iVar4 = iVar4 + 1;
        } while (iVar2 < iVar6 + 0x19);
      }
      iVar5 = iVar5 + 0xf0;
      iStack_18 = iStack_18 + 1;
    } while (iStack_18 < iVar1);
  }
  if (0x17b < iVar3) {
    if (*(char *)(param_1 + 0x3a5 + param_2) == '\0') {
      PlaySE(0x5e2);
      *(char *)(param_1 + (uint)*(byte *)(param_1 + 0x3a1) + 0x3a2) = (char)param_2;
      *(char *)(param_1 + 0x3a1) = *(char *)(param_1 + 0x3a1) + '\x01';
    }
    *(undefined1 *)(param_1 + 0x3a5 + param_2) = 1;
    return 1;
  }
  return 0;
}

