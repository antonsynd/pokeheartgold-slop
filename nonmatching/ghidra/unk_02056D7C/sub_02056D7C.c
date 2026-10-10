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
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 SysTask_CreateOnMainQueue();
extern int iRam021d41c4 __asm__("sub_021D41C4");
undefined4 sub_02056EF4();
undefined4 sub_020374E4();

undefined4 sub_02056D7C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  if (iRam021d41c4 == 0) {
    iRam021d41c4 = param_1;
    func_0x020d4994(param_1,0,0xf4,param_4,param_4);
    *(undefined4 *)(iRam021d41c4 + 0x30) = param_2;
    iVar2 = 0;
    iVar3 = 0;
    do {
      *(undefined1 *)(iRam021d41c4 + iVar3 + 0x78) = 0xff;
      *(undefined2 *)(iRam021d41c4 + iVar3 + 0x74) = 0xffff;
      *(undefined2 *)(iRam021d41c4 + iVar3 + 0x76) = 0xffff;
      *(undefined1 *)(iRam021d41c4 + iVar3 + 0x79) = 2;
      *(undefined1 *)(iRam021d41c4 + iVar3 + 0x38) = 0xff;
      *(undefined2 *)(iRam021d41c4 + iVar3 + 0x34) = 0xffff;
      *(undefined2 *)(iRam021d41c4 + iVar3 + 0x36) = 0xffff;
      *(undefined1 *)(iRam021d41c4 + iVar3 + 0x39) = 2;
      iVar3 = iVar3 + 8;
      *(undefined1 *)(iRam021d41c4 + iVar2 + 0xb4) = 0;
      iVar4 = iRam021d41c4 + iVar2;
      iVar2 = iVar2 + 1;
      *(undefined1 *)(iVar4 + 0xbc) = 0;
    } while (iVar2 < 8);
    *(undefined1 *)(iRam021d41c4 + 0xed) = 0;
    *(undefined1 *)(iRam021d41c4 + 0xef) = 0;
    uVar1 = SysTask_CreateOnMainQueue(0x20572dd,*(undefined4 *)(iRam021d41c4 + 0x30),200);
    *(undefined4 *)(iRam021d41c4 + 0x2c) = uVar1;
    sub_020374E4();
    sub_02056EF4();
    return 1;
  }
  return 0;
}

