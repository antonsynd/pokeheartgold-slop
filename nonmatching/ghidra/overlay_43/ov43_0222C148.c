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
undefined4 func_0x02018648() __asm__("sub_02018648");
undefined4 ov43_0222C620();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 func_0x0200b484() __asm__("sub_0200B484");
undefined4 ov43_0222AD00();
undefined4 ov43_0222C550();
undefined4 sub_0202C090();
undefined4 sub_0202C6F4();
undefined4 ov43_0222AB20();

void ov43_0222C148(int param_1,uint *param_2,undefined4 *param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined2 uStack_30;
  undefined2 uStack_2e;
  undefined2 uStack_2c;
  undefined2 uStack_2a;
  undefined2 uStack_28;
  undefined2 uStack_26;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined1 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  uVar1 = sub_0202C6F4(param_2[1]);
  iVar2 = ov43_0222C620(param_1);
  iVar3 = sub_0202C090(uVar1,*(undefined1 *)((int)param_2 + iVar2 + 0x18),8);
  func_0x020d4994(&uStack_30,0,0x18);
  uStack_30 = 0x403;
  uStack_2e = 0xf01;
  uStack_2c = 0;
  uStack_2a = 199;
  uStack_28 = 0xac;
  uStack_26 = 0x88;
  if (iVar3 == 2) {
    uStack_24 = *(undefined4 *)(param_1 + 0xe8);
  }
  else {
    uStack_24 = *(undefined4 *)(param_1 + 0xe4);
  }
  uStack_20 = *param_3;
  uStack_1c = 4;
  uVar1 = func_0x02018648(param_3[0x17],&uStack_30,*param_2 & 0xff,0xd,5,0x11,0,0x222c631,0,1);
  *(undefined4 *)(param_1 + 0xec) = uVar1;
  ov43_0222AB20(param_3,param_2[1],*(undefined1 *)((int)param_2 + iVar2 + 0x18),param_4);
  ov43_0222C550(param_1,param_3,0xc,param_4);
  ov43_0222AD00(param_3,0);
  func_0x0200b484(4,8,0,0x3d,1);
  return;
}

