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
undefined4 OverlayManager_GetData();
undefined4 OverlayManager_Delete();
undefined4 sub_020398D4();
undefined4 OverlayManager_GetArgs();
undefined4 sub_02037B38();
undefined4 OverlayManager_New();
undefined4 ov93_0225C730();
undefined4 sub_020347A0();
undefined4 func_0x021e6a4c() __asm__("sub_021E6A4C");
undefined4 OverlayManager_Run();
undefined4 sub_02037AC0();
undefined4 sub_02037454();
extern undefined ov93_02262A08;
extern undefined UNK_022629f8 __asm__("sub_022629F8");

undefined4 ov93_0225C574(undefined4 param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;

  iVar1 = OverlayManager_GetData();
  iVar2 = OverlayManager_GetArgs(param_1);
  iVar3 = ov93_0225C730(iVar1);
  if (iVar3 == 1) {
    return 1;
  }
  switch(*param_2) {
  case 0:
    *(undefined1 *)(iVar1 + 0x31) = 0;
    uVar4 = OverlayManager_New(&ov93_02262A08,iVar1,0x75);
    *(undefined4 *)(iVar1 + 0x28) = uVar4;
    *param_2 = *param_2 + 1;
    break;
  case 1:
    iVar2 = OverlayManager_Run(*(undefined4 *)(iVar1 + 0x28));
    if (iVar2 == 1) {
      OverlayManager_Delete(*(undefined4 *)(iVar1 + 0x28));
      *(undefined4 *)(iVar1 + 0x28) = 0;
      *param_2 = *param_2 + 1;
    }
    break;
  case 2:
    *(undefined1 *)(iVar1 + 0x31) = 1;
    uVar4 = OverlayManager_New(&UNK_022629f8,iVar1,0x75);
    *(undefined4 *)(iVar1 + 0x28) = uVar4;
    *param_2 = *param_2 + 1;
    break;
  case 3:
    iVar2 = OverlayManager_Run(*(undefined4 *)(iVar1 + 0x28));
    if (iVar2 == 1) {
      OverlayManager_Delete(*(undefined4 *)(iVar1 + 0x28));
      *(undefined4 *)(iVar1 + 0x28) = 0;
      *param_2 = *param_2 + 1;
    }
    break;
  case 4:
    if (*(char *)(iVar2 + 0x38) != '\0') {
      func_0x021e6a4c();
    }
    *(undefined1 *)(iVar1 + 0x31) = 2;
    uVar4 = OverlayManager_New(&ov93_02262A08,iVar1,0x75);
    *(undefined4 *)(iVar1 + 0x28) = uVar4;
    *param_2 = *param_2 + 1;
    break;
  case 5:
    iVar2 = OverlayManager_Run(*(undefined4 *)(iVar1 + 0x28));
    if (iVar2 == 1) {
      OverlayManager_Delete(*(undefined4 *)(iVar1 + 0x28));
      *(undefined4 *)(iVar1 + 0x28) = 0;
      if (*(int *)(iVar1 + 0x38) == 1) {
        *param_2 = 0;
      }
      else {
        *param_2 = *param_2 + 1;
      }
    }
    break;
  case 6:
    sub_020398D4(0,1);
    sub_02037AC0(0xde);
    *param_2 = *param_2 + 1;
    break;
  case 7:
    iVar1 = sub_02037B38(0xde);
    if (iVar1 != 1) {
      iVar1 = sub_02037454();
      iVar2 = sub_020347A0();
      if (iVar2 <= iVar1) {
        return 0;
      }
    }
    *param_2 = *param_2 + 1;
    break;
  default:
    return 1;
  }
  return 0;
}

