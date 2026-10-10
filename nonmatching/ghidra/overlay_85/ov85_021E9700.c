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
undefined4 ov85_021E9458();
undefined4 sub_02096D4C();
undefined4 ov85_021E9FD0();
undefined4 sub_0205A904();
undefined4 ov85_021EA39C();
undefined4 ov85_021E943C();
undefined4 PlaySE();
undefined4 sub_0203769C();
undefined4 GF_AssertFail();
undefined4 Handle2dMenuInput_DeleteOnFinish();
extern uint uRam021d1154 __asm__("sub_021D1154");

undefined4 ov85_021E9700(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  iVar3 = *(int *)(param_1 + 0x10);
  uStack_14 = param_4;
  iVar2 = ov85_021E9FD0();
  if ((*(int *)(iVar3 + 0x2c) == iVar2) && (*(int *)(iVar3 + 0x30) == 0)) {
    iVar2 = Handle2dMenuInput_DeleteOnFinish(*(undefined4 *)(param_1 + 0x330),0x66);
    if (iVar2 != -1) {
      if (iVar2 == -2) {
        uStack_18 = 0;
        sub_02096D4C(*(undefined4 *)(param_1 + 0x10),7,&uStack_18,1);
        ov85_021EA39C(param_1,1);
        ov85_021E9458(param_1,0);
      }
      else {
        iVar2 = sub_0203769C();
        if (iVar2 == 0) {
          *(undefined4 *)(param_1 + 0x354) = 0x18;
          uVar1 = ov85_021E9FD0();
          *(undefined1 *)(param_1 + 0x4a52) = uVar1;
          sub_0205A904(0xc);
        }
        else {
          GF_AssertFail();
        }
      }
      *(undefined4 *)(param_1 + 0x330) = 0;
    }
    ov85_021E943C(param_1);
    return param_2;
  }
  if ((uRam021d1154 & 0xc3) != 0) {
    PlaySE(0x5f2);
  }
  ov85_021E943C(param_1);
  return param_2;
}

