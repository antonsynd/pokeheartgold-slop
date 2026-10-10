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
undefined4 func_0x0223a880() __asm__("sub_0223A880");
undefined4 ov10_0221F47C();
undefined4 func_0x0223a7e0() __asm__("sub_0223A7E0");
undefined4 func_0x02251d28() __asm__("sub_02251D28");
undefined4 func_0x0223a834() __asm__("sub_0223A834");
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 func_0x02258bb4() __asm__("sub_02258BB4");
undefined4 GetMonData();
undefined4 func_0x0223ab6c() __asm__("sub_0223AB6C");
undefined4 func_0x02252054() __asm__("sub_02252054");
undefined4 func_0x0224ede0() __asm__("sub_0224EDE0");
undefined4 func_0x0223bd98() __asm__("sub_0223BD98");
undefined4 func_0x02255830() __asm__("sub_02255830");
undefined4 func_0x022527cc() __asm__("sub_022527CC");

undefined4 ov10_0221F7F0(undefined4 param_1,int param_2,uint param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  int extraout_r1;
  int extraout_r1_00;
  int iVar14;
  int iStack_b8;
  uint uStack_a0;
  uint uStack_9c;
  int iStack_8c;
  int iStack_74;
  uint uStack_68;
  int iStack_60;
  int iStack_5c;
  uint uStack_18;
  
  uVar2 = func_0x0223a7e0();
  iVar14 = 2;
  if ((uVar2 & 2) == 0) {
    iVar14 = 0;
  }
  iStack_74 = 0;
  iStack_5c = 0;
  iStack_8c = param_2 + param_3 * 0xc0;
  iVar3 = param_2 + iVar14 * 0xc0;
  do {
    uVar2 = (uint)*(ushort *)(iStack_8c + 0x2d4c);
    uVar4 = ov10_0221F47C(param_1,param_2,param_3,uVar2);
    if ((uVar2 != 0) && (*(char *)(param_2 + uVar2 * 0x10 + 0x3e1) != '\0')) {
      iStack_74 = iStack_74 + 1;
      uStack_18 = 0;
      if (*(int *)(param_2 + 0x2d8c) != 0) {
        func_0x02251d28(param_1,param_2,uVar2,uVar4,param_3,0,0,&uStack_18);
      }
      if ((uStack_18 & 8) == 0) {
        return 0;
      }
      uStack_18 = 0;
      if (*(int *)(iVar3 + 0x2d8c) != 0) {
        func_0x02251d28(param_1,param_2,uVar2,uVar4,param_3,iVar14,0,&uStack_18);
      }
      if ((uStack_18 & 8) == 0) {
        return 0;
      }
    }
    iStack_8c = iStack_8c + 2;
    iStack_5c = iStack_5c + 1;
    if (3 < iStack_5c) {
      if (iStack_74 < 2) {
        return 0;
      }
      uVar2 = param_3 & 0xff;
      uVar5 = func_0x0223a7e0(param_1);
      uStack_68 = uVar2;
      if (((uVar5 & 0x10) == 0) && (uVar5 = func_0x0223a7e0(param_1), (uVar5 & 8) == 0)) {
        uVar5 = func_0x0223ab6c(param_1,param_3);
        uStack_68 = uVar5 & 0xff;
      }
      iVar6 = func_0x0223a834(param_1,param_3);
      uStack_a0 = 0;
      if (0 < iVar6) {
        do {
          uVar4 = func_0x0223a880(param_1,param_3,uStack_a0);
          iVar7 = GetMonData(uVar4,0xa3,0);
          if (((((iVar7 != 0) && (iVar7 = GetMonData(uVar4,0xae,0), iVar7 != 0)) &&
               (iVar7 = GetMonData(uVar4,0xae,0), iVar7 != 0x1ee)) &&
              ((uStack_a0 != *(byte *)(param_2 + uVar2 + 0x219c) &&
               (uStack_a0 != *(byte *)(param_2 + uStack_68 + 0x219c))))) &&
             ((uStack_a0 != *(byte *)(param_2 + uVar2 + 0x21a4) &&
              (uStack_a0 != *(byte *)(param_2 + uStack_68 + 0x21a4))))) {
            iStack_60 = 0;
            do {
              uVar5 = GetMonData(uVar4,iStack_60 + 0x36,0);
              uVar5 = uVar5 & 0xffff;
              uVar8 = func_0x02258bb4(param_1,param_2,uVar4,uVar5);
              if ((uVar5 != 0) && (*(char *)(param_2 + uVar5 * 0x10 + 0x3e1) != '\0')) {
                uStack_18 = 0;
                if (*(int *)(param_2 + 0x2d8c) != 0) {
                  uVar9 = GetMonData(uVar4,10,0);
                  uVar10 = func_0x022527cc(param_2,0);
                  uVar11 = func_0x02255830(param_2,0);
                  uVar12 = func_0x0224ede0(param_2,0,0x1b,0);
                  uVar13 = func_0x0224ede0(param_2,0,0x1c,0);
                  func_0x02252054(param_2,uVar5,uVar8,uVar9,uVar10,uVar11,uVar12,uVar13,&uStack_18);
                }
                if ((uStack_18 & 2) != 0) {
                  uVar9 = func_0x0223bd98(param_1);
                  func_0x020f2998(uVar9,3);
                  if (extraout_r1 < 2) {
                    *(char *)(param_2 + param_3 + 0x21a4) = (char)uStack_a0;
                    return 1;
                  }
                }
                uStack_18 = 0;
                if (*(int *)(iVar3 + 0x2d8c) != 0) {
                  uVar9 = GetMonData(uVar4,10,0);
                  uVar10 = func_0x022527cc(param_2,iVar14);
                  uVar11 = func_0x02255830(param_2,iVar14);
                  uVar12 = func_0x0224ede0(param_2,iVar14,0x1b,0);
                  uVar13 = func_0x0224ede0(param_2,iVar14,0x1c,0);
                  func_0x02252054(param_2,uVar5,uVar8,uVar9,uVar10,uVar11,uVar12,uVar13,&uStack_18);
                }
                if ((uStack_18 & 2) != 0) {
                  uVar8 = func_0x0223bd98(param_1);
                  func_0x020f2998(uVar8,3);
                  if (extraout_r1_00 < 2) {
                    *(char *)(param_2 + param_3 + 0x21a4) = (char)uStack_a0;
                    return 1;
                  }
                }
              }
              iStack_60 = iStack_60 + 1;
            } while (iStack_60 < 4);
          }
          uStack_a0 = uStack_a0 + 1;
        } while ((int)uStack_a0 < iVar6);
      }
      uStack_9c = 0;
      if (0 < iVar6) {
        do {
          uVar4 = func_0x0223a880(param_1,param_3,uStack_9c);
          iVar7 = GetMonData(uVar4,0xa3,0);
          if ((((iVar7 != 0) && (iVar7 = GetMonData(uVar4,0xae,0), iVar7 != 0)) &&
              (iVar7 = GetMonData(uVar4,0xae,0), iVar7 != 0x1ee)) &&
             (((uStack_9c != *(byte *)(param_2 + uVar2 + 0x219c) &&
               (uStack_9c != *(byte *)(param_2 + uStack_68 + 0x219c))) &&
              ((uStack_9c != *(byte *)(param_2 + uVar2 + 0x21a4) &&
               (uStack_9c != *(byte *)(param_2 + uStack_68 + 0x21a4))))))) {
            iStack_b8 = 0;
            do {
              uVar5 = GetMonData(uVar4,iStack_b8 + 0x36,0);
              uVar5 = uVar5 & 0xffff;
              uVar8 = func_0x02258bb4(param_1,param_2,uVar4,uVar5);
              if ((uVar5 != 0) && (*(char *)(param_2 + uVar5 * 0x10 + 0x3e1) != '\0')) {
                uStack_18 = 0;
                if (*(int *)(param_2 + 0x2d8c) != 0) {
                  uVar9 = GetMonData(uVar4,10,0);
                  uVar10 = func_0x022527cc(param_2,0);
                  uVar11 = func_0x02255830(param_2,0);
                  uVar12 = func_0x0224ede0(param_2,0,0x1b,0);
                  uVar13 = func_0x0224ede0(param_2,0,0x1c,0);
                  func_0x02252054(param_2,uVar5,uVar8,uVar9,uVar10,uVar11,uVar12,uVar13,&uStack_18);
                }
                if (uStack_18 == 0) {
                  iVar7 = func_0x0223bd98(param_1);
                  uVar1 = iVar7 >> 0x1f;
                  if ((iVar7 * -0x80000000 + uVar1 >> 0x1f | uVar1 << 1) == uVar1) {
                    *(char *)(param_2 + param_3 + 0x21a4) = (char)uStack_9c;
                    return 1;
                  }
                }
                uStack_18 = 0;
                if (*(int *)(iVar3 + 0x2d8c) != 0) {
                  uVar9 = GetMonData(uVar4,10,0);
                  uVar10 = func_0x022527cc(param_2,iVar14);
                  uVar11 = func_0x02255830(param_2,iVar14);
                  uVar12 = func_0x0224ede0(param_2,iVar14,0x1b,0);
                  uVar13 = func_0x0224ede0(param_2,iVar14,0x1c,0);
                  func_0x02252054(param_2,uVar5,uVar8,uVar9,uVar10,uVar11,uVar12,uVar13,&uStack_18);
                }
                if (uStack_18 == 0) {
                  iVar7 = func_0x0223bd98(param_1);
                  uVar5 = iVar7 >> 0x1f;
                  if ((iVar7 * -0x80000000 + uVar5 >> 0x1f | uVar5 << 1) == uVar5) {
                    *(char *)(param_2 + param_3 + 0x21a4) = (char)uStack_9c;
                    return 1;
                  }
                }
              }
              iStack_b8 = iStack_b8 + 1;
            } while (iStack_b8 < 4);
          }
          uStack_9c = uStack_9c + 1;
        } while ((int)uStack_9c < iVar6);
      }
      return 0;
    }
  } while( true );
}

