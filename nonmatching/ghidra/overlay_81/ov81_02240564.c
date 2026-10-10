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
undefined4 ov81_022405F0();
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 ov81_02242EB8();
undefined4 Bg_GetXpos();
undefined4 ov81_02242F30();
undefined4 ov81_02242EC4();

undefined4 ov81_02240564(int param_1)

{
  undefined4 uVar1;
  int *piVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined1 auStack_20 [12];

  uVar3 = 0;
  func_0x0201bc8c(*(undefined4 *)(param_1 + 0x4c),6,1,8);
  uVar1 = Bg_GetXpos(*(undefined4 *)(param_1 + 0x4c),6);
  *(undefined4 *)(param_1 + 0xc) = uVar1;
  iVar5 = 0;
  iVar4 = param_1;
  if (*(char *)(param_1 + 0x12) != '\0') {
    do {
      piVar2 = (int *)ov81_02242F30(*(undefined4 *)(iVar4 + 0x360));
      if (((int)(*piVar2 + ((uint)(*piVar2 >> 0xb) >> 0x14)) >> 0xc) + -8 < -0x18) {
        ov81_02242EB8(*(undefined4 *)(iVar4 + 0x360),0);
        uVar3 = uVar3 + 1;
      }
      else {
        ov81_02242EC4(auStack_20,*(undefined4 *)(iVar4 + 0x360),0xfffffff8,0);
      }
      iVar5 = iVar5 + 1;
      iVar4 = iVar4 + 4;
    } while (iVar5 < (int)(uint)*(byte *)(param_1 + 0x12));
  }
  ov81_022405F0(param_1);
  if (uVar3 != *(byte *)(param_1 + 0x12)) {
    return 0;
  }
  return 1;
}

