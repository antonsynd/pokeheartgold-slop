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
undefined4 func_0x020ccf80(void *) __asm__("sub_020CCF80");
undefined4 ov96_021EB06C();
undefined4 ov96_021EAF8C();
undefined4 func_0x020f2998() __asm__("sub_020F2998");

undefined4 ov96_0220FBEC(short *param_1,int param_2,undefined2 *param_3)

{
  short sVar1;
  int iVar2;
  int iVar3;
  int extraout_r1;
  int iVar4;
  int iVar5;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  undefined4 uStack_18;
  
  sVar1 = param_1[1];
  if (sVar1 < 0x120) {
    return 0;
  }
  iVar4 = 0;
  do {
    iStack_20 = 0;
    iStack_1c = 0;
    uStack_18 = 0;
    func_0x020f2998(iVar4,3);
    { __auto_type nug_result = func_0x020f2998(iVar4,3); __asm__ volatile("movs %0, r1" : "=l"(extraout_r1) : : "cc"); iVar2 = nug_result; }
    iVar5 = param_2 + iVar2 * 0xe4 + 8 + extraout_r1 * 0x48;
    if (*(int *)(iVar5 + 0xc) == 1) {
      ov96_021EB06C(*(undefined4 *)(iVar5 + 4),*(int *)(iVar5 + 0x1c) >> 0xc,
                    *(int *)(iVar5 + 0x20) >> 0xc,&iStack_24,&iStack_28);
      iStack_20 = (iStack_24 - *param_1) * 0x1000;
      iStack_1c = (iStack_28 - ((sVar1 + -0x120) * 0x10000 >> 0x10)) * 0x1000;
      iVar3 = func_0x020ccf80(&iStack_20);
      iVar5 = ov96_021EAF8C(*(undefined4 *)(iVar5 + 4));
      if (iVar3 <= (iVar5 + 0xe) * 0x1000) {
        *(char *)(param_3 + 2) = (char)iVar2;
        *(char *)((int)param_3 + 5) = (char)extraout_r1;
        *param_3 = (short)iStack_24;
        param_3[1] = (short)iStack_28;
        return 1;
      }
    }
    iVar4 = iVar4 + 1;
  } while (iVar4 < 0xc);
  return 0;
}

