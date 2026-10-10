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
undefined4 ov10_0221F47C();
unsigned short func_0x0223bd98(void *) __asm__("sub_0223BD98");
undefined4 _s32_div_f(void);
unsigned char func_0x0223ab0c(void *, int) __asm__("sub_0223AB0C");
undefined4 func_0x02251d28(void *, void *, int, int, int, int, int, void *) __asm__("sub_02251D28");
undefined4 func_0x0223a7e0(void *) __asm__("sub_0223A7E0");
undefined4 func_0x0223ab6c(void *, int) __asm__("sub_0223AB6C");
undefined4 func_0x0223aad8(void *, int) __asm__("sub_0223AAD8");
undefined4 MaskOfFlagNo(int);

undefined4 ov10_0221FD34(undefined4 param_1,int param_2,int param_3,int param_4)

{
  byte bVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int extraout_r1;
  int extraout_r1_00;
  int iVar5;
  int local_30;
  int local_20;
  uint local_1c;
  int iStack_18;

  iStack_18 = param_4;
  bVar1 = func_0x0223ab0c(param_1,param_3);
  uVar2 = func_0x0223aad8(param_1,bVar1 ^ 1);
  uVar2 = uVar2 & 0xff;
  uVar3 = MaskOfFlagNo(uVar2);
  if ((uVar3 & *(byte *)(param_2 + 0x3108)) == 0) {
    local_20 = 0;
    iVar5 = param_2 + param_3 * 0xc0;
    do {
      uVar3 = (uint)*(ushort *)(iVar5 + 0x2d4c);
      iVar4 = ov10_0221F47C(param_1,param_2,param_3,uVar3);
      if (uVar3 != 0) {
        local_1c = 0;
        func_0x02251d28(param_1,param_2,uVar3,iVar4,param_3,uVar2,0,&local_1c);
        if ((local_1c & 2) != 0) {
          if (param_4 != 0) {
            return 1;
          }
          func_0x0223bd98(param_1);
          _s32_div_f();
          if (extraout_r1 != 0) {
            return 1;
          }
        }
      }
      iVar5 = iVar5 + 2;
      local_20 = local_20 + 1;
    } while (local_20 < 4);
  }
  uVar3 = func_0x0223a7e0(param_1);
  if ((uVar3 & 2) == 0) {
    return 0;
  }
  uVar2 = func_0x0223ab6c(param_1,uVar2);
  uVar3 = MaskOfFlagNo(uVar2 & 0xff);
  if ((uVar3 & *(byte *)(param_2 + 0x3108)) == 0) {
    local_30 = 0;
    iVar5 = param_2 + param_3 * 0xc0;
    do {
      uVar3 = (uint)*(ushort *)(iVar5 + 0x2d4c);
      iVar4 = ov10_0221F47C(param_1,param_2,param_3,uVar3);
      if (uVar3 != 0) {
        local_1c = 0;
        func_0x02251d28(param_1,param_2,uVar3,iVar4,param_3,uVar2 & 0xff,0,&local_1c);
        if ((local_1c & 2) != 0) {
          if (param_4 != 0) {
            return 1;
          }
          func_0x0223bd98(param_1);
          _s32_div_f();
          if (extraout_r1_00 != 0) {
            return 1;
          }
        }
      }
      iVar5 = iVar5 + 2;
      local_30 = local_30 + 1;
    } while (local_30 < 4);
  }
  return 0;
}

