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
undefined4 ov99_021E8518();
undefined4 ov99_021E86D4();
undefined4 ManagedSprite_SetDrawFlag();

void ov99_021E9038(int param_1)

{
  short sVar1;
  undefined4 uVar2;
  uint uVar3;
  undefined4 uVar4;
  short sVar5;
  int iStack_20;
  uint uStack_1c;
  uint uStack_18;
  
  uStack_18 = 0;
  iStack_20 = 0;
  sVar1 = 6;
  do {
    uStack_1c = 0;
    sVar5 = 1;
    do {
      uVar3 = uStack_1c + iStack_20 & 0xff;
      if (*(int *)(param_1 + 0xb0) == 0) {
        if (*(int *)(param_1 + uVar3 * 4 + 0xbc) == 0) {
          uVar4 = 1;
        }
        else {
          uVar4 = 0;
        }
      }
      else {
        uVar4 = 1;
      }
      uVar2 = uVar4;
      if (*(int *)(param_1 + 0xb0) != 0) {
        uVar2 = 0;
      }
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + (uVar3 + 0xc) * 4 + 0x18),uVar2);
      uVar2 = ov99_021E8518(param_1,(int)(char)(uStack_1c + iStack_20),1);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_1 + uVar3 * 4 + 0x20),uVar2);
      ov99_021E86D4(param_1,uVar3,(int)sVar5,(int)sVar1,uVar4,0);
      sVar5 = sVar5 + 6;
      uStack_1c = uStack_1c + 1;
    } while (uStack_1c < 5);
    iStack_20 = iStack_20 + 5;
    sVar1 = sVar1 + 8;
    uStack_18 = uStack_18 + 1;
  } while (uStack_18 < 2);
  return;
}

