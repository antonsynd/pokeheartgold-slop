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
void * ListMenuInit(void *, unsigned short, unsigned short, int);
void * OverlayManager_GetData(void *);
undefined4 DestroyMsgData(void *);
void * ListMenuItems_New(unsigned int, int);
undefined4 ov74_0222AA18();
void * NewMsgDataFromNarc(int, int, int, int);
undefined4 ListMenuItems_AppendFromMsgData(void *, void *, int, int);
undefined4 ListMenuItems_Delete(void *);
undefined4 DestroyListMenu(void *, void *, void *);

void ov74_0222A89C(undefined *param_1,int *param_2,uint param_3,undefined4 param_4,int param_5)

{
  undefined *puVar1;
  undefined *puVar2;
  int iVar3;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  uStack_18 = param_4;
  puVar1 = OverlayManager_GetData(param_1);
  if (*(undefined **)(puVar1 + 0x7c) != (undefined *)0x0) {
    ListMenuItems_Delete(*(undefined **)(puVar1 + 0x7c));
  }
  puVar2 = ListMenuItems_New(param_3,0x54);
  *(undefined **)(puVar1 + 0x7c) = puVar2;
  puVar2 = NewMsgDataFromNarc(0,0x1b,0xf7,0x54);
  iVar3 = 0;
  *(undefined **)(puVar1 + 0x10) = puVar2;
  if (0 < (int)param_3) {
    do {
      ListMenuItems_AppendFromMsgData
                (*(undefined **)(puVar1 + 0x7c),*(undefined **)(puVar1 + 0x10),*param_2,param_2[1]);
      iVar3 = iVar3 + 1;
      param_2 = param_2 + 2;
    } while (iVar3 < (int)param_3);
  }
  DestroyMsgData(*(undefined **)(puVar1 + 0x10));
  uStack_34 = 0x2235ff9;
  uStack_30 = 0;
  uStack_24 = 0x10000c00;
  uStack_20 = 0x80002f;
  uStack_1c = 0;
  uStack_38 = *(undefined4 *)(puVar1 + 0x7c);
  uStack_28 = CONCAT22((short)param_3,(short)param_3);
  uStack_2c = param_4;
  if (*(undefined **)(puVar1 + 0x78) != (undefined *)0x0) {
    DestroyListMenu(*(undefined **)(puVar1 + 0x78),(undefined *)0x0,(undefined *)0x0);
  }
  puVar2 = ListMenuInit((undefined *)&uStack_38,0,0,0x54);
  *(undefined **)(puVar1 + 0x78) = puVar2;
  if (param_5 != -1) {
    ov74_0222AA18(param_1,puVar1 + 0x18);
  }
  return;
}

