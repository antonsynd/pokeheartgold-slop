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
undefined4 ov49_02265738();
void * Heap_Alloc(int, unsigned int);
undefined4 ov49_02265698();
undefined4 HeapExp_FndInitAllocator(void *, int, int);
undefined4 NARC_Delete(void *);
void * NARC_New(int, int);
undefined4 ov49_022657B4();
void * memset(void *, int, unsigned int);

undefined4 *
ov49_022652E8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
             int param_5,int param_6)

{
  undefined4 *puVar1;
  undefined *puVar2;

  puVar1 = (undefined4 *)Heap_Alloc(param_5,0x1082c);
  memset((undefined *)puVar1,0,0x1082c);
  *puVar1 = param_1;
  puVar1[1] = param_4;
  puVar1[2] = param_3;
  puVar1[3] = param_2;
  puVar2 = NARC_New(0xd1,param_5);
  HeapExp_FndInitAllocator((undefined *)(puVar1 + 0x4207),param_6,4);
  ov49_02265698((int)puVar1,puVar2,param_6);
  ov49_02265738((int)puVar1,puVar2,param_6);
  ov49_022657B4((int)puVar1,puVar2,param_6);
  NARC_Delete(puVar2);
  return puVar1;
}

