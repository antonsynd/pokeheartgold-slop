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
undefined4 GF_AssertFail(void);
void * memset(void *, int, unsigned int);
void * Heap_Alloc(int, unsigned int);
undefined4 sub_02095CE0();

undefined * sub_020932E0(int param_1,int param_2,undefined1 param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;

  puVar1 = Heap_Alloc(param_1,0x46e8);
  memset(puVar1,0,0x46e8);
  if (param_2 == 0) {
    GF_AssertFail();
  }
  *(int *)(puVar1 + 4) = param_1;
  puVar1[0xd] = (char)param_2;
  puVar1[0x10] = param_3;
  if (3 < (byte)puVar1[0xd]) {
    GF_AssertFail();
    puVar1[0xd] = 3;
  }
  puVar2 = Heap_Alloc(*(int *)(puVar1 + 4),(uint)(byte)puVar1[0xd] * 0xc);
  *(undefined **)(puVar1 + 0x8d0) = puVar2;
  puVar2 = Heap_Alloc(*(int *)(puVar1 + 4),((byte)puVar1[0xd] + 0x22) * 4);
  *(undefined **)(puVar1 + 0x7e4) = puVar2;
  uVar3 = sub_02095CE0(*(undefined4 *)(puVar1 + 4),puVar1 + 0xf);
  *(undefined4 *)(puVar1 + 0x46b8) = uVar3;
  return puVar1;
}

