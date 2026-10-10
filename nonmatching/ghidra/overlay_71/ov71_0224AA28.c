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
undefined4 IsPaletteFadeFinished();
undefined4 ov71_02246C6C();
undefined4 ov71_0224AF08();
undefined4 ov71_02246D40();
undefined4 ov71_0224AFD4();
undefined4 ov71_0224B084();
extern undefined UNK_0224aa40 __asm__("sub_0224AA40");

undefined4 ov71_0224AA28(int param_1,uint *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  
  uVar3 = *param_2;
  if (uVar3 < 7) {
    switch(uVar3) {
    case 0:
      iVar2 = IsPaletteFadeFinished();
      if (iVar2 != 0) {
        *(undefined4 *)(param_1 + 8) = 0;
        ov71_0224AFD4(param_1,param_1 + 0x30);
        *param_2 = *param_2 + 1;
      }
      break;
    case 1:
      iVar2 = *(int *)(param_1 + 8) + 1;
      *(int *)(param_1 + 8) = iVar2;
      if (8 < iVar2) {
        ov71_0224AF08(param_1,param_1 + 0x34);
        *param_2 = *param_2 + 1;
      }
      break;
    case 2:
      if ((*(int *)(param_1 + 0x34) == 0) && (*(int *)(param_1 + 0x30) == 0)) {
        *param_2 = uVar3 + 1;
      }
      break;
    case 3:
      uVar1 = ov71_02246C6C(param_1 + 0x14,0xffffffff,(int)*(short *)(&UNK_0224aa40 + uVar3 * 2),
                            param_4,param_4);
      *(undefined4 *)(param_1 + 0x10) = uVar1;
      *(undefined4 *)(param_1 + 8) = 0;
      *param_2 = *param_2 + 1;
      break;
    case 4:
      iVar2 = *(int *)(param_1 + 8) + 1;
      *(int *)(param_1 + 8) = iVar2;
      if (0x1e < iVar2) {
        ov71_0224B084(*(undefined4 *)(param_1 + 0x24),0x1f,0,0x28,param_1 + 0x38);
        *param_2 = *param_2 + 1;
      }
      break;
    case 5:
      if (*(int *)(param_1 + 0x38) == 0) {
        ov71_02246D40(*(undefined4 *)(param_1 + 0x10));
        *param_2 = *param_2 + 1;
      }
      break;
    case 6:
      if (*(int *)(param_1 + 0x14) == 0) {
        return 1;
      }
    }
  }
  return 0;
}

