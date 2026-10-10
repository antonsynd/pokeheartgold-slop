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
undefined4 ov49_022588A0();
undefined4 func_0x020181ec() __asm__("sub_020181EC");
undefined4 GF_AssertFail();
undefined4 func_0x020181d4() __asm__("sub_020181D4");
undefined4 func_0x020181e0() __asm__("sub_020181E0");
undefined4 func_0x02018198() __asm__("sub_02018198");
undefined4 func_0x020bed00() __asm__("sub_020BED00");
undefined4 func_0x020bedb0() __asm__("sub_020BEDB0");
undefined4 func_0x020c3b50() __asm__("sub_020C3B50");

void ov49_0225DAFC(char *param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  char *pcVar3;
  int iVar4;
  int iStack_1c;
  
  if ((*param_1 != '\0') &&
     (iVar1 = ov49_022588A0(param_2 + (uint)(byte)param_1[2] * 0x10,param_1 + 4), iVar1 != 0)) {
    if (2 < (byte)param_1[1]) {
      GF_AssertFail();
    }
    if (1 < (byte)param_1[2]) {
      GF_AssertFail();
    }
    uVar2 = func_0x020c3b50(*(undefined4 *)
                             (param_2 + (uint)(byte)param_1[2] * 0xc + (uint)(byte)param_1[1] * 4 +
                             0x20));
    *(undefined4 *)(param_2 + (uint)(byte)param_1[2] * 0x10 + 0xc) = uVar2;
    iVar1 = param_2 + (uint)(byte)param_1[2] * 0x10;
    iVar1 = func_0x020bed00(*(undefined4 *)(iVar1 + 4),*(undefined4 *)(iVar1 + 0xc));
    if (iVar1 == 0) {
      GF_AssertFail();
    }
    iStack_1c = 0;
    iVar1 = 0;
    pcVar3 = param_1;
    do {
      if (*(int *)(pcVar3 + 0x7c) != 0) {
        func_0x020181d4(param_1 + 4,param_2 + 0x38 + (uint)(byte)param_1[2] * 0x50 + iVar1);
        func_0x02018198(param_2 + 0x38 + (uint)(byte)param_1[2] * 0x50 + iVar1,
                        *(undefined4 *)(pcVar3 + 0x8c));
      }
      pcVar3 = pcVar3 + 4;
      iStack_1c = iStack_1c + 1;
      iVar1 = iVar1 + 0x14;
    } while (iStack_1c < 4);
    func_0x020181ec(param_1 + 4);
    iVar4 = 0;
    iVar1 = 0;
    pcVar3 = param_1;
    do {
      if (*(int *)(pcVar3 + 0x7c) != 0) {
        func_0x020181e0(param_1 + 4,param_2 + 0x38 + (uint)(byte)param_1[2] * 0x50 + iVar1);
      }
      iVar4 = iVar4 + 1;
      pcVar3 = pcVar3 + 4;
      iVar1 = iVar1 + 0x14;
    } while (iVar4 < 4);
    func_0x020bedb0(*(undefined4 *)(param_2 + (uint)(byte)param_1[2] * 0x10 + 4));
  }
  return;
}

