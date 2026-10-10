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
undefined4 sub_0201980C();
undefined4 ov103_021EE60C();
undefined4 ov103_021EE374();
undefined4 ov103_021EDA70();
undefined4 ov103_021EDBB0();
undefined4 Mail_GetType();
undefined4 ov103_021EE8A8();
undefined4 ov103_021EE0CC();
undefined4 ov103_021ECFFC();
undefined4 ov103_021EE888();
undefined4 MailToItemId();
undefined4 ov103_021EDC68();
undefined4 ov103_021EDA40();
undefined4 func_0x020186a4() __asm__("sub_020186A4");
undefined4 ov103_021EDB60();

undefined8 ov103_021ED7E4(int param_1)

{
  uint uVar1;
  undefined4 uVar2;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined8 uVar3;

  uVar1 = func_0x020186a4(*(undefined4 *)(*(int *)(param_1 + 0xc) + 0x244));
  uVar2 = 0xfffffffe;
  if (uVar1 == 0xffffffff) {
    uVar2 = 0xffffffff;
LAB_021ed8ca:
    return CONCAT44(uVar2,0xe);
  }
  if (0xfffffffd < uVar1) {
LAB_021ed89e:
    ov103_021ECFFC(param_1);
    ov103_021EE888(param_1);
    sub_0201980C(*(undefined4 *)(*(int *)(param_1 + 0xc) + 4),10);
    ov103_021EDB60(*(undefined4 *)(param_1 + 0xc),0);
    ov103_021EE0CC(*(undefined4 *)(param_1 + 0xc),2,1);
    return CONCAT44(extraout_r1_00,9);
  }
  switch(uVar1) {
  case 0:
    ov103_021ECFFC(param_1);
    ov103_021EE888(param_1);
    ov103_021EE0CC(*(undefined4 *)(param_1 + 0xc),2,1);
    ov103_021EE60C(*(undefined4 *)(param_1 + 0xc));
    ov103_021EE374(*(undefined4 *)(param_1 + 0xc));
    ov103_021EDBB0(param_1);
    return CONCAT44(extraout_r1,0xf);
  case 1:
    ov103_021ECFFC(param_1);
    ov103_021EE8A8(param_1,0);
    uVar3 = ov103_021EDA70(param_1,0,0x11);
    return uVar3;
  case 2:
    ov103_021ECFFC(param_1);
    Mail_GetType(*(undefined4 *)
                  (*(int *)(param_1 + 0xc) + (uint)*(byte *)(param_1 + 0x1f) * 4 + 0x27c));
    uVar2 = MailToItemId();
    ov103_021EDC68(param_1,0xe,uVar2,0);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0x28) = 6;
    uVar3 = ov103_021EDA40(param_1,1);
    return uVar3;
  case 3:
    goto LAB_021ed89e;
  default:
    goto LAB_021ed8ca;
  }
}

