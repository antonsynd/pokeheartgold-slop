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
undefined4 ov49_02265B14();
undefined4 sub_020182A4(void *);
undefined4 sub_020182A0(void *, int);
undefined4 ov49_02265B28();

undefined4 ov49_0226676C(undefined4 param_1,int param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  undefined *puVar4;
  undefined4 uStack_18;
  
  iVar3 = *(short *)(param_2 + 2) * 3;
  uVar2 = (int)(iVar3 + ((uint)(iVar3 >> 4) >> 0x1b)) >> 5;
  if ((uVar2 != (int)*(short *)(param_2 + 0x954)) &&
     (*(short *)(param_2 + 0x954) = (short)uVar2, uVar2 < (uint)(int)*(short *)(param_2 + 0x956))) {
    if (uVar2 != 0) {
      sub_020182A0((undefined *)(param_2 + 0xc + (uVar2 - 1) * 0x78),0);
    }
    sub_020182A0((undefined *)(param_2 + 0xc + uVar2 * 0x78),1);
  }
  if (*(short *)(param_2 + 2) < 0x20) {
    *(short *)(param_2 + 2) = *(short *)(param_2 + 2) + 1;
  }
  iVar3 = 0;
  uStack_18 = 0;
  if (0 < *(short *)(param_2 + 0x956)) {
    puVar4 = (undefined *)(param_2 + 0xc);
    do {
      iVar1 = sub_020182A4(puVar4);
      if (iVar1 != 0) {
        if (iVar3 == *(short *)(param_2 + 0x956) + -1) {
          uStack_18 = ov49_02265B28(param_1,param_2,iVar3,0);
        }
        else {
          ov49_02265B14(param_1,param_2,iVar3,0);
        }
      }
      iVar3 = iVar3 + 1;
      puVar4 = puVar4 + 0x78;
    } while (iVar3 < *(short *)(param_2 + 0x956));
  }
  return uStack_18;
}

