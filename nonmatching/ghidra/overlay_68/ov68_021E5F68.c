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
undefined4 ov68_021E7AB4();
undefined4 ov68_021E7B94();
undefined4 PlaySE();
undefined4 ov68_021E7898();
undefined4 ov68_021E7A18();
undefined4 ov68_021E7A90();
undefined4 System_GetTouchNew();
undefined4 func_0x02019d18() __asm__("sub_02019D18");
undefined4 func_0x02019f74() __asm__("sub_02019F74");

undefined4 ov68_021E5F68(int *param_1)

{
  undefined2 uVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;

  uVar1 = func_0x02019f74(param_1[0x72]);
  *(undefined2 *)(param_1 + 0x73) = uVar1;
  uVar2 = func_0x02019d18(param_1[0x72]);
  if (uVar2 < 0xfffffffe) {
    switch(uVar2) {
    case 0:
    case 1:
    case 2:
    case 3:
      iVar3 = System_GetTouchNew();
      if (iVar3 == 0) {
        if (*(ushort *)(*param_1 + 0x16) + uVar2 < (uint)*(byte *)(param_1 + 0x6e)) {
          PlaySE(0x5dd);
          ov68_021E7A18(param_1,uVar2);
          uVar4 = ov68_021E7B94(param_1);
          return uVar4;
        }
      }
      else if (*(ushort *)(*param_1 + 0x16) + uVar2 < (uint)*(byte *)(param_1 + 0x6e)) {
        PlaySE(0x5dd);
        ov68_021E7A18(param_1,uVar2);
      }
      else {
        ov68_021E7A18(param_1,5);
      }
      break;
    case 6:
LAB_021e601e:
      PlaySE(0x5dd);
      ov68_021E7A18(param_1,5);
      ov68_021E7898(param_1,0);
      uVar4 = ov68_021E7A90(param_1,0xe);
      return uVar4;
    case 7:
      PlaySE(0x5dd);
      uVar4 = ov68_021E7AB4(param_1,0xf);
      return uVar4;
    }
  }
  else if ((uVar2 != 0xffffffff) && (uVar2 == 0xfffffffe)) goto LAB_021e601e;
  return 1;
}

