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
void * SysTask_CreateOnVBlankQueue(void *, void *, unsigned int);
unsigned char GetWindowBgId(void *);
undefined4 BgConfig_GetHeapId(void *);
void * GfGfxLoader_GetCharData(int, int, int, void *, int);
undefined4 sub_0200F1D4();
void * memcpy(void *, void *, unsigned int);
void * Heap_Alloc(int, unsigned int);
void * BgGetCharPtr(unsigned char);
undefined4 sub_0200EA24(int, int, int, unsigned short, unsigned short, int, unsigned short, unsigned short, unsigned short, unsigned short, unsigned short, unsigned short, ...);
undefined4 Heap_Free(void *);

undefined4 * WaitingIcon_New(undefined4 *param_1,int param_2)

{
  byte bVar1;
  int iVar2;
  undefined *puVar3;
  undefined4 *puVar4;
  undefined *puVar5;
  int iVar6;
  uint uVar7;
  int iVar8;
  int local_18;

  iVar2 = BgConfig_GetHeapId((undefined *)*param_1);
  bVar1 = GetWindowBgId((undefined *)param_1);
  puVar3 = BgGetCharPtr(bVar1);
  puVar4 = (undefined4 *)Heap_Alloc(iVar2,0x48c);
  memcpy((undefined *)(puVar4 + 0x101),puVar3 + (param_2 + 0x12) * 0x20,0x80);
  puVar5 = Heap_Alloc(iVar2,0x80);
  iVar6 = (param_2 + 10) * 0x20;
  memcpy(puVar5,puVar3 + iVar6,0x20);
  iVar8 = (param_2 + 0xb) * 0x20;
  memcpy(puVar5 + 0x20,puVar3 + iVar8,0x20);
  memcpy(puVar5 + 0x40,puVar3 + iVar6,0x20);
  memcpy(puVar5 + 0x60,puVar3 + iVar8,0x20);
  uVar7 = 0;
  do {
    memcpy((undefined *)(puVar4 + uVar7 * 0x20 + 1),puVar5,0x80);
    uVar7 = uVar7 + 1 & 0xff;
  } while (uVar7 < 8);
  Heap_Free(puVar5);
  puVar3 = GfGfxLoader_GetCharData(0x26,0x17,0,(undefined *)&local_18,iVar2);
  sub_0200EA24(*(undefined4 *)(local_18 + 0x14),0,0,0x10,0x80,puVar4 + 1,0x10,0x80,0,0,0x10,0x80);
  Heap_Free(puVar3);
  *puVar4 = param_1;
  *(short *)(puVar4 + 0x121) = (short)param_2;
  *(undefined1 *)((int)puVar4 + 0x486) = 0;
  *(byte *)((int)puVar4 + 0x487) = *(byte *)((int)puVar4 + 0x487) & 0x80;
  *(byte *)(puVar4 + 0x122) = *(byte *)(puVar4 + 0x122) & 0xfc;
  SysTask_CreateOnVBlankQueue((undefined *)0x200f3d1,(undefined *)puVar4,0);
  sub_0200F1D4(puVar4,1);
  return puVar4;
}

