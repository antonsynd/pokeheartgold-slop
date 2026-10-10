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
undefined4 ov103_021EDC58();
undefined4 sub_0201980C();
undefined4 ov103_021EDA70();
undefined4 ov103_021ED0A0();
undefined4 ov103_021ED00C();
undefined4 ov103_021ED0C0();
undefined4 ov103_021EE0CC();
undefined4 ov103_021EE8A8();
undefined4 ov103_021EE644();
undefined4 ov103_021EDC00();

void ov103_021EDDE4(int param_1)

{
  ushort uVar1;
  
  ov103_021EDC00();
  ov103_021EDC58(param_1);
  ov103_021ED0A0(param_1);
  ov103_021ED00C(param_1);
  if (*(ushort *)(*(int *)(param_1 + 0xc) + 0x2e0) < 0xb) {
    ov103_021EE0CC(*(int *)(param_1 + 0xc),0,0);
    ov103_021EE0CC(*(undefined4 *)(param_1 + 0xc),1,0);
  }
  uVar1 = *(ushort *)(*(int *)(param_1 + 0xc) + 0x2e2);
  if (uVar1 < *(ushort *)(param_1 + 0x1c)) {
    *(ushort *)(param_1 + 0x1c) = uVar1;
    *(undefined1 *)(param_1 + 0x1e) = 0;
  }
  ov103_021EE644(param_1);
  ov103_021ED0C0(param_1);
  sub_0201980C(*(undefined4 *)(*(int *)(param_1 + 0xc) + 4),10);
  ov103_021EE8A8(param_1,1);
  ov103_021EDA70(param_1,1,0x12);
  return;
}

