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
undefined4 ov90_02259EE0(undefined4, undefined4, undefined4);
undefined4 ov90_02259BCC(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov90_02259DAC(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov90_02259E18(undefined4, undefined4);
undefined4 ov90_02259D50(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov90_022588A4(undefined4, undefined4);
undefined4 ov90_02259E8C(undefined4, undefined4);
undefined4 ov90_02259E38(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov90_0225888C(undefined4, undefined4);
extern undefined ov90_0225C1F0;

void ov90_0225B7FC(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;

  iVar2 = param_2 * 0x38;
  iVar3 = param_1 + 0x25c;
  ov90_02259BCC(iVar3 + iVar2,*(undefined1 *)(param_1 + 0x14),*(undefined1 *)(param_1 + 7),
                *(undefined4 *)(param_1 + 600),param_1 + 0x4c,param_2,
                *(undefined1 *)(param_1 + 0x15),param_1 + 0xa0,*(undefined4 *)(param_1 + 0x1e4),
                *(undefined2 *)(param_1 + 2));
  uVar1 = ov90_0225888C(param_1 + 0xc,param_2);
  uVar1 = ov90_022588A4(param_1 + 0xc,uVar1);
  ov90_02259D50(iVar3 + iVar2,param_1 + 0x58,*(undefined4 *)(param_1 + param_2 * 4 + 0x3c),8,0,uVar1
               );
  ov90_02259DAC(iVar3 + iVar2,param_1 + 0x58,*(undefined1 *)(param_1 + 5),
                *(undefined1 *)(param_1 + param_2 + 0x34),*(undefined1 *)(param_1 + param_2 + 0x38),
                8);
  if (*(char *)(param_1 + 7) == '\0') {
    uVar1 = 5;
  }
  else {
    uVar1 = 6;
  }
  ov90_02259E38(iVar3 + iVar2,param_1 + 0x58,*(undefined4 *)(param_1 + param_2 * 4 + 0x1c),
                (0xb0 - *(short *)(&ov90_0225C1F0 + (4 - (param_3 + 1)) * 2)) * 0x10000 >> 0x10,0,
                uVar1);
  ov90_02259E8C(iVar3 + iVar2,param_1 + 0x4c);
  ov90_02259E18(iVar3 + iVar2,param_3);
  ov90_02259EE0(iVar3 + iVar2,(int)*(short *)(&ov90_0225C1F0 + param_3 * 2),0);
  return;
}

