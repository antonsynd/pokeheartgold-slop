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
undefined4 func_0x021f65d0() __asm__("sub_021F65D0");
undefined4 func_0x021f6328() __asm__("sub_021F6328");
undefined4 MapMatrix_GetWidth();
undefined4 func_0x021fb42c() __asm__("sub_021FB42C");
undefined4 func_0x021f635c() __asm__("sub_021F635C");
undefined4 func_0x021fb474() __asm__("sub_021FB474");
undefined4 func_0x021fae50() __asm__("sub_021FAE50");
undefined4 sub_02054648();

int sub_02054654(int param_1,undefined4 param_2,undefined4 param_3,int param_4,int param_5,
                undefined1 *param_6)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined1 uVar6;
  int iVar7;
  uint uVar8;
  undefined1 auStack_24 [4];
  int iStack_20;
  int iStack_1c;
  int iStack_18;

  iVar7 = 0;
  iStack_1c = 0;
  iStack_18 = param_5;
  uVar1 = *(undefined4 *)(param_1 + 0x2c);
  iStack_20 = param_4;
  iVar2 = MapMatrix_GetWidth(*(undefined4 *)(param_1 + 0x30));
  uVar8 = (int)(param_4 + ((uint)(param_4 >> 0xf) >> 0x10)) >> 0x10;
  uVar3 = (int)(param_5 + ((uint)(param_5 >> 0xf) >> 0x10)) >> 0x10;
  iVar4 = func_0x021fb42c(uVar8,uVar3,*(undefined4 *)(param_1 + 0x98),auStack_24);
  iStack_20 = param_4 + ((uVar8 >> 5) * 0x20 + 0x10) * -0x10000;
  iStack_18 = param_5 + ((uVar3 >> 5) * 0x20 + 0x10) * -0x10000;
  uVar5 = func_0x021f6328(uVar8 + uVar3 * iVar2 * 0x20,iVar2 * 0x20);
  uVar3 = func_0x021f635c((uVar8 >> 5) + iVar2 * (uVar3 >> 5),uVar5,uVar1);
  if (uVar3 < 4) {
    uVar1 = func_0x021f65d0(uVar1,uVar3 & 0xff);
    iVar2 = func_0x021fae50(param_2,param_3,iStack_20,iStack_18,uVar1,&iStack_1c);
  }
  else {
    iVar2 = 0;
  }
  if (iVar4 == 0) {
    if (iVar2 == 0) {
      uVar6 = 0;
    }
    else {
      uVar6 = 1;
      iVar7 = iStack_1c;
    }
  }
  else {
    iVar7 = func_0x021fb474(auStack_24[0],*(undefined4 *)(param_1 + 0x98));
    if (iVar2 == 0) {
      uVar6 = 2;
    }
    else if (iStack_1c < iVar7) {
      iVar2 = sub_02054648(iStack_1c,param_3);
      iVar4 = sub_02054648(iVar7,param_3);
      if (iVar4 < iVar2) {
        uVar6 = 2;
      }
      else {
        uVar6 = 1;
        iVar7 = iStack_1c;
      }
    }
    else {
      uVar6 = 1;
      iVar7 = iStack_1c;
    }
  }
  if (param_6 != (undefined1 *)0x0) {
    *param_6 = uVar6;
  }
  return iVar7;
}

