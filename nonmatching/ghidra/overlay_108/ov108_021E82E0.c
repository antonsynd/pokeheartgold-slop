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
undefined4 func_0x0200ded0() __asm__("sub_0200DED0");
undefined4 func_0x020f2998() __asm__("sub_020F2998");
extern undefined UNK_021ea720 __asm__("sub_021EA720");

undefined4 ov108_021E82E0(int param_1,int param_2)

{
  char cVar1;
  byte *pbVar2;
  byte *pbVar3;
  int iVar4;
  byte abStack_18 [4];

  cVar1 = (char)((int)((uint)*(byte *)(param_1 + 0x184e2) << 0x1d) >> 0x1f) * -6;
  abStack_18[2] = *(char *)(param_1 + 0x184df) + cVar1;
  abStack_18[3] = *(char *)(param_1 + 0x184e0) + cVar1;
  abStack_18[0] = func_0x020f2998(*(undefined1 *)(param_1 + 0x184df),3);
  abStack_18[1] = func_0x020f2998(*(undefined1 *)(param_1 + 0x184e0),3);
  iVar4 = 0;
  pbVar2 = abStack_18;
  pbVar3 = abStack_18 + 2;
  do {
    func_0x0200ded0(*(undefined4 *)(param_1 + (uint)*pbVar3 * 4 + 0x36c),0,
                    (char)(&UNK_021ea720)[(uint)*pbVar2 + param_2 * 2] * 0xc0000 >> 0x10);
    iVar4 = iVar4 + 1;
    pbVar2 = pbVar2 + 1;
    pbVar3 = pbVar3 + 1;
  } while (iVar4 < 2);
  *(char *)(param_1 + 0x184e1) = *(char *)(param_1 + 0x184e1) + '\x01';
  if (7 < *(byte *)(param_1 + 0x184e1)) {
    *(undefined1 *)(param_1 + 0x184e1) = 0;
    return 1;
  }
  return 0;
}

