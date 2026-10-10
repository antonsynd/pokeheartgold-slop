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
undefined4 Pokepic_SetAttr(undefined4, undefined4, undefined4);
undefined4 ov07_02222788(undefined4, undefined4);
undefined4 ov07_0221C448(undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 ov07_02222590(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_022226C4(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0222283C(undefined4, undefined4, undefined4, undefined4);

void ov07_02230714(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;

  switch(param_2[1]) {
  case 0:
    ov07_02222590(param_2 + 5,(int)(short)param_2[0x17],(int)(short)param_2[0x18],
                  (int)(short)param_2[0x19],(int)(short)param_2[0x1a],(int)(short)param_2[0x1b],
                  (int)param_2[0x1d] >> 0x10);
    ov07_0222283C(param_2 + 0xe,(int)*(short *)((int)param_2 + 10),(int)*(short *)(param_2 + 2),
                  param_2[4]);
    ov07_02222788(param_2 + 5,param_2[4]);
    ov07_022226C4(param_2[4],(int)*(short *)(param_2 + 2),(int)*(short *)(param_2 + 3),param_2[10],0
                 );
    param_2[1] = param_2[1] + 1;
    return;
  case 1:
    ov07_0222283C(param_2 + 0xe,(int)*(short *)((int)param_2 + 10),(int)*(short *)(param_2 + 2),
                  param_2[4]);
    iVar1 = ov07_02222788(param_2 + 5,param_2[4]);
    ov07_022226C4(param_2[4],(int)*(short *)(param_2 + 2),(int)*(short *)(param_2 + 3),param_2[10],0
                 );
    if (iVar1 == 0) {
      param_2[1] = param_2[1] + 1;
      return;
    }
    break;
  case 2:
    ov07_02222590(param_2 + 5,(int)(short)param_2[0x18],(int)(short)param_2[0x17],
                  (int)(short)param_2[0x1a],(int)(short)param_2[0x19],(int)(short)param_2[0x1b],
                  param_2[0x1d] & 0xffff);
    ov07_0222283C(param_2 + 0xe,(int)*(short *)((int)param_2 + 10),(int)*(short *)(param_2 + 2),
                  param_2[4]);
    ov07_02222788(param_2 + 5,param_2[4]);
    ov07_022226C4(param_2[4],(int)*(short *)(param_2 + 2),(int)*(short *)(param_2 + 3),param_2[10],0
                 );
    param_2[1] = param_2[1] + 1;
    return;
  case 3:
    ov07_0222283C(param_2 + 0xe,(int)*(short *)((int)param_2 + 10),(int)*(short *)(param_2 + 2),
                  param_2[4]);
    iVar1 = ov07_02222788(param_2 + 5,param_2[4]);
    ov07_022226C4(param_2[4],(int)*(short *)(param_2 + 2),(int)*(short *)(param_2 + 3),param_2[10],0
                 );
    if (iVar1 == 0) {
      iVar1 = param_2[0x1c];
      param_2[0x1c] = iVar1 + -1;
      if (0 < iVar1 + -1) {
        param_2[1] = 0;
        return;
      }
      param_2[1] = param_2[1] + 1;
      return;
    }
    break;
  case 4:
    Pokepic_SetAttr(param_2[4],0,(int)*(short *)((int)param_2 + 10));
    Pokepic_SetAttr(param_2[4],1,(int)*(short *)(param_2 + 2));
    Pokepic_SetAttr(param_2[4],0xc,0x100);
    Pokepic_SetAttr(param_2[4],0xd,0x100);
    Heap_Free(param_2);
    ov07_0221C448(*param_2,param_1);
  }
  return;
}

