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
undefined4 sub_020371A8();
void * sub_02034280(int, int, int);
undefined4 sub_02033B4C(void *, void *, int);
undefined4 sub_02033BC4(void *);
undefined4 sub_020341DC(int);
unsigned char sub_02033B68(void *);
undefined4 MI_CpuCopy8(void *, void *, unsigned int);
undefined4 sub_02034244(int);
extern int  iRam021d4148 __asm__("sub_021D4148");

void sub_020371C4(undefined *param_1,int param_2,undefined *param_3,int *param_4)

{
  undefined2 uVar1;
  byte bVar2;
  byte bVar3;
  int iVar4;
  undefined *puVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  
  iVar4 = sub_02033BC4(param_1);
  do {
    if (iVar4 == 0) {
      return;
    }
    uVar8 = (uint)*(byte *)((int)param_4 + 10);
    if (uVar8 == 0xee) {
      bVar2 = sub_02033B68(param_1);
      uVar8 = (uint)bVar2;
      if (uVar8 != 0xee) goto LAB_020371ea;
    }
    else {
LAB_020371ea:
      uVar1 = *(undefined2 *)(param_1 + 4);
      *(char *)((int)param_4 + 10) = (char)uVar8;
      uVar7 = (uint)*(ushort *)(param_4 + 2);
      if (uVar7 == 0xffff) {
        uVar7 = sub_020341DC(uVar8);
        if (*(char *)(iRam021d4148 + 0x6b8) != '\0') {
          return;
        }
        if (uVar7 == 0xffff) {
          iVar4 = sub_02033BC4(param_1);
          if (iVar4 < 1) {
            *(undefined2 *)(param_1 + 4) = uVar1;
            return;
          }
          bVar2 = sub_02033B68(param_1);
          bVar3 = sub_02033B68(param_1);
          uVar7 = (uint)bVar2 * 0x100 + (uint)bVar3;
          uVar1 = *(undefined2 *)(param_1 + 4);
        }
        *(short *)(param_4 + 2) = (short)uVar7;
      }
      iVar4 = sub_02034244(uVar8);
      if (iVar4 == 0) {
        iVar4 = sub_02033BC4(param_1);
        if (iVar4 < (int)uVar7) {
          *(undefined2 *)(param_1 + 4) = uVar1;
          return;
        }
        sub_02033B4C(param_1,param_3,uVar7);
        sub_020371A8(param_2,uVar8,uVar7,param_3,param_4);
      }
      else {
        if (param_4[1] == 0) {
          puVar5 = sub_02034280(uVar8,param_2,(uint)*(ushort *)(param_4 + 2));
          param_4[1] = (int)puVar5;
        }
        uVar6 = sub_02033B4C(param_1,param_3,uVar7 - *param_4);
        if (param_4[1] != 0) {
          MI_CpuCopy8(param_3,(undefined *)(param_4[1] + *param_4),uVar6);
        }
        iVar4 = *param_4;
        *param_4 = iVar4 + uVar6;
        if ((int)(iVar4 + uVar6) < (int)uVar7) goto LAB_020372ca;
        sub_020371A8(param_2,uVar8,uVar7,param_4[1],param_4);
      }
      if (uVar8 == 0x11) {
        return;
      }
    }
LAB_020372ca:
    iVar4 = sub_02033BC4(param_1);
  } while( true );
}

