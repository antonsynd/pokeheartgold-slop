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
typedef void code(void);
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
undefined4 ov07_0223494C(undefined4, undefined4);
undefined4 ov07_022222B4(undefined4);
undefined4 ov07_02222268(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Pokepic_GetAttr(undefined4, undefined4);
undefined4 ov07_0223475C(undefined4, undefined4);
undefined4 ov07_0221BFD0(undefined4);
undefined4 ov07_0221C7B8(undefined4, undefined4, undefined4);
undefined4 ov07_0221C448(undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 Pokepic_SetAttr(undefined4, undefined4, undefined4);

void ov07_0222B898(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined2 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 auStack_60 [80];
  undefined4 uStack_10;

  uStack_10 = param_4;
  if (*param_2 == '\0') {
    ov07_02222268(param_2 + 0x30,(int)*(short *)(param_2 + 0x20),
                  (int)(short)*(undefined4 *)(param_2 + *(int *)(param_2 + 0x68) * 4 + 0x6c),
                  (int)(short)*(undefined4 *)(param_2 + *(int *)(param_2 + 0x68) * 4 + 0x78),
                  (int)(short)*(undefined4 *)(param_2 + *(int *)(param_2 + 0x68) * 4 + 0x78),0xf);
    Pokepic_SetAttr(*(undefined4 *)(param_2 + 0x24),2,
                    *(undefined4 *)(param_2 + *(int *)(param_2 + 0x68) * 4 + 0x84));
    Pokepic_SetAttr(*(undefined4 *)(param_2 + 0x24),0x2c,1);
    *param_2 = *param_2 + '\x01';
  }
  else if (*param_2 != '\x01') {
    Pokepic_SetAttr(*(undefined4 *)(param_2 + 0x24),0x2c,0);
    ov07_0221C448(*(undefined4 *)(param_2 + 4),param_1);
    Heap_Free(param_2);
    return;
  }
  iVar2 = ov07_022222B4(param_2 + 0x30);
  if (iVar2 == 0) {
    iVar2 = *(int *)(param_2 + 0x68);
    *(int *)(param_2 + 0x68) = iVar2 + 1;
    if (iVar2 + 1 < 3) {
      if (*(int *)(param_2 + 0x58) == 0) {
        ov07_0221C7B8(*(undefined4 *)(param_2 + 4),auStack_60,3);
        if (*(int *)(param_2 + 0x68) == 2) {
          uVar3 = ov07_0221BFD0(*(undefined4 *)(param_2 + 4));
          ov07_0223494C(auStack_60,uVar3);
        }
        else {
          uVar3 = ov07_0221BFD0(*(undefined4 *)(param_2 + 4));
          ov07_0223475C(auStack_60,uVar3);
        }
      }
      *param_2 = '\0';
    }
    else {
      *param_2 = *param_2 + '\x01';
    }
    uVar1 = Pokepic_GetAttr(*(undefined4 *)(param_2 + 0x24),0);
    *(undefined2 *)(param_2 + 0x20) = uVar1;
  }
  Pokepic_SetAttr(*(undefined4 *)(param_2 + 0x24),0,(int)*(short *)(param_2 + 0x30));
  Pokepic_SetAttr(*(undefined4 *)(param_2 + 0x24),1,(int)*(short *)(param_2 + 0x32));
  return;
}

