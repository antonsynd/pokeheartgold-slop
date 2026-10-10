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
undefined4 OS_ResetSystem(unsigned int);
undefined4 Save_NowWriteFile_AfterMGInit(void *, int);
undefined4 SaveMysteryGift_FindAvailable(void *);
void * Save_MysteryGift_Get(void *);
undefined4 SaveMysteryGift_CardFindAvailable(void *);
undefined4 SaveMysteryGift_ReceivedFlagTest(void *, int);
undefined4 Save_MysteryGift_Init(void *);

undefined4 ov74_0222FD98(undefined *param_1,int param_2)

{
  undefined *puVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;

  puVar1 = Save_MysteryGift_Get(param_1);
  uVar4 = *(uint *)(param_2 + 0x48);
  if ((uVar4 == 0xffffffff) && (*(short *)(param_2 + 0x4c) == -1)) {
    Save_MysteryGift_Init(puVar1);
    Save_NowWriteFile_AfterMGInit(param_1,0);
    OS_ResetSystem(0);
  }
  uVar3 = (uint)*(ushort *)(param_2 + 0x4c);
  if ((99 < uVar3) && (uVar3 < 0x99)) {
    uVar4 = uVar4 | 0x1180;
  }
  if (uVar4 == 0) {
    uVar4 = 0xffffffff;
  }
  if ((uVar4 & 0x80) == 0) {
    return 1;
  }
  if (((*(byte *)(param_2 + 0x4e) & 1) == 1) &&
     (iVar2 = SaveMysteryGift_ReceivedFlagTest(puVar1,uVar3), iVar2 == 1)) {
    return 2;
  }
  if (((*(byte *)(param_2 + 0x4e) & 7) >> 2 == 1) &&
     (iVar2 = SaveMysteryGift_CardFindAvailable(puVar1), iVar2 == 0)) {
    return 4;
  }
  iVar2 = SaveMysteryGift_FindAvailable(puVar1);
  if (iVar2 == 0) {
    return 3;
  }
  if ((*(byte *)(param_2 + 0x4e) & 0x3f) >> 5 == 1) {
    return 5;
  }
  return 0;
}

