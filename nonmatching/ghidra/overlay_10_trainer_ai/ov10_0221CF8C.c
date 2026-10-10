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
undefined4 ov10_0221EF24(undefined4, undefined4);
undefined4 func_0x0223a7f4(undefined4, undefined4) __asm__("sub_0223A7F4");
undefined4 func_0x0223ab6c(undefined4, undefined4) __asm__("sub_0223AB6C");
undefined4 ov10_0221EF34(undefined4, undefined4);
undefined4 GetMonData(undefined4, undefined4, undefined4);
undefined4 func_0x0223a834(undefined4, undefined4) __asm__("sub_0223A834");
undefined4 ov10_0221EEF0(undefined4);
undefined4 Party_GetMonByIndex(undefined4, undefined4);

void ov10_0221CF8C(int param_1,int param_2)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  uint uStack_24;
  uint uStack_20;

  ov10_0221EF24(param_2,1);
  uVar1 = ov10_0221EEF0(param_2);
  *(undefined4 *)(param_2 + 0x35c) = 0;
  iVar2 = ov10_0221EF34(param_2,uVar1);
  uVar3 = func_0x0223a7f4(param_1,iVar2);
  if ((*(uint *)(param_1 + 0x2c) & 2) == 0) {
    uStack_24 = (uint)*(byte *)(param_2 + iVar2 + 0x219c);
    uStack_20 = uStack_24;
  }
  else {
    uStack_20 = (uint)*(byte *)(param_2 + iVar2 + 0x219c);
    iVar4 = func_0x0223ab6c(param_1,iVar2);
    uStack_24 = (uint)*(byte *)(param_2 + iVar4 + 0x219c);
  }
  uVar6 = 0;
  iVar4 = func_0x0223a834(param_1,iVar2);
  if (0 < iVar4) {
    do {
      uVar5 = Party_GetMonByIndex(uVar3,uVar6);
      if ((((uVar6 != uStack_20) && (uVar6 != uStack_24)) &&
          (iVar4 = GetMonData(uVar5,0xa3,0), iVar4 != 0)) &&
         ((iVar4 = GetMonData(uVar5,0xae,0), iVar4 != 0 &&
          (iVar4 = GetMonData(uVar5,0xae,0), iVar4 != 0x1ee)))) {
        *(int *)(param_2 + 0x35c) = *(int *)(param_2 + 0x35c) + 1;
      }
      uVar6 = uVar6 + 1;
      iVar4 = func_0x0223a834(param_1,iVar2);
    } while ((int)uVar6 < iVar4);
  }
  return;
}

