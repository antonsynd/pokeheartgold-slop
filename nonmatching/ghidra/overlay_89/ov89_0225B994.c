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
undefined4 func_0x020181b0() __asm__("sub_020181B0");
undefined4 func_0x020182a0() __asm__("sub_020182A0");
undefined4 ov89_0225ADA4();
undefined4 ov89_0225AD64();
undefined4 func_0x020182a8() __asm__("sub_020182A8");
undefined4 func_0x0201fd14() __asm__("sub_0201FD14");
undefined4 sub_020182B0();
undefined4 ov89_0225AD00();

undefined4 ov89_0225B994(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  undefined4 uStack_24;
  undefined4 uStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  iVar3 = param_2 + 0x94;
  uStack_18 = param_4;
  if (*(char *)(param_2 + 0x18b) == '\0') {
    uVar1 = ov89_0225AD00();
    *(undefined1 *)(param_2 + 0x18a) = uVar1;
    sub_020182B0(param_2 + 0x1c,&iStack_1c,&uStack_20,&uStack_24);
    iVar5 = 0;
    iVar4 = iVar3;
    do {
      func_0x020181b0(iVar4,param_2 + 0xc);
      func_0x020182a8(iVar4,iStack_1c,uStack_20,uStack_24);
      func_0x020182a0(iVar4,1);
      iVar5 = iVar5 + 1;
      iVar4 = iVar4 + 0x78;
    } while (iVar5 < 2);
    *(undefined2 *)(param_2 + 0x188) = 0x1f00;
    *(char *)(param_2 + 0x18b) = *(char *)(param_2 + 0x18b) + '\x01';
  }
  else if (*(char *)(param_2 + 0x18b) != '\x01') {
    ov89_0225AD64(param_1,*(undefined1 *)(param_2 + 0x18a));
    return 1;
  }
  if ((int)(*(ushort *)(param_2 + 0x188) - 0xa0) < 0x100) {
    iVar5 = 0;
    iVar4 = iVar3;
    do {
      func_0x020182a0(iVar4,0);
      iVar5 = iVar5 + 1;
      iVar4 = iVar4 + 0x78;
    } while (iVar5 < 2);
    func_0x020182a0(param_2 + 0x1c,0);
    *(char *)(param_2 + 0x18b) = *(char *)(param_2 + 0x18b) + '\x01';
  }
  else {
    *(short *)(param_2 + 0x188) = *(short *)(param_2 + 0x188) + -0xa0;
    *(int *)(param_2 + 0x184) = *(int *)(param_2 + 0x184) + 0x20000;
    if (0x167fff < *(int *)(param_2 + 0x184)) {
      *(int *)(param_2 + 0x184) = *(int *)(param_2 + 0x184) + -0x168000;
    }
    uVar2 = func_0x0201fd14(*(undefined4 *)(param_2 + 0x184));
    uVar6 = uVar2 * 0x10000 + 0x800 >> 0xc |
            ((uVar2 >> 0x10) + (uint)(0xfffff7ff < uVar2 * 0x10000)) * 0x100000;
    sub_020182B0(param_2 + 0x1c,&iStack_1c,&uStack_20,&uStack_24);
    uVar2 = 0;
    iVar4 = iVar3;
    do {
      if ((uVar2 & 1) == 0) {
        func_0x020182a8(iVar4,iStack_1c - uVar6,uStack_20,uStack_24);
      }
      else {
        func_0x020182a8(iVar4,iStack_1c + uVar6,uStack_20,uStack_24);
      }
      uVar2 = uVar2 + 1;
      iVar4 = iVar4 + 0x78;
    } while ((int)uVar2 < 2);
  }
  ov89_0225ADA4(param_2 + 0x1c,param_2,param_2 + 0x18c,0);
  iVar4 = 0;
  do {
    ov89_0225ADA4(iVar3,param_2,param_2 + 0x18c + (iVar4 + 1) * 0x10,0);
    iVar4 = iVar4 + 1;
    iVar3 = iVar3 + 0x78;
  } while (iVar4 < 2);
  return 0;
}

