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
undefined4 sub_0203769C();
undefined4 sub_020399FC();
undefined4 sub_02037454();
undefined4 StartMapSceneScript();
undefined4 sub_02037B5C();
undefined4 Heap_Free();
extern int iRam021d41c8 __asm__("sub_021D41C8");

void sub_0205857C(void)

{
  int iVar1;
  int iVar2;
  int iStack_18;

  iStack_18 = 0;
  iVar1 = sub_02037454();
  if (0 < iVar1) {
    do {
      iVar1 = sub_0203769C();
      if ((((iStack_18 != iVar1) && (iVar1 = sub_02037B5C(iStack_18), iVar1 == 0x5e)) &&
          (*(int *)(*(int *)(iRam021d41c8 + 0x14) + 0x10) == 0)) &&
         ((*(byte *)(*(int *)(iRam021d41c8 + 0x14) + 0xd2) & 0x3f) == 0)) {
        iVar1 = 0;
        iVar2 = 0;
        do {
          if (*(int *)(iRam021d41c8 + iVar2) != 0) {
            Heap_Free();
            *(undefined4 *)(iRam021d41c8 + iVar2) = 0;
          }
          iVar1 = iVar1 + 1;
          iVar2 = iVar2 + 4;
        } while (iVar1 < 4);
        StartMapSceneScript(*(undefined4 *)(iRam021d41c8 + 0x14),0x238e,0);
      }
      iStack_18 = iStack_18 + 1;
      iVar1 = sub_02037454();
    } while (iStack_18 < iVar1);
  }
  sub_020399FC(4,*(undefined4 *)(*(int *)(iRam021d41c8 + 0x14) + 8));
  return;
}

