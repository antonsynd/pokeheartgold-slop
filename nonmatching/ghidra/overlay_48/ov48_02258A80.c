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
undefined4 Heap_Free();
undefined4 func_0x020f2ba4() __asm__("sub_020F2BA4");
undefined4 func_0x02007cac() __asm__("sub_02007CAC");
undefined4 func_0x02091664() __asm__("sub_02091664");
undefined4 NARC_Delete();
undefined4 ov48_02258B7C();
undefined4 NARC_New();
undefined4 func_0x020916f8() __asm__("sub_020916F8");
undefined4 func_0x020916dc() __asm__("sub_020916DC");

void ov48_02258A80(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  short *psVar1;
  undefined2 uVar2;
  undefined4 uVar3;
  short *psVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  uint uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  uVar3 = NARC_New(0x62,param_3);
  *param_1 = 0;
  psVar4 = (short *)func_0x02007cac(uVar3,0x12,0,param_3,0,&uStack_1c);
  iVar5 = func_0x020f2ba4(uStack_1c,6);
  uVar7 = 1;
  psVar1 = psVar4;
  if (1 < iVar5) {
    do {
      if (psVar1[3] != 2) {
        ov48_02258B7C(param_1,*param_1,(int)psVar1[4],(int)psVar1[5],uVar7 & 0xffff,0,param_2);
        *param_1 = *param_1 + 1;
      }
      uVar7 = uVar7 + 1;
      psVar1 = psVar1 + 3;
    } while ((int)uVar7 < iVar5);
  }
  Heap_Free(psVar4);
  iVar9 = 1;
  iVar5 = func_0x02091664();
  if (1 < iVar5) {
    do {
      uVar6 = func_0x020916f8(iVar9);
      psVar4 = (short *)func_0x02007cac(uVar3,uVar6,0,param_3,0,&uStack_20);
      uVar8 = 1;
      uVar7 = uStack_20 >> 2;
      psVar1 = psVar4;
      if (1 < uVar7) {
        do {
          uVar2 = func_0x020916dc(iVar9);
          ov48_02258B7C(param_1,*param_1,(int)psVar1[2],(int)psVar1[3],uVar2,uVar8 & 0xffff,param_2)
          ;
          uVar8 = uVar8 + 1;
          *param_1 = *param_1 + 1;
          psVar1 = psVar1 + 2;
        } while ((int)uVar8 < (int)uVar7);
      }
      Heap_Free(psVar4);
      iVar9 = iVar9 + 1;
    } while (iVar9 < iVar5);
  }
  NARC_Delete(uVar3);
  return;
}

