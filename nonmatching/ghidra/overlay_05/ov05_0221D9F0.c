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
undefined4 sub_02014DB4();
undefined4 sub_02015524();
undefined4 sub_02015264();
undefined4 sub_02014DA0();
undefined4 func_0x02026eb4() __asm__("sub_02026EB4");
undefined4 Heap_Alloc();
undefined4 sub_02015494();
undefined4 sub_0201526C();
undefined4 func_0x02023240() __asm__("sub_02023240");
extern ushort uRam04000060 __asm__("sub_04000060");

void ov05_0221D9F0(int *param_1)

{
  int iVar1;
  undefined4 uVar2;

  iVar1 = func_0x02026eb4(*(undefined4 *)(*param_1 + 0x24),0,4,0,2,0);
  param_1[0x2d6] = iVar1;
  uRam04000060 = uRam04000060 & 0xcfff | 8;
  sub_02014DA0();
  iVar1 = Heap_Alloc(*(undefined4 *)(*param_1 + 0x24),0x4800);
  param_1[0x2d8] = iVar1;
  iVar1 = sub_02014DB4(0x221db4d,0x221db71,param_1[0x2d8],0x4800,1,*(undefined4 *)(*param_1 + 0x24))
  ;
  param_1[0x2d7] = iVar1;
  uVar2 = sub_02015524(param_1[0x2d7]);
  func_0x02023240(0x1000,0x384000,uVar2);
  uVar2 = sub_02015264(0x3b,2,*(undefined4 *)(*param_1 + 0x24));
  sub_0201526C(param_1[0x2d7],uVar2,10,1);
  sub_02015494(param_1[0x2d7],0,0,0);
  sub_02015494(param_1[0x2d7],1,0,0);
  sub_02015494(param_1[0x2d7],2,0,0);
  sub_02015494(param_1[0x2d7],3,0,0);
  sub_02015494(param_1[0x2d7],4,0,0);
  return;
}

