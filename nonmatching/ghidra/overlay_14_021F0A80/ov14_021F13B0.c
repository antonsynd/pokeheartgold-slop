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
undefined4 ov14_021E83F4();
undefined4 ov14_021F2A18();
undefined4 ov14_021F0234();
undefined4 ov14_021F685C();
undefined4 ov14_021E84A4();
undefined4 ov14_021E884C();
undefined4 ov14_021F6654();
undefined4 Party_GetCount();

undefined4 ov14_021F13B0(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  ov14_021F2A18(*(undefined4 *)(param_1 + 0x34),9,0);
  iVar1 = Party_GetCount(*(undefined4 *)(param_1 + 8));
  if (iVar1 != 6) {
    ov14_021F6654(*(undefined4 *)(param_1 + 0x34),0x27);
    ov14_021E84A4(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
    ov14_021E884C(*(undefined4 *)(param_1 + 0x34));
    uVar2 = ov14_021F0234(param_1,0x21e9435,0x53);
    return uVar2;
  }
  ov14_021E83F4(*(undefined4 *)(*(int *)(param_1 + 0x34) + 0x2f0));
  ov14_021F685C(param_1,0,2,0x25);
  *(undefined4 *)(param_1 + 0x30) = 0xe;
  return 6;
}

