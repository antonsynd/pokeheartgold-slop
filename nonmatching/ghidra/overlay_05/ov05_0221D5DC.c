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
undefined4 func_0x020137c0(undefined4, undefined4) __asm__("sub_020137C0");
undefined4 func_0x02013534(undefined4, undefined4) __asm__("sub_02013534");
undefined4 ov05_0221D530(undefined4, undefined4, undefined4);

void ov05_0221D5DC(int *param_1)

{
  int iVar1;
  
  iVar1 = func_0x02013534(8,*(undefined4 *)(*param_1 + 0x24));
  param_1[0x2d1] = iVar1;
  ov05_0221D530(param_1,0,*(undefined4 *)(*param_1 + 0x14));
  ov05_0221D530(param_1,2,*(undefined4 *)(*param_1 + 0x18));
  iVar1 = *param_1;
  if (*(char *)(iVar1 + 0x29) == '\x01') {
    ov05_0221D530(param_1,1,*(undefined4 *)(iVar1 + 0x1c));
    ov05_0221D530(param_1,3,*(undefined4 *)(*param_1 + 0x20));
    return;
  }
  ov05_0221D530(param_1,1,*(undefined4 *)(iVar1 + 0x14));
  ov05_0221D530(param_1,3,*(undefined4 *)(*param_1 + 0x18));
  func_0x020137c0(param_1[0x2d3],0);
  func_0x020137c0(param_1[0x2d5],0);
  return;
}

