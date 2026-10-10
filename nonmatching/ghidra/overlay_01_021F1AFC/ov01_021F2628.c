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
undefined4 ov01_0220609C();
undefined4 ov01_02205790();
undefined4 FollowMon_GetMapObject();
undefined4 TaskManager_GetEnvironment();
undefined4 ov01_021F30F4();
undefined4 sub_02069DC8();
extern undefined ov01_022069D0;
extern undefined ov01_022069F0;

int ov01_021F2628(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  ushort *puVar1;
  int iVar2;
  undefined4 uVar3;

  puVar1 = (ushort *)TaskManager_GetEnvironment();
  do {
    if (*(int *)(puVar1 + 0xe) == 1) {
      iVar2 = (**(code **)(&ov01_022069D0 + (uint)*puVar1 * 4))(puVar1,param_1);
    }
    else {
      iVar2 = (**(code **)(&ov01_022069F0 + (uint)*puVar1 * 4))
                        (puVar1,param_1,*(code **)(&ov01_022069F0 + (uint)*puVar1 * 4),
                         (uint)*puVar1 * 4,param_4);
    }
  } while (iVar2 == 2);
  if (iVar2 == 1) {
    ov01_02205790(*(undefined4 *)(puVar1 + 6),*(uint *)(puVar1 + 2) & 0xff);
    uVar3 = FollowMon_GetMapObject(*(undefined4 *)(puVar1 + 6));
    sub_02069DC8(uVar3,1);
    ov01_0220609C(*(undefined4 *)(puVar1 + 6),1);
    ov01_021F30F4(puVar1);
  }
  return iVar2;
}

