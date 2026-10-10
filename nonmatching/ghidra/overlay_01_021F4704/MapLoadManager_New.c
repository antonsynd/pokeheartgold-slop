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
void * NARC_New(int, int);
undefined4 GF_AssertFail(void);
unsigned char MapMatrix_GetHeight(void *);
void * ov01_021FAC44(int);
unsigned char MapMatrix_GetWidth(void *);
void * Heap_Alloc(int, unsigned int);
undefined4 ov01_021F5F34();
undefined4 MI_CpuFill8(void *, unsigned char, unsigned int);
extern undefined ov01_02206BD0;
extern undefined ov01_02206BC8;
extern undefined ov01_02206BC0;



undefined *
MapLoadManager_New(undefined *param_1,undefined *param_2,undefined *param_3,undefined *param_4,
                  undefined *param_5,int param_6,undefined *param_7)

{
  byte bVar1;
  undefined4 *puVar2;
  undefined *puVar3;
  int unaff_r6;
  __asm__ volatile("movs %0, r6" : "=l"(unaff_r6) : : "cc");


  puVar2 = (undefined4 *)Heap_Alloc(4,0x110);
  MI_CpuFill8((undefined *)puVar2,0,0x110);
  if (param_6 == 0) {
    puVar2[0x3f] = &ov01_02206BC0;
    unaff_r6 = 1;
  }
  else if (param_6 == 1) {
    puVar2[0x3f] = &ov01_02206BD0;
    unaff_r6 = 0;
  }
  else if (param_6 == 2) {
    puVar2[0x3f] = &ov01_02206BC8;
    unaff_r6 = 1;
  }
  else {
    GF_AssertFail();
  }
  puVar2[0x41] = param_7;
  puVar3 = ov01_021FAC44(unaff_r6);
  *puVar2 = puVar3;
  puVar2[0x2e] = param_2;
  puVar2[0x30] = param_1;
  puVar2[0x2f] = param_3;
  bVar1 = MapMatrix_GetWidth(param_1);
  puVar2[0x31] = (uint)bVar1;
  bVar1 = MapMatrix_GetHeight(param_1);
  puVar2[0x32] = (uint)bVar1;
  puVar2[0x33] = puVar2[0x31] << 5;
  puVar2[0x3d] = param_4;
  puVar2[0x3e] = param_5;
  puVar2[0x3c] = 1;
  ov01_021F5F34(puVar2);
  puVar2[0x2c] = 0;
  puVar2[0x2d] = 2;
  puVar3 = NARC_New(0x41,4);
  puVar2[0x40] = puVar3;
  puVar2[0x42] = 0;
  return (undefined *)puVar2;
}

