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
undefined4 ov87_021E7334();
void * Save_PlayerData_GetOptionsAddr(void *);
undefined4 Sound_SetSceneAndPlayBGM(unsigned char, unsigned short, int);
undefined4 ov87_021E68DC();
void * OverlayManager_CreateAndGetData(void *, unsigned int, int);
void * OverlayManager_GetArgs(void *);
undefined4 Heap_Create(int, int, unsigned int);
void * BgConfig_Alloc(int);
void * memset(void *, int, unsigned int);
undefined4 ov87_021E68A4();

int ScratchOffCards_Init(undefined *param_1,undefined *param_2)

{
  undefined4 *puVar1;
  undefined *puVar2;
  undefined4 *puVar3;
  int iVar4;
  int iVar5;

  ov87_021E68A4();
  Heap_Create(3,0x7a,0x48000);
  puVar1 = (undefined4 *)OverlayManager_CreateAndGetData(param_1,0x99fc,0x7a);
  memset((undefined *)puVar1,0,0x99fc);
  puVar2 = BgConfig_Alloc(0x7a);
  puVar1[0x16] = puVar2;
  *puVar1 = param_1;
  puVar3 = (undefined4 *)OverlayManager_GetArgs(param_1);
  puVar1[0x5a] = *puVar3;
  *(undefined1 *)((int)puVar1 + 9) = *(undefined1 *)(puVar3 + 1);
  puVar1[0xdd] = puVar3 + 5;
  puVar2 = Save_PlayerData_GetOptionsAddr((undefined *)puVar1[0x5a]);
  puVar1[0x59] = puVar2;
  puVar1[0xde] = puVar3 + 2;
  puVar1[0xdf] = (undefined *)((int)puVar3 + 0xe);
  ov87_021E7334((int)puVar1);
  iVar4 = 0;
  iVar5 = 0;
  do {
    iVar4 = iVar4 + 1;
    *(undefined2 *)(puVar1[0xde] + iVar5) = 0;
    *(undefined2 *)(puVar1[0xdf] + iVar5) = 0;
    iVar5 = iVar5 + 2;
  } while (iVar4 < 3);
  *(undefined1 *)((int)puVar1 + 0x39d) = 0;
  ov87_021E68DC((undefined *)puVar1,0x39d,iVar5,0x378);
  *(undefined4 *)param_2 = 0;
  Sound_SetSceneAndPlayBGM(0x42,0,0);
  return 1;
}

