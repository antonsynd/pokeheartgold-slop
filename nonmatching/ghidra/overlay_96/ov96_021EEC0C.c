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
undefined4 ov96_021EED64();
undefined4 ManagedSprite_SetDrawFlag(void *, int);
undefined4 GetMonSpriteCharAndPlttNarcIdsEx(void *, unsigned short, unsigned char, unsigned char, unsigned char, unsigned char, unsigned int);
undefined4 Heap_Free(void *);
undefined4 ov96_021EED70();
void * Heap_AllocAtEnd(int, unsigned int);
undefined4 sub_02014510(int, int, int, void *, void *, unsigned int, int, int, int);

void ov96_021EEC0C(undefined4 *param_1,ushort *param_2,undefined4 param_3,undefined4 param_4,
                  int param_5,int param_6)

{
  undefined *puVar1;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  ushort uStack_28;
  ushort uStack_26;
  undefined2 uStack_24;
  undefined4 uStack_18;

  uStack_18 = param_4;
  if (*param_2 == 0) {
    ManagedSprite_SetDrawFlag((undefined *)param_1,0);
    return;
  }
  GetMonSpriteCharAndPlttNarcIdsEx
            ((undefined *)&uStack_28,*param_2,*(byte *)((int)param_2 + 7),2,(byte)param_2[3],
             (byte)param_2[1],*(uint *)(param_2 + 6));
  uStack_38 = 0;
  uStack_34 = 0;
  uStack_30 = 10;
  uStack_2c = 10;
  puVar1 = Heap_AllocAtEnd(param_5,0xc80);
  sub_02014510((uint)uStack_28,(uint)uStack_26,param_5,(undefined *)&uStack_38,puVar1,
               *(uint *)(param_2 + 6),0,2,(uint)*param_2);
  ov96_021EED64(*param_1,puVar1,0xc80);
  if (param_6 != 0) {
    ov96_021EED70(param_1,uStack_28,uStack_24,param_3,param_4,param_5);
  }
  ManagedSprite_SetDrawFlag((undefined *)param_1,1);
  Heap_Free(puVar1);
  return;
}

