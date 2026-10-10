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
undefined4 SysTask_Destroy();
undefined4 ov92_022630E8();
undefined4 Heap_Free();
undefined4 IsPaletteFadeFinished();
undefined4 ov92_02260428();
undefined4 ov92_02260870();
undefined4 ov92_02260860();
undefined4 PlaySE();

void ov92_0225EF4C(undefined4 param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;

  iVar4 = (param_2[10] << 4) >> 0x10;
  iVar1 = IsPaletteFadeFinished();
  if ((iVar1 == 0) || (*(char *)(param_2[0x1e] + 0x34) == '\x01')) {
    SysTask_Destroy(param_1);
    Heap_Free(param_2);
    return;
  }
  switch(*param_2) {
  case 0:
    if (param_2[1] == 0) {
      iVar1 = *(int *)(param_2[4] + 0x1e4);
      ov92_02260860(param_2 + 0x11,iVar1,iVar1 + 0xc000,4);
      if (iVar4 < 1) {
        iVar1 = *(int *)(param_2[4] + 0x1e8);
        ov92_02260860(param_2 + 0x17,iVar1,iVar1 + -0x10000,4);
      }
      else {
        iVar1 = *(int *)(param_2[4] + 0x1e8);
        ov92_02260860(param_2 + 0x17,iVar1,iVar1 + 0x10000,4);
      }
    }
    else {
      iVar1 = *(int *)(param_2[4] + 0x1e4);
      ov92_02260860(param_2 + 0x11,iVar1,iVar1 + 0x30000,8);
      if (iVar4 < 1) {
        iVar1 = *(int *)(param_2[4] + 0x1e8);
        ov92_02260860(param_2 + 0x17,iVar1,iVar1 + 0x10000,4);
      }
      else {
        iVar1 = *(int *)(param_2[4] + 0x1e8);
        ov92_02260860(param_2 + 0x17,iVar1,iVar1 + -0x10000,8);
      }
    }
    PlaySE(0x60a);
    param_2[2] = 0;
    *param_2 = *param_2 + 1;
    return;
  case 1:
    iVar1 = ov92_02260870(param_2 + 0x11);
    iVar2 = ov92_02260870(param_2 + 0x17);
    *(int *)(param_2[4] + 0x1e4) = param_2[0x11];
    *(int *)(param_2[4] + 0x1e8) = param_2[0x17];
    if ((iVar1 != 0) && (iVar2 != 0)) {
      if (param_2[1] == 0) {
        *(undefined4 *)param_2[3] = 1;
        ov92_022630E8(param_2[4] + 400);
        ov92_022630E8(param_2[4] + 0x1a0);
        ov92_02260428(param_2[4],0,0,5,5,0x3f4ccccd,0);
        ov92_02260428(param_2[4],0,0,0xfffffffb,0xfffffffb,0x3f4ccccd,0);
        ov92_02260860(param_2 + 0x11,*(int *)(param_2[4] + 0x1e4),
                      *(int *)(param_2[4] + 0x1e4) + -0x30000,8);
        if (iVar4 < 1) {
          iVar1 = *(int *)(param_2[4] + 0x1e8);
          ov92_02260860(param_2 + 0x17,iVar1,iVar1 + -0x10000,8);
        }
        else {
          iVar1 = *(int *)(param_2[4] + 0x1e8);
          ov92_02260860(param_2 + 0x17,iVar1,iVar1 + 0x10000,8);
        }
      }
      else {
        ov92_02260860(param_2 + 0x11,*(int *)(param_2[4] + 0x1e4),
                      *(int *)(param_2[4] + 0x1e4) + -0xc000,4);
        if (iVar4 < 1) {
          iVar1 = *(int *)(param_2[4] + 0x1e8);
          ov92_02260860(param_2 + 0x17,iVar1,iVar1 + 0x10000,4);
        }
        else {
          iVar1 = *(int *)(param_2[4] + 0x1e8);
          ov92_02260860(param_2 + 0x17,iVar1,iVar1 + -0x10000,4);
        }
      }
      *param_2 = *param_2 + 1;
      return;
    }
    break;
  case 2:
    iVar1 = ov92_02260870(param_2 + 0x11);
    iVar4 = ov92_02260870(param_2 + 0x17);
    *(int *)(param_2[4] + 0x1e4) = param_2[0x11];
    *(int *)(param_2[4] + 0x1e8) = param_2[0x17];
    if ((iVar1 != 0) && (iVar4 != 0)) {
      if (param_2[1] == 0) {
        PlaySE(0x630);
      }
      *param_2 = *param_2 + 1;
      return;
    }
    break;
  case 3:
    if (param_2[1] != 0) {
      *param_2 = *param_2 + 1;
      return;
    }
    if (param_2[2] == 8) {
      PlaySE(0x58d);
    }
    iVar1 = param_2[2];
    param_2[2] = iVar1 + 1;
    if (0x27 < iVar1 + 1) {
      *(undefined4 *)param_2[3] = 2;
      *param_2 = *param_2 + 1;
      return;
    }
    break;
  default:
    if (param_2[1] == 0) {
      iVar1 = param_2[2] + 1;
      param_2[2] = iVar1;
      if (0x2c < iVar1) {
        *(undefined4 *)param_2[3] = 0;
        PlaySE(0x60a);
        *param_2 = 0;
        param_2[1] = param_2[1] + 1;
        return;
      }
    }
    else {
      iVar1 = param_2[2] + 1;
      param_2[2] = iVar1;
      if (9 < iVar1) {
        if (param_2[0x1d] == 0) {
          uVar3 = 0xfffec000;
        }
        else {
          uVar3 = 0xffff8000;
        }
        *(undefined4 *)(param_2[4] + 0x1e4) = uVar3;
        *(undefined4 *)(param_2[4] + 0x1e8) = 0;
        SysTask_Destroy(param_1);
        Heap_Free(param_2);
      }
    }
  }
  return;
}

