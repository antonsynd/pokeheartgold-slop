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
undefined4 sub_02037454();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov85_021EA0EC();
undefined4 ov85_021E9FD0();
undefined4 ov85_021E943C();
undefined4 PlaySE();
undefined4 sub_02096D4C();
undefined4 ov85_021EA39C();
undefined4 ov85_021E9458();
undefined4 sub_0203769C();
undefined4 Handle2dMenuInput_DeleteOnFinish();
extern uint uRam021d1154 __asm__("sub_021D1154");

undefined4 ov85_021E94EC(int param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  undefined1 auStack_18 [2];
  undefined1 uStack_16;
  undefined4 uStack_14;

  iVar1 = sub_0203769C();
  if (iVar1 == 0) {
    if (*(int *)(*(int *)(param_1 + 0x10) + 0x30) != 0) {
      if ((uRam021d1154 & 0xc3) != 0) {
        PlaySE(0x5f2);
      }
      ov85_021E943C(param_1);
      return param_2;
    }
  }
  else if (*(int *)(*(int *)(param_1 + 0x10) + 0x28) != 0) {
    if ((uRam021d1154 & 0xc3) != 0) {
      PlaySE(0x5f2);
    }
    ov85_021E943C(param_1);
    return param_2;
  }
  iVar1 = ov85_021E9FD0();
  iVar2 = sub_02037454();
  if (iVar1 != iVar2) {
    ov85_021E943C(param_1);
    return param_2;
  }
  iVar1 = Handle2dMenuInput_DeleteOnFinish(*(undefined4 *)(param_1 + 0x330),0x66);
  if (iVar1 != -1) {
    if (iVar1 == -2) {
      iVar1 = sub_0203769C();
      if (iVar1 == 0) {
        uStack_14 = 0;
        sub_02096D4C(*(undefined4 *)(param_1 + 0x10),7,&uStack_14,1);
        ov85_021EA39C(param_1,1);
      }
      ov85_021E9458(param_1,0);
    }
    else {
      iVar1 = sub_0203769C();
      if (iVar1 == 0) {
        ov85_021E9458(param_1,0xb);
        ov85_021EA0EC(param_1,0xe,0);
      }
      else {
        func_0x020d4994(auStack_18,0,4);
        uStack_16 = 0;
        auStack_18[0] = sub_0203769C();
        *(undefined1 *)(param_1 + 0x4a50) = 1;
        *(undefined2 *)(param_1 + 0x4a5c) = 0;
        *(undefined4 *)(param_1 + 0x354) = 6;
        sub_02096D4C(*(undefined4 *)(param_1 + 0x10),2,auStack_18,4);
      }
    }
    *(undefined4 *)(param_1 + 0x330) = 0;
  }
  ov85_021E943C(param_1);
  return param_2;
}

