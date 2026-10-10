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
undefined4 sub_0208DDA0();
undefined4 sub_0208BDC8();
undefined4 LoadUserFrameGfx2(void *, int, unsigned short, unsigned char, unsigned char, int);
void * sub_0208A520(void *);
undefined4 Heap_Free(void *);
undefined4 GetMonData(void *, int, void *);
undefined4 Options_GetFrame(void *);
undefined4 CopyBoxPokemonToPokemon(void *, void *);
void * AllocMonZeroed(int);
undefined4 sub_0208E174(void *);
undefined4 LoadFontPal1(int, int, int);
undefined4 sub_0208BCD4();
extern uint  uRam021d1154 __asm__("sub_021D1154");

undefined4 sub_02089478(undefined4 *param_1)

{
  char cVar1;
  undefined *puVar2;
  undefined *puVar3;
  uint uVar4;
  
  if ((uRam021d1154 & 3) == 0) {
    return 0x10;
  }
  if (*(char *)(param_1[0x8b] + 0x11) == '\x02') {
    puVar2 = sub_0208A520((undefined *)param_1);
    puVar3 = AllocMonZeroed(0x13);
    CopyBoxPokemonToPokemon(puVar2,puVar3);
  }
  else {
    puVar3 = sub_0208A520((undefined *)param_1);
  }
  *(undefined1 *)((int)param_1 + 0x7be) = 0;
  cVar1 = *(char *)((int)param_1 + 0x275);
  uVar4 = GetMonData(puVar3,0x13,(undefined *)0x0);
  *(char *)((int)param_1 + 0x275) = (char)uVar4;
  if (cVar1 != *(char *)((int)param_1 + 0x275)) {
    *(byte *)((int)param_1 + 0x7be) = *(byte *)((int)param_1 + 0x7be) | 1;
  }
  cVar1 = *(char *)((int)param_1 + 0x276);
  uVar4 = GetMonData(puVar3,0x14,(undefined *)0x0);
  *(char *)((int)param_1 + 0x276) = (char)uVar4;
  if (cVar1 != *(char *)((int)param_1 + 0x276)) {
    *(byte *)((int)param_1 + 0x7be) = *(byte *)((int)param_1 + 0x7be) | 2;
  }
  cVar1 = *(char *)((int)param_1 + 0x277);
  uVar4 = GetMonData(puVar3,0x15,(undefined *)0x0);
  *(char *)((int)param_1 + 0x277) = (char)uVar4;
  if (cVar1 != *(char *)((int)param_1 + 0x277)) {
    *(byte *)((int)param_1 + 0x7be) = *(byte *)((int)param_1 + 0x7be) | 4;
  }
  cVar1 = *(char *)(param_1 + 0x9e);
  uVar4 = GetMonData(puVar3,0x16,(undefined *)0x0);
  *(char *)(param_1 + 0x9e) = (char)uVar4;
  if (cVar1 != *(char *)(param_1 + 0x9e)) {
    *(byte *)((int)param_1 + 0x7be) = *(byte *)((int)param_1 + 0x7be) | 8;
  }
  cVar1 = *(char *)((int)param_1 + 0x279);
  uVar4 = GetMonData(puVar3,0x17,(undefined *)0x0);
  *(char *)((int)param_1 + 0x279) = (char)uVar4;
  if (cVar1 != *(char *)((int)param_1 + 0x279)) {
    *(byte *)((int)param_1 + 0x7be) = *(byte *)((int)param_1 + 0x7be) | 0x10;
  }
  uVar4 = GetMonData(puVar3,0x18,(undefined *)0x0);
  *(char *)((int)param_1 + 0x27a) = (char)uVar4;
  if (*(char *)(param_1[0x8b] + 0x11) == '\x02') {
    Heap_Free(puVar3);
  }
  LoadFontPal1(0,0x1c0,0x13);
  uVar4 = Options_GetFrame(*(undefined **)(param_1[0x8b] + 4));
  LoadUserFrameGfx2((undefined *)*param_1,1,0x3e2,0xd,(byte)uVar4,0x13);
  if (*(char *)((int)param_1 + 0x7be) == '\0') {
    sub_0208DDA0(param_1,0xfe);
    return 0x12;
  }
  sub_0208E174((undefined *)param_1);
  sub_0208BCD4(param_1);
  sub_0208BDC8(param_1);
  return 0x11;
}

