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
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");
undefined4 func_0x020d4d5c() __asm__("sub_020D4D5C");

void ov112_021E5D8C(int param_1,int param_2,uint param_3,char *param_4)

{
  char cVar1;
  uint uVar2;
  uint uVar3;
  uint uStack_20;
  int iStack_18;

  iStack_18 = 0;
  uVar2 = (param_3 + 0x7f + ((uint)((int)(param_3 + 0x7f) >> 6) >> 0x19) & 0x7fffff) >> 7;
  uStack_20 = param_3;
  if (uVar2 != 0) {
    do {
      uVar3 = uStack_20;
      if (0x80 < uStack_20) {
        uVar3 = 0x80;
      }
      if (uVar3 == 0x80) {
        cVar1 = func_0x020d4d5c(param_1,0x80,param_2,0);
        if (cVar1 == '\0') {
          func_0x020d4a50(param_1,param_2,0x80);
          *param_4 = -0x80;
        }
        else {
          *param_4 = cVar1;
        }
      }
      else {
        func_0x020d4a50(param_1,param_2,uVar3);
        *param_4 = -0x80;
      }
      param_4 = param_4 + 1;
      param_1 = param_1 + 0x80;
      uStack_20 = uStack_20 - uVar3 & 0xffff;
      param_2 = param_2 + 0x80;
      iStack_18 = iStack_18 + 1;
    } while (iStack_18 < (int)uVar2);
  }
  return;
}

