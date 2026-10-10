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
void * SaveArray_PCStorage_Get(void *);
undefined4 BgClearTilemapBufferAndCommit(void *, unsigned char);
undefined4 ov40_0222BF80();
void * Heap_Alloc(int, unsigned int);
void * TouchHitboxController_Create(void *, unsigned int, void *, void *, int);
undefined4 ov40_02236578();
void * sub_020314A4(int);
undefined4 sub_020314C4(void *, void *);
undefined4 ov40_0222D9E8();
undefined4 ov40_0223655C();
void * memset(void *, int, unsigned int);
extern undefined ov40_0224526C;
extern undefined ov40_022452CC;
extern undefined ov40_02245284;
extern undefined ov40_022452F4;

undefined4 ov40_022365A0(undefined *param_1)

{
  undefined4 *puVar1;
  undefined *puVar2;

  puVar1 = (undefined4 *)Heap_Alloc(0x6d,0x2f70);
  memset((undefined *)puVar1,0,0x2f70);
  *(undefined4 **)(param_1 + 0x860) = puVar1;
  BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),2);
  BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),3);
  BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),6);
  BgClearTilemapBufferAndCommit(*(undefined **)(param_1 + 0x24),7);
  puVar2 = SaveArray_PCStorage_Get(*(undefined **)(param_1 + 0x830));
  *puVar1 = puVar2;
  ov40_02236578(*(undefined4 *)(param_1 + 0x830),*puVar1,puVar1[0x68],(undefined *)(puVar1 + 1));
  ov40_0223655C((int)puVar1);
  ov40_0222D9E8(puVar1 + 0x69,puVar1 + 0x6a,0);
  puVar2 = TouchHitboxController_Create(&ov40_022452CC,4,(undefined *)0x2236231,param_1,0x6d);
  puVar1[0xcc] = puVar2;
  puVar2 = TouchHitboxController_Create(&ov40_022452F4,7,(undefined *)0x22362e5,param_1,0x6d);
  puVar1[0xcd] = puVar2;
  puVar2 = TouchHitboxController_Create(&ov40_022452F4,7,(undefined *)0x2236321,param_1,0x6d);
  puVar1[0xce] = puVar2;
  puVar2 = TouchHitboxController_Create(&ov40_02245284,3,(undefined *)0x223635d,param_1,0x6d);
  puVar1[0xcf] = puVar2;
  puVar2 = TouchHitboxController_Create(&ov40_0224526C,2,(undefined *)0x22363bd,param_1,0x6d);
  puVar1[0xd0] = puVar2;
  puVar2 = sub_020314A4(0x6d);
  puVar1[0xe1] = puVar2;
  sub_020314C4((undefined *)puVar1[0xe1],*(undefined **)(param_1 + 0x830));
  ov40_0222BF80((int)param_1,1);
  return 0;
}

