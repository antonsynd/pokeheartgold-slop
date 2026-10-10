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
undefined4 ov96_021E7C94();
undefined4 ov96_021E5F24();
undefined4 ov96_021E7C04();
extern undefined UNK_0221a7d8 __asm__("sub_0221A7D8");

void ov96_021E7938(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  uint uStack_e0;
  undefined2 uStack_d8;
  short asStack_d6 [15];
  undefined2 auStack_b8 [80];
  undefined4 uStack_18;

  uStack_e0 = 0;
  uStack_18 = param_4;
  do {
    uVar2 = *(uint *)(param_1 + uStack_e0 * 4 + 0x3d8) & 0xff;
    iVar5 = param_2 + uVar2 * 0x2c;
    if (*(uint *)(iVar5 + 0x28) < 9999999) {
      *(uint *)(iVar5 + 0x28) = *(uint *)(iVar5 + 0x28) + 1;
    }
    uVar4 = 0;
    uVar1 = (&UNK_0221a7d8)[uVar2];
    do {
      auStack_b8[uVar4 * 0x10] = *(undefined2 *)(iVar5 + uVar4 * 8);
      uVar2 = 0;
      do {
        auStack_b8[uVar4 * 0x10 + uVar2 + 1] = *(undefined2 *)(iVar5 + uVar4 * 8 + uVar2 * 2 + 2);
        uVar2 = uVar2 + 1 & 0xff;
      } while (uVar2 < 3);
      uVar4 = uVar4 + 1 & 0xff;
    } while (uVar4 < 5);
    uVar2 = ov96_021E5F24(param_1);
    uStack_d8 = *(undefined2 *)(uStack_e0 * 2 + param_1 + (uVar2 & 0xff) * 8 + 0x8d4);
    uVar2 = ov96_021E5F24(param_1);
    iVar3 = param_1 + 0x3f0 + (uVar2 & 0xff) * 0x7c;
    uVar2 = 0;
    do {
      uVar4 = uVar2 + 1 & 0xff;
      asStack_d6[uVar2] =
           *(short *)(iVar3 + uVar2 * 0x28 + 2) * 0x400 + *(short *)(iVar3 + uVar2 * 0x28);
      uVar2 = uVar4;
    } while (uVar4 < 3);
    ov96_021E7C04(uVar1,&uStack_d8,auStack_b8);
    ov96_021E7C94(param_1,iVar5,auStack_b8);
    uStack_e0 = uStack_e0 + 1 & 0xff;
  } while (uStack_e0 < 3);
  return;
}

