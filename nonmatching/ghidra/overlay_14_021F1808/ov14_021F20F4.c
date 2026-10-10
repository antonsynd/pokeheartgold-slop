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
typedef void code(void);
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
undefined4 func_0x02078398() __asm__("sub_02078398");
undefined4 ov14_021F29E4();
undefined4 ov14_021E6094();
undefined4 PlaySE();
undefined4 ov14_021E64D0();
undefined4 ov14_021E7588();
undefined4 ov14_021F391C();
undefined4 ov14_021F68C0();
undefined4 ov14_021F40DC();
undefined4 ov14_021F2ED0();
undefined4 Save_Bag_Get();
undefined4 ov14_021E60C0();
undefined4 ov14_021F6654();
undefined4 ov14_021E88F8();

undefined4 ov14_021F20F4(undefined4 *param_1,undefined4 param_2,undefined4 param_3,uint param_4)

{
  undefined4 uVar1;
  int iVar2;
  uint uStack_10;
  
  uStack_10 = param_4;
  uVar1 = Save_Bag_Get(*(undefined4 *)*param_1);
  iVar2 = func_0x02078398(uVar1,*(undefined2 *)(param_1[0xd] + 0x88c8),1,10);
  if (iVar2 == 0) {
    PlaySE(0x5f3);
    ov14_021F68C0(param_1,6,0x25);
    param_1[0xc] = 0x7a;
    return 6;
  }
  uStack_10 = uStack_10 & 0xffff0000;
  ov14_021E6094(param_1,*(undefined1 *)((int)param_1 + 0x21),6,&uStack_10);
  ov14_021E60C0(param_1,*(undefined1 *)((int)param_1 + 0x1f),*(undefined1 *)((int)param_1 + 0x21));
  iVar2 = ov14_021E64D0();
  if (iVar2 == 1) {
    ov14_021F2ED0(param_1,*(undefined1 *)((int)param_1 + 0x1f),(uint)*(byte *)((int)param_1 + 0x21),
                  *(undefined1 *)(param_1[0xd] + (uint)*(byte *)((int)param_1 + 0x21) + 0x4094));
  }
  ov14_021E7588(param_1,*(undefined1 *)((int)param_1 + 0x21));
  ov14_021F40DC(param_1);
  ov14_021F6654(param_1[0xd],0x25);
  ov14_021F391C(param_1[0xd],1);
  ov14_021F29E4(param_1[0xd],0xb,2);
  ov14_021E88F8(*(undefined4 *)(param_1[0xd] + 0x2f0));
  return 0x79;
}

