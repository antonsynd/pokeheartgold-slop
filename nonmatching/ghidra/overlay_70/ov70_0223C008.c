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
undefined4 ov70_02238130();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov70_0223BFA8();
undefined4 ov70_022381A4();

undefined4 ov70_0223C008(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  char cVar2;
  undefined2 uStack_18;
  undefined1 uStack_16;
  undefined1 uStack_15;
  undefined1 uStack_14;
  undefined1 uStack_13;
  char cStack_12;
  undefined1 uStack_11;
  undefined4 uStack_10;

  cVar2 = '\x03';
  uStack_10 = param_4;
  iVar1 = ov70_0223BFA8(param_1,1);
  if (iVar1 != 0) {
    cVar2 = '\x05';
  }
  iVar1 = ov70_0223BFA8(param_1,0);
  if (iVar1 != 0) {
    cVar2 = cVar2 + '\x02';
  }
  if (*(int *)(param_1 + 0x12cc) == 0) {
    ov70_02238130(param_1 + 0xb8a,cVar2,param_1 + 0x260);
  }
  else {
    func_0x020d4994(&uStack_18,0,8);
    uStack_18 = *(undefined2 *)(param_1 + 0xb8a);
    uStack_16 = *(undefined1 *)(param_1 + 0xb8c);
    uStack_15 = *(undefined1 *)(param_1 + 0xb8d);
    uStack_14 = *(undefined1 *)(param_1 + 0xb8e);
    uStack_13 = *(undefined1 *)(param_1 + 0xb8f);
    uStack_11 = (undefined1)*(undefined4 *)(param_1 + 0x12cc);
    cStack_12 = cVar2;
    ov70_022381A4(&uStack_18,param_1 + 0x260);
  }
  *(undefined2 *)(param_1 + 0xb90) = *(undefined2 *)(param_1 + 0xb8a);
  *(undefined2 *)(param_1 + 0xb92) = *(undefined2 *)(param_1 + 0xb8c);
  *(undefined2 *)(param_1 + 0xb94) = *(undefined2 *)(param_1 + 0xb8e);
  *(undefined4 *)(param_1 + 0xb98) = *(undefined4 *)(param_1 + 0x12cc);
  *(undefined4 *)(param_1 + 0x1604) = 0;
  *(undefined4 *)(param_1 + 0x2c) = 0x11;
  *(undefined2 *)(param_1 + 0x11de) = 0;
  return 3;
}

