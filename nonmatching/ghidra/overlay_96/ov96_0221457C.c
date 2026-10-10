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
undefined4 func_0x020e3a84() __asm__("sub_020E3A84");
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov96_021EABA8();

void ov96_0221457C(int param_1,int param_2,int param_3)

{
  ushort uVar1;
  int iVar2;
  int extraout_r1;
  uint uVar3;
  uint uVar4;
  ushort auStack_38 [18];

  uVar4 = 0;
  uVar3 = 0;
  do {
    iVar2 = func_0x020f2998(uVar3,3);
    if (iVar2 != param_3) {
      auStack_38[uVar4 * 2] = (ushort)uVar3;
      auStack_38[uVar4 * 2 + 1] = (ushort)*(byte *)(param_2 + uVar3 + 0xc);
      uVar4 = uVar4 + 1 & 0xff;
    }
    uVar3 = uVar3 + 1 & 0xff;
  } while (uVar3 < 0xc);
  func_0x020e3a84(auStack_38,9,4,0x221454d,*(undefined4 *)(param_1 + 0x81c));
  uVar3 = 0;
  do {
    uVar1 = auStack_38[uVar3 * 2];
    iVar2 = func_0x020f2998(uVar1 & 0xff,3);
    func_0x020f2998(uVar1 & 0xff,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc");
    ov96_021EABA8(*(undefined4 *)(extraout_r1 * 0x7c + param_1 + iVar2 * 0x174 + 0x5c),uVar3 + 0x10)
    ;
    uVar3 = uVar3 + 1 & 0xff;
  } while (uVar3 < 9);
  return;
}

