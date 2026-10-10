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
undefined4 func_0x022527cc(undefined4, undefined4) __asm__("sub_022527CC");
undefined4 func_0x0223a7e0(undefined4) __asm__("sub_0223A7E0");
undefined4 ov10_0221FD34(void);
undefined4 func_0x0223ab6c(undefined4, undefined4) __asm__("sub_0223AB6C");
undefined4 GetMonData(undefined4, undefined4, undefined4);
undefined4 func_0x020f2998(undefined4, undefined4) __asm__("sub_020F2998");
undefined4 func_0x0223a834(undefined4, undefined4) __asm__("sub_0223A834");
undefined4 func_0x0223a880(undefined4, undefined4, undefined4) __asm__("sub_0223A880");
undefined4 func_0x0223bd98(undefined4) __asm__("sub_0223BD98");

undefined4 ov10_0221FE8C(undefined4 param_1,int param_2,uint param_3)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  int extraout_r1;
  uint uVar8;
  uint uStack_18;
  
  iVar2 = ov10_0221FD34();
  if (iVar2 != 0) {
    uVar3 = func_0x0223bd98(param_1);
    func_0x020f2998(uVar3,3);
    if (extraout_r1 != 0) {
      return 0;
    }
  }
  uVar4 = (uint)*(ushort *)(param_2 + param_3 * 2 + 0x3064);
  if (uVar4 == 0) {
    return 0;
  }
  iVar2 = param_2 + uVar4 * 0x10;
  if (*(char *)(iVar2 + 0x3e1) == '\0') {
    return 0;
  }
  cVar1 = *(char *)(iVar2 + 0x3e2);
  if (cVar1 == '\n') {
    uStack_18 = 0x12;
  }
  else if (cVar1 == '\v') {
    uStack_18 = 0xb;
  }
  else {
    if (cVar1 != '\r') {
      return 0;
    }
    uStack_18 = 10;
  }
  uVar4 = func_0x022527cc(param_2,param_3);
  if (uStack_18 != uVar4) {
    uVar8 = param_3 & 0xff;
    uVar5 = func_0x0223a7e0(param_1);
    uVar4 = uVar8;
    if (((uVar5 & 0x10) == 0) && (uVar5 = func_0x0223a7e0(param_1), (uVar5 & 8) == 0)) {
      uVar4 = func_0x0223ab6c(param_1,param_3);
      uVar4 = uVar4 & 0xff;
    }
    iVar2 = func_0x0223a834(param_1,param_3);
    uVar5 = 0;
    if (0 < iVar2) {
      do {
        uVar3 = func_0x0223a880(param_1,param_3,uVar5);
        iVar6 = GetMonData(uVar3,0xa3,0);
        if ((((((iVar6 != 0) && (iVar6 = GetMonData(uVar3,0xae,0), iVar6 != 0)) &&
              (iVar6 = GetMonData(uVar3,0xae,0), iVar6 != 0x1ee)) &&
             ((uVar5 != *(byte *)(param_2 + uVar8 + 0x219c) &&
              (uVar5 != *(byte *)(param_2 + uVar4 + 0x219c))))) &&
            ((uVar5 != *(byte *)(param_2 + uVar8 + 0x21a4) &&
             ((uVar5 != *(byte *)(param_2 + uVar4 + 0x21a4) &&
              (uVar7 = GetMonData(uVar3,10,0), uStack_18 == (uVar7 & 0xff))))))) &&
           (uVar7 = func_0x0223bd98(param_1), (uVar7 & 1) != 0)) {
          *(char *)(param_2 + param_3 + 0x21a4) = (char)uVar5;
          return 1;
        }
        uVar5 = uVar5 + 1;
      } while ((int)uVar5 < iVar2);
    }
    return 0;
  }
  return 0;
}

