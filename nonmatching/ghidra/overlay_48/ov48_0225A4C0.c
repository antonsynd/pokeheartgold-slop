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
undefined4 ov48_0225A834();
undefined4 ov48_0225A858();
undefined4 ov48_0225AA5C();
undefined4 ov48_0225A668();
undefined4 ov48_0225A868();
undefined4 _u32_div_f(unsigned int, unsigned int);
undefined4 ov48_0225A57C();

undefined4 ov48_0225A4C0(int param_1,int param_2,undefined4 param_3)

{
  char cVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined4 extraout_r1;
  int iVar4;
  char *pcVar5;
  uint uVar6;

  iVar4 = param_2 * 4;
  if (*(char *)(param_1 + iVar4 + 0x40) == '\0') {
    return 0;
  }
  cVar1 = *(char *)(param_1 + 0x41 + iVar4);
  pcVar5 = (char *)(param_1 + 0x41 + iVar4);
  if (cVar1 < '\x02') {
    uVar6 = 0x11 - param_2;
    uVar2 = _u32_div_f(uVar6,6);
    { uint nug_a = (uint)(uVar6), nug_b = (uint)(6); extraout_r1 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
    iVar4 = *(int *)(param_1 + uVar2 * 4 + 0x88);
    if (cVar1 == '\0') {
      uVar3 = ov48_0225A858(param_1);
      ov48_0225A868(param_1,uVar2,extraout_r1,uVar3);
      ov48_0225A57C(param_1,uVar6,param_3);
      ov48_0225A668(param_1 + 0x2e4,(int)(uVar6 * 0x80000) >> 0x10,0x90);
    }
    else if (cVar1 == '\x01') {
      uVar3 = ov48_0225A834(param_1,uVar2,extraout_r1);
      ov48_0225A868(param_1,uVar2,extraout_r1,uVar3);
      ov48_0225AA5C(param_1 + 0xa0 + iVar4 * 0x28,uVar6,param_3);
    }
    *pcVar5 = *pcVar5 + '\x01';
    return 0;
  }
  return 1;
}

