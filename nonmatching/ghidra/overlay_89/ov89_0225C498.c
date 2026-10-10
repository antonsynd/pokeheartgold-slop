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
undefined4 func_0x0201fd14() __asm__("sub_0201FD14");
undefined4 Camera_SetLookAtCamPos();
undefined4 Camera_GetLookAtCamPos();
undefined4 Camera_SetLookAtCamTarget();
undefined4 PlaySE();
undefined4 Camera_GetLookAtCamTarget();
undefined4 func_0x02023514() __asm__("sub_02023514");

undefined4 ov89_0225C498(undefined4 param_1,int param_2,undefined4 param_3)

{
  uint uVar1;
  int iVar2;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  uint auStack_18 [3];

  auStack_18[0] = 0;
  auStack_18[1] = 0;
  auStack_18[2] = 0;
  if (*(char *)(param_2 + 0x7d) == '\0') {
    Camera_GetLookAtCamPos(&uStack_24,param_3);
    *(undefined4 *)(param_2 + 0x6c) = uStack_24;
    *(undefined4 *)(param_2 + 0x70) = uStack_20;
    *(undefined4 *)(param_2 + 0x74) = uStack_1c;
    Camera_GetLookAtCamTarget(&uStack_30,param_3);
    *(undefined4 *)(param_2 + 0x60) = uStack_30;
    *(undefined4 *)(param_2 + 100) = uStack_2c;
    *(undefined4 *)(param_2 + 0x68) = uStack_28;
    *(char *)(param_2 + 0x7d) = *(char *)(param_2 + 0x7d) + '\x01';
    PlaySE(0x5d5);
  }
  else if (*(char *)(param_2 + 0x7d) != '\x01') {
    return 1;
  }
  iVar2 = *(int *)(param_2 + 0x78) + 0x20000;
  *(int *)(param_2 + 0x78) = iVar2;
  if (0x167fff < iVar2) {
    *(int *)(param_2 + 0x78) = *(int *)(param_2 + 0x78) + -0x168000;
    *(char *)(param_2 + 0x7c) = *(char *)(param_2 + 0x7c) + '\x01';
    if (3 < *(byte *)(param_2 + 0x7c)) {
      *(char *)(param_2 + 0x7d) = *(char *)(param_2 + 0x7d) + '\x01';
      *(undefined4 *)(param_2 + 0x78) = 0;
    }
  }
  uVar1 = func_0x0201fd14(*(undefined4 *)(param_2 + 0x78));
  auStack_18[0] =
       uVar1 * 0x10000 + 0x800 >> 0xc |
       ((uVar1 >> 0x10) + (uint)(0xfffff7ff < uVar1 * 0x10000)) * 0x100000;
  Camera_SetLookAtCamTarget((undefined4 *)(param_2 + 0x60),param_3);
  Camera_SetLookAtCamPos(param_2 + 0x6c,param_3);
  func_0x02023514(auStack_18,param_3);
  return 0;
}

