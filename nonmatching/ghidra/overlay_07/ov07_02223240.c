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
undefined4 ov07_022227A8(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ManagedSprite_SetPositionXY(undefined4, undefined4, undefined4);
undefined4 ov07_022227D8(undefined4);
undefined4 Pokepic_SetAttr(undefined4, undefined4, undefined4);
undefined4 func_0x0201bc8c(undefined4, undefined4, undefined4, undefined4) __asm__("sub_0201BC8C");
undefined4 ov07_0221C448(undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 Heap_Free(undefined4);
undefined4 SpriteSystem_DrawSprites(undefined4);
undefined4 func_0x0200dc18(undefined4) __asm__("sub_0200DC18");

void ov07_02223240(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;

  if ((char)param_2[1] == '\0') {
    ov07_022227A8(param_2 + 0x1f,(int)(short)param_2[8],(int)*(short *)((int)param_2 + 0x22),
                  (int)(short)param_2[9],(int)*(short *)((int)param_2 + 0x26));
    *(char *)(param_2 + 1) = (char)param_2[1] + '\x01';
    return;
  }
  if ((char)param_2[1] == '\x01') {
    iVar1 = ov07_022227D8(param_2 + 0x1f);
    if (iVar1 == 0) {
      *(char *)(param_2 + 1) = (char)param_2[1] + '\x01';
      return;
    }
    if ((param_2[10] & 0x100U) == 0x100) {
      iVar1 = 0;
      piVar2 = param_2;
      if (0 < *param_2) {
        do {
          if (piVar2[0xd] != 0) {
            Pokepic_SetAttr(piVar2[0xd],0,(int)(short)param_2[0x1f] + (int)(short)piVar2[0xc]);
            Pokepic_SetAttr(piVar2[0xd],1,
                            (int)*(short *)((int)param_2 + 0x7e) +
                            (int)*(short *)((int)piVar2 + 0x32));
          }
          iVar1 = iVar1 + 1;
          piVar2 = piVar2 + 5;
        } while (iVar1 < *param_2);
      }
    }
    else if ((param_2[10] & 0x200U) == 0x200) {
      iVar1 = 0;
      piVar2 = param_2;
      if (0 < *param_2) {
        do {
          if (piVar2[0xe] != 0) {
            ManagedSprite_SetPositionXY
                      (piVar2[0xe],
                       ((int)(short)param_2[0x1f] + (int)(short)piVar2[0xc]) * 0x10000 >> 0x10,
                       ((int)*(short *)((int)param_2 + 0x7e) + (int)*(short *)((int)piVar2 + 0x32))
                       * 0x10000 >> 0x10);
            func_0x0200dc18(piVar2[0xe]);
          }
          iVar1 = iVar1 + 1;
          piVar2 = piVar2 + 5;
        } while (iVar1 < *param_2);
      }
      SpriteSystem_DrawSprites(param_2[4]);
    }
    if ((param_2[10] & 0x400U) == 0x400) {
      func_0x0201bc8c(param_2[6],3,0,(int)(short)param_2[0x1f]);
      return;
    }
  }
  else {
    ov07_0221C448(param_2[2],param_1,param_1,param_4,param_4);
    Heap_Free(param_2);
  }
  return;
}

