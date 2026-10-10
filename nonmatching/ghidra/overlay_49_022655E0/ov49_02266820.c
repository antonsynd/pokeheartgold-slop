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
undefined4 ov49_02265B94();
undefined4 func_0x020c3698() __asm__("sub_020C3698");
undefined4 ov49_02265B28();
undefined4 GF_AssertFail();
undefined4 func_0x020182a0() __asm__("sub_020182A0");
undefined4 ov49_02265BE8();
undefined4 ov49_02265968();

undefined4 ov49_02266820(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uStack_18;
  
  if (*(char *)(*(int *)(param_2 + 0x87c) + 2) == '\x11') {
    GF_AssertFail();
  }
  if (*(int *)(param_2 + 0x954) < 1) {
    if ((*(short *)(param_2 + 2) < 3) &&
       (iVar1 = ov49_02265968(param_2,*(short *)(param_2 + 2) + 1), iVar1 == 1)) {
      func_0x020182a0(param_2 + 0xc,1);
      iVar1 = ov49_02265B28(param_1,param_2,0,0);
      if (iVar1 == 1) {
        *(short *)(param_2 + 2) = *(short *)(param_2 + 2) + 1;
        *(undefined4 *)(param_2 + 0x954) = 3;
        if (*(short *)(param_2 + 2) < 3) {
          ov49_02265BE8(param_1,param_2,0,0,0);
        }
        else {
          func_0x020182a0(param_2 + 0xc,0);
        }
      }
    }
  }
  else {
    *(int *)(param_2 + 0x954) = *(int *)(param_2 + 0x954) + -1;
    func_0x020182a0(param_2 + 0xc,0);
  }
  iVar3 = 1;
  uStack_18 = 1;
  iVar4 = param_2 + 0x84;
  iVar1 = param_2;
  do {
    iVar2 = ov49_02265968(param_2,iVar3);
    if (iVar2 == 1) {
      if (iVar3 + -1 < (int)*(short *)(param_2 + 2)) {
        func_0x020182a0(iVar4,1);
        iVar2 = ov49_02265B94(param_1,param_2,iVar3,0,0x2800);
        if (iVar2 == 0) {
          uStack_18 = 0;
        }
        else {
          iVar2 = param_2 + (iVar3 + -1) * 4;
          if (*(int *)(iVar2 + 0x958) == 0) {
            func_0x020182a0(iVar4,0);
            func_0x020c3698(*(undefined4 *)
                             (param_1 + (uint)**(byte **)(iVar1 + 0x880) * 0x10 + 0x10558),0x1f);
          }
          else {
            *(int *)(iVar2 + 0x958) = *(int *)(iVar2 + 0x958) + -1;
            iVar2 = *(int *)(iVar2 + 0x958) * 0x14;
            func_0x020c3698(*(undefined4 *)
                             (param_1 + (uint)**(byte **)(iVar1 + 0x880) * 0x10 + 0x10558),
                            (int)(iVar2 + ((uint)(iVar2 >> 2) >> 0x1d)) >> 3);
            uStack_18 = 0;
          }
        }
      }
      else {
        uStack_18 = 0;
      }
    }
    iVar3 = iVar3 + 1;
    iVar4 = iVar4 + 0x78;
    iVar1 = iVar1 + 4;
  } while (iVar3 < 4);
  return uStack_18;
}

