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
undefined4 GetBoxMonData(void *, int, void *);
void * PCStorage_GetMonByIndexPair(void *, unsigned int, unsigned int);
unsigned char BoxMonIsShiny(void *);

undefined4 ov97_0221E898(undefined *param_1,uint param_2,uint param_3,uint *param_4)

{
  byte bVar1;
  undefined *puVar2;
  uint uVar3;

  puVar2 = PCStorage_GetMonByIndexPair(param_1,param_2,param_3);
  uVar3 = GetBoxMonData(puVar2,0xac,(undefined *)0x0);
  if (uVar3 != 0) {
    uVar3 = GetBoxMonData(puVar2,5,(undefined *)0x0);
    *param_4 = uVar3;
    uVar3 = GetBoxMonData(puVar2,0,(undefined *)0x0);
    param_4[1] = uVar3;
    uVar3 = GetBoxMonData(puVar2,0x4c,(undefined *)0x0);
    *(short *)(param_4 + 2) = (short)uVar3;
    uVar3 = GetBoxMonData(puVar2,0x70,(undefined *)0x0);
    *(short *)((int)param_4 + 10) = (short)uVar3;
    *(undefined2 *)(param_4 + 3) = 0;
    *(undefined2 *)((int)param_4 + 0xe) = 0;
    GetBoxMonData(puVar2,0x75,(undefined *)(param_4 + 6));
    bVar1 = BoxMonIsShiny(puVar2);
    *(ushort *)(param_4 + 4) = (ushort)bVar1;
    uVar3 = GetBoxMonData(puVar2,0x6f,(undefined *)0x0);
    *(short *)((int)param_4 + 0x12) = (short)uVar3;
    return 1;
  }
  *param_4 = 0;
  param_4[1] = 0;
  *(undefined2 *)(param_4 + 2) = 0;
  *(undefined2 *)((int)param_4 + 10) = 0;
  *(undefined2 *)(param_4 + 3) = 0;
  *(undefined2 *)((int)param_4 + 0xe) = 0;
  *(undefined2 *)(param_4 + 4) = 0;
  *(undefined2 *)((int)param_4 + 0x12) = 0;
  return 0;
}

