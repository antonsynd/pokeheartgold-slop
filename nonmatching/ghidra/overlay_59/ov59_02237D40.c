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
void * OverlayManager_GetData(void *);
undefined4 ov59_02237F3C();
undefined4 ov59_02238624();
undefined4 MI_CpuFill8(void *, unsigned char, unsigned int);
undefined4 Heap_Create(int, int, unsigned int);
void * OverlayManager_GetArgs(void *);
void * OverlayManager_CreateAndGetData(void *, unsigned int, int);
undefined4 ov59_02237E94();



int ov59_02237D40(undefined *param_1,undefined *param_2)

{
  undefined4 *puVar1;
  undefined *puVar2;
  int iVar3;

  if (*(int *)param_2 == 0) {
    ov59_02238624();
    Heap_Create(3,0x86,0x20000);
    puVar1 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x29c,0x86);
    MI_CpuFill8((undefined *)puVar1,0,0x29c);
    *puVar1 = 0x86;
    puVar2 = OverlayManager_GetArgs(param_1);
    puVar1[1] = puVar2;
    ov59_02237E94(puVar1);
    *(int *)param_2 = *(int *)param_2 + 1;
  }
  else if (*(int *)param_2 == 1) {
    OverlayManager_GetData(param_1);
    iVar3 = ov59_02237F3C();
    if (iVar3 != 0) {
      return 1;
    }
  }
  return 0;
}

