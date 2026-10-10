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
undefined4 PCStorage_GetBoxWallpaper();
undefined4 String_New();
undefined4 func_0x02073f00() __asm__("sub_02073F00");
undefined4 func_0x020275c4() __asm__("sub_020275C4");
undefined4 func_0x02026a68() __asm__("sub_02026A68");
undefined4 String_Delete();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 PCStorage_GetMonDataByIndexPair();

void ov39_02227088(undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4,
                  undefined4 param_5)

{
  undefined1 uVar1;
  undefined2 uVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  undefined4 uStack_20;
  undefined4 uStack_1c;

  func_0x020d4994(param_4,0,0x19c);
  uVar3 = String_New(0x3c,param_5);
  func_0x02073f00(param_2,param_3,uVar3);
  func_0x02026a68(uVar3,param_4,0x14);
  String_Delete(uVar3);
  uVar5 = 0;
  uStack_20 = param_4;
  uStack_1c = param_4;
  do {
    uVar2 = PCStorage_GetMonDataByIndexPair(param_2,param_3,uVar5,5,0);
    *(undefined2 *)(uStack_1c + 0x28) = uVar2;
    uVar3 = PCStorage_GetMonDataByIndexPair(param_2,param_3,uVar5,0,0);
    *(undefined4 *)(uStack_20 + 100) = uVar3;
    uVar3 = PCStorage_GetMonDataByIndexPair(param_2,param_3,uVar5,7,0);
    *(undefined4 *)(uStack_20 + 0xdc) = uVar3;
    iVar4 = PCStorage_GetMonDataByIndexPair(param_2,param_3,uVar5,0xae,0);
    if (iVar4 == 0x1ee) {
      *(uint *)(param_4 + 0x154) = *(uint *)(param_4 + 0x154) | 1 << (uVar5 & 0xff);
    }
    uVar1 = PCStorage_GetMonDataByIndexPair(param_2,param_3,uVar5,0x70,0);
    *(undefined1 *)(param_4 + uVar5 + 0x158) = uVar1;
    uVar5 = uVar5 + 1;
    uStack_1c = uStack_1c + 2;
    uStack_20 = uStack_20 + 4;
  } while ((int)uVar5 < 0x1e);
  uVar1 = PCStorage_GetBoxWallpaper(param_2,param_3);
  *(undefined1 *)(param_4 + 0x176) = uVar1;
  *(undefined1 *)(param_4 + 0x177) = 0;
  uVar2 = func_0x020275c4(param_1,param_4,0x198);
  *(undefined2 *)(param_4 + 0x198) = uVar2;
  return;
}

