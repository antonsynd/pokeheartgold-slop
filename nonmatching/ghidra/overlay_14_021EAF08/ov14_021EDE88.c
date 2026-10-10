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
undefined4 ManagedSprite_SetPositionXY();
undefined4 ov14_021F0234();
undefined4 ov14_021F08F0();
undefined4 PlaySE();
undefined4 func_0x0201a018() __asm__("sub_0201A018");
undefined4 func_0x02019f7c() __asm__("sub_02019F7C");
undefined4 ov14_021E7F4C();
undefined4 ov14_021E637C();
undefined4 func_0x02020a0c() __asm__("sub_02020A0C");
undefined4 ov14_021E765C();

void ov14_021EDE88(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined1 uStack_10;
  undefined1 auStack_f [3];
  undefined4 uStack_c;

  uStack_c = param_4;
  PlaySE(0x5ea);
  func_0x02019f7c(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),*(undefined1 *)(param_1 + 0x21));
  uVar1 = func_0x0201a018(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2c),
                          *(undefined1 *)(param_1 + 0x21));
  func_0x02020a0c(uVar1,auStack_f,&uStack_10);
  ManagedSprite_SetPositionXY
            (*(undefined4 *)(*(int *)(param_1 + 0x34) + 800),auStack_f[0],uStack_10);
  *(undefined1 *)(param_1 + 0x21) = 0xff;
  ov14_021E637C(param_1);
  ov14_021F08F0(param_1);
  ov14_021E765C(param_1);
  ov14_021E7F4C(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
  ov14_021F0234(param_1,0x21e9519,0x56);
  return;
}

