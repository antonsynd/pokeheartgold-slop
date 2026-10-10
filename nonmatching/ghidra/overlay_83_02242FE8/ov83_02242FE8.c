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
void * BgConfig_Alloc(int);
void * OverlayManager_GetArgs(void *);
void * OverlayManager_CreateAndGetData(void *, unsigned int, int);
undefined4 func_0x02006ff8() __asm__("sub_02006FF8");
void * Save_Frontier_GetStatic(void *);
undefined4 sub_02030CC8(void *);
void * func_0x020e5b44(void *, int, unsigned int) __asm__("sub_020E5B44");
undefined4 func_0x02030e08(void *) __asm__("sub_02030E08");
void * Save_PlayerData_GetOptionsAddr(void *);
undefined4 func_0x02237d8c(unsigned char) __asm__("sub_02237D8C");
undefined4 sub_02096910(void *);
undefined4 ov83_02243FD4();
undefined4 ov83_02243F9C();
undefined4 Heap_Create(int, int, unsigned int);

undefined4
ov83_02242FE8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  
  func_0x02006ff8(0x50,2,param_3,param_4,param_4);
  ov83_02243F9C();
  Heap_Create(3,0x6b,0x30000);
  puVar2 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x614,0x6b);
  func_0x020e5b44(puVar2,0,0x614);
  uVar3 = BgConfig_Alloc(0x6b);
  puVar2[0x13] = uVar3;
  *puVar2 = param_1;
  puVar4 = (undefined4 *)OverlayManager_GetArgs(param_1);
  puVar2[0xaf] = *puVar4;
  uVar3 = sub_02030CC8(puVar2[0xaf]);
  puVar2[0xb0] = uVar3;
  uVar3 = func_0x02030e08(puVar2[0xaf]);
  puVar2[0xb1] = uVar3;
  *(undefined1 *)((int)puVar2 + 9) = *(undefined1 *)(puVar4 + 1);
  puVar2[0x152] = puVar4 + 8;
  uVar3 = Save_PlayerData_GetOptionsAddr(puVar2[0xaf]);
  puVar2[0xae] = uVar3;
  puVar2[0x157] = puVar4[7];
  puVar2[0x153] = puVar4 + 2;
  puVar2[0x154] = puVar4 + 3;
  puVar2[0x155] = puVar4 + 4;
  puVar2[0x156] = puVar4 + 5;
  *(undefined1 *)((int)puVar2 + 0x11) = 0xff;
  *(undefined2 *)((int)puVar2 + 0x5ba) = *(undefined2 *)(puVar4 + 10);
  uVar3 = Save_Frontier_GetStatic(puVar2[0xaf]);
  puVar2[1] = uVar3;
  iVar5 = 0;
  do {
    iVar6 = iVar5 + 1;
    *(undefined1 *)((int)puVar2 + iVar5 + 0x5b7) = 1;
    iVar5 = iVar6;
  } while (iVar6 < 3);
  iVar5 = func_0x02237d8c(*(undefined1 *)((int)puVar2 + 9));
  if (iVar5 == 0) {
    uVar1 = 3;
  }
  else {
    uVar1 = 4;
  }
  *(undefined1 *)(puVar2 + 5) = uVar1;
  *(undefined1 *)((int)puVar2 + 0x15) = 4;
  *(char *)(puVar2 + 3) = *(char *)((int)puVar2 + 0x15) + -1;
  *(undefined1 *)(puVar2 + 0x16d) = 0;
  ov83_02243FD4(puVar2);
  iVar5 = func_0x02237d8c(*(undefined1 *)((int)puVar2 + 9));
  if (iVar5 == 1) {
    sub_02096910(puVar2);
  }
  return 1;
}

