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
undefined4 GF_AssertFail();
undefined4 sub_02093F84();
undefined4 sub_02094F5C();
undefined4 sub_02093E7C();
undefined4 sub_020956B8();

undefined4 sub_02093CE4(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uStack_20;
  
  if (*(int *)(param_1 + 0x469c) == 1) {
    uStack_20 = 0;
    if (*(byte *)(param_1 + 0xd) != 0) {
      iVar2 = *(int *)(param_1 + 0x46a4);
      iVar4 = 0;
      iVar3 = iVar2;
      do {
        if (*(int *)(iVar3 + 4) == 0) {
          iVar1 = iVar2 + iVar4;
          if ((*(int *)(param_1 + 0x4694) - (uint)*(byte *)(iVar1 + 1) <
               (uint)*(byte *)(iVar1 + 3) - (uint)*(byte *)(iVar1 + 1)) &&
             (*(int *)(param_1 + 0x4698) - (uint)*(byte *)(iVar2 + iVar4) <
              (uint)*(byte *)(iVar1 + 2) - (uint)*(byte *)(iVar2 + iVar4))) {
            sub_02093E7C(param_1,uStack_20 & 0xff);
            return 1;
          }
        }
        else {
          iVar1 = iVar2 + iVar4;
          if ((*(int *)(param_1 + 0x4694) - (uint)*(byte *)(iVar1 + 1) <
               (uint)*(byte *)(iVar1 + 3) - (uint)*(byte *)(iVar1 + 1)) &&
             (*(int *)(param_1 + 0x4698) - (uint)*(byte *)(iVar2 + iVar4) <
              (uint)*(byte *)(iVar1 + 2) - (uint)*(byte *)(iVar2 + iVar4))) {
            sub_02094F5C(param_1,uStack_20);
            sub_02093E7C(param_1,uStack_20 & 0xff);
            return 1;
          }
        }
        iVar3 = iVar3 + 8;
        uStack_20 = uStack_20 + 1;
        iVar4 = iVar4 + 8;
      } while ((int)uStack_20 < (int)(uint)*(byte *)(param_1 + 0xd));
    }
  }
  else if (*(int *)(param_1 + 0x469c) == 2) {
    if ((*(int *)(param_1 + 0x4694) - (uint)*(byte *)(param_1 + 0x46a9) <
         (uint)*(byte *)(param_1 + 0x46ab) - (uint)*(byte *)(param_1 + 0x46a9)) &&
       (*(int *)(param_1 + 0x4698) - (uint)*(byte *)(param_1 + 0x46a8) <
        (uint)*(byte *)(param_1 + 0x46aa) - (uint)*(byte *)(param_1 + 0x46a8))) {
      sub_02094F5C(param_1,*(undefined4 *)(param_1 + 0x4684));
      sub_020956B8(param_1);
      return 2;
    }
    uVar5 = 0;
    if (*(byte *)(param_1 + 0xd) != 0) {
      iVar4 = 0;
      iVar2 = *(int *)(param_1 + 0x46a4);
      iVar3 = iVar2;
      do {
        if (*(int *)(iVar3 + 4) == 0) {
          iVar1 = iVar2 + iVar4;
          if ((*(int *)(param_1 + 0x4694) - (uint)*(byte *)(iVar1 + 1) <
               (uint)*(byte *)(iVar1 + 3) - (uint)*(byte *)(iVar1 + 1)) &&
             (*(int *)(param_1 + 0x4698) - (uint)*(byte *)(iVar2 + iVar4) <
              (uint)*(byte *)(iVar1 + 2) - (uint)*(byte *)(iVar2 + iVar4))) {
            sub_02093F84(param_1,*(uint *)(param_1 + 0x4684) & 0xff,uVar5 & 0xff);
            return 3;
          }
        }
        uVar5 = uVar5 + 1;
        iVar3 = iVar3 + 8;
        iVar4 = iVar4 + 8;
      } while ((int)uVar5 < (int)(uint)*(byte *)(param_1 + 0xd));
    }
  }
  else {
    GF_AssertFail();
  }
  return 0;
}

