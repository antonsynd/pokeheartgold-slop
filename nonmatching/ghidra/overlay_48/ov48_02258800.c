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
unsigned char WiFiHistory_GetPlayerRegion(void *);
void * memset(void *, int, unsigned int);
undefined4 Main_SetVBlankIntrCB(void *, void *);
unsigned char WifiHistory_GetPlayerCountry(void *);
undefined4 ov48_022598EC();
undefined4 ov48_02259824();
void * OverlayManager_GetArgs(void *);
undefined4 Heap_Create(int, int, unsigned int);
undefined4 ov48_0225A00C();
undefined4 ov48_02259464();
undefined4 ov48_022593F4();
void * Save_PlayerData_GetOptionsAddr(void *);
undefined4 ov48_02259BC0();
undefined4 ov48_02259130();
undefined4 ov48_02259D00();
undefined4 ov48_0225B068();
void * OverlayManager_CreateAndGetData(void *, unsigned int, int);
void * Save_WiFiHistory_Get(void *);
undefined4 ov48_02259EAC();
undefined4 HBlankInterruptDisable(void);

undefined4 ov48_02258800(undefined *param_1)

{
  byte bVar1;
  int *piVar2;
  undefined *puVar3;
  undefined *puVar4;
  
  piVar2 = (int *)OverlayManager_GetArgs(param_1);
  Heap_Create(3,0x70,0x50000);
  puVar3 = OverlayManager_CreateAndGetData(param_1,0xc724,0x70);
  memset(puVar3,0,0xc724);
  puVar4 = Save_WiFiHistory_Get((undefined *)piVar2[1]);
  *(undefined **)(puVar3 + 0xc) = puVar4;
  puVar4 = Save_PlayerData_GetOptionsAddr((undefined *)piVar2[1]);
  *(undefined **)(puVar3 + 0x10) = puVar4;
  bVar1 = WifiHistory_GetPlayerCountry(*(undefined **)(puVar3 + 0xc));
  *(uint *)(puVar3 + 0x14) = (uint)bVar1;
  bVar1 = WiFiHistory_GetPlayerRegion(*(undefined **)(puVar3 + 0xc));
  *(uint *)(puVar3 + 0x18) = (uint)bVar1;
  *(int *)(puVar3 + 0x1c) = piVar2[2];
  ov48_022593F4((int)puVar3,piVar2);
  ov48_02259464((undefined4 *)(puVar3 + 0x20),*(undefined **)(puVar3 + 0x10),0x70);
  ov48_02259824((undefined4 *)(puVar3 + 0x178),(int)(puVar3 + 0x20),0x70);
  ov48_0225B068((undefined4 *)(puVar3 + 0x168),0x70);
  ov48_022598EC((int *)(puVar3 + 0x224),*piVar2,(int)(puVar3 + 0x20),*(int *)(puVar3 + 4),
                *(undefined4 *)(puVar3 + 8),0x70);
  ov48_02259BC0((undefined4 *)(puVar3 + 0xc3cc),*(int *)(puVar3 + 4),*(undefined4 *)(puVar3 + 8),
                0x70);
  ov48_02259D00(puVar3 + 0xc3e0,(undefined4 *)(puVar3 + 0x20),(undefined4 *)(puVar3 + 0x168),0x70);
  ov48_02259EAC(puVar3 + 0xc700,(undefined4 *)(puVar3 + 0x20),(undefined4 *)(puVar3 + 0x168),
                (undefined *)piVar2[1],0x70);
  ov48_0225A00C((undefined4 *)(puVar3 + 0xc40c),(undefined4 *)(puVar3 + 0x20),
                (undefined4 *)(puVar3 + 0x168),0x70);
  ov48_02259130((int)puVar3,piVar2);
  Main_SetVBlankIntrCB((undefined *)0x2259091,puVar3);
  HBlankInterruptDisable();
  return 1;
}

