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
undefined4 func_0x020ccf80() __asm__("sub_020CCF80");
undefined4 ov91_0225EE9C();
undefined4 func_0x020ccfe0() __asm__("sub_020CCFE0");
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 ov91_0226045C();
undefined4 ov91_0225EE64();
undefined4 GF_AssertFail();
undefined4 func_0x020f2948() __asm__("sub_020F2948");
undefined4 ov91_0225EE48();
undefined4 PlaySE();
undefined4 ov91_02260E88();
undefined4 ov91_0225EE88();
undefined4 ov91_02260400();
undefined4 ov91_0225E2E4();

void ov91_0225EA98(int param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  longlong lVar4;
  short sStack_40;
  short sStack_3e;
  short sStack_3c;
  short sStack_3a;
  undefined2 uStack_38;
  undefined2 uStack_36;
  uint auStack_34 [3];
  uint uStack_28;
  undefined1 auStack_24 [4];
  undefined4 uStack_20;
  uint uStack_14;

  bVar1 = false;
  if (*(int *)(param_1 + 0x20) == 0) {
    *(int *)(param_1 + 0x48) = *(int *)(param_1 + 0x48) + 1;
    return;
  }
  iVar2 = ov91_0225EE48(param_1 + 0x20,&sStack_3c);
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  iVar2 = ov91_0225EE64(param_1 + 0x20,&sStack_40);
  if (iVar2 == 0) {
    GF_AssertFail();
  }
  iVar2 = ov91_0225EE88(param_1 + 0x20);
  if (iVar2 < 2) {
    bVar1 = true;
  }
  else {
    uStack_38 = (undefined2)*(undefined4 *)(param_1 + 0x14);
    uStack_36 = 0;
    iVar3 = func_0x020f2998((int)sStack_3c - (int)sStack_40,iVar2);
    auStack_34[0] = (iVar3 << 0x10) >> 4;
    iVar2 = func_0x020f2998((int)sStack_3a - (int)sStack_3e,iVar2);
    auStack_34[2] = (iVar2 << 0x10) >> 4;
    auStack_34[1] = 0;
    iVar2 = func_0x020ccf80(auStack_34);
    if (iVar2 < 0x8000) {
      if (iVar2 == 0) {
        bVar1 = true;
      }
      else {
        func_0x020ccfe0(auStack_34,auStack_34);
        auStack_34[0] =
             auStack_34[0] * 0x8000 + 0x800 >> 0xc |
             ((auStack_34[0] >> 0x11) + (uint)(0xfffff7ff < auStack_34[0] * 0x8000)) * 0x100000;
        auStack_34[2] =
             auStack_34[2] * 0x8000 + 0x800 >> 0xc |
             ((auStack_34[2] >> 0x11) + (uint)(0xfffff7ff < auStack_34[2] * 0x8000)) * 0x100000;
      }
    }
    else if (0x1e200 < iVar2) {
      func_0x020ccfe0(auStack_34,auStack_34);
      lVar4 = func_0x020f2948(auStack_34[0],(int)auStack_34[0] >> 0x1f,0x1e200,0);
      auStack_34[0] =
           (uint)(lVar4 + 0x800) >> 0xc | (int)((ulonglong)(lVar4 + 0x800) >> 0x20) * 0x100000;
      lVar4 = func_0x020f2948(auStack_34[2],(int)auStack_34[2] >> 0x1f,0x1e200);
      auStack_34[2] =
           (uint)(lVar4 + 0x800) >> 0xc | (int)((ulonglong)(lVar4 + 0x800) >> 0x20) * 0x100000;
    }
    if (!bVar1) {
      auStack_34[1] = 0x26000;
      uStack_28 = func_0x020ccf80(auStack_34);
      lVar4 = func_0x020f2948(uStack_28,(int)uStack_28 >> 0x1f,0x99a,0);
      uStack_28 = (uint)(lVar4 + 0x800) >> 0xc |
                  (int)((ulonglong)(lVar4 + 0x800) >> 0x20) * 0x100000;
      func_0x020ccfe0(auStack_34,auStack_34);
      ov91_02260400((int)sStack_40,(int)sStack_3e,auStack_24);
      uStack_20 = 0;
      ov91_0226045C(auStack_24,auStack_24,uStack_38,*(undefined4 *)(param_1 + 0x10));
      ov91_0226045C(auStack_34,auStack_34,uStack_38,*(undefined4 *)(param_1 + 0x10));
      uStack_14 = (uint)(4 < *(int *)(param_1 + 0x1c));
      ov91_0225E2E4(param_1,&uStack_38,1);
      PlaySE(0x64f);
    }
  }
  if (bVar1) {
    ov91_02260E88(param_1 + 0x854c,(int)sStack_40,(int)sStack_3e);
  }
  ov91_0225EE9C(param_1);
  *(undefined4 *)(param_1 + 0x48) = 0;
  return;
}

