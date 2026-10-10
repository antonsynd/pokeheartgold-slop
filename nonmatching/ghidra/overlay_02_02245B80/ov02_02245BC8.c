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
undefined4 IsPaletteFadeFinished(void);
undefined4 PlaySE_SetPitch(int, int);
void * TaskManager_GetEnvironment(void *);
undefined4 ov02_02245DE0();
undefined4 Heap_Free(void *);
undefined4 PlaySE(unsigned short);
undefined4 func_0x021ea284(void *) __asm__("sub_021EA284");
undefined4 _s32_div_f(void);
void * func_0x021ea220(void *, unsigned int) __asm__("sub_021EA220");
undefined4 BeginNormalPaletteFade(int, int, int, unsigned short, int, int, int);
undefined4 ov02_02245D18();
undefined4 ov02_02245DB0();

undefined4 ov02_02245BC8(undefined *param_1)

{
  ushort uVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;

  piVar2 = (int *)TaskManager_GetEnvironment(param_1);
  switch((short)piVar2[2]) {
  case 0:
    ov02_02245D18(piVar2);
    *(undefined2 *)((int)piVar2 + 10) = 0;
    piVar2[0x33] = 0;
    *(short *)(piVar2 + 2) = (short)piVar2[2] + 1;
    break;
  case 1:
    iVar4 = piVar2[0x33];
    if (iVar4 != 0xff) {
      if ((((iVar4 == 0) || (iVar4 == 0x1e)) || (iVar4 == 0x32)) ||
         (((iVar4 == 0x3c || (iVar4 == 0x46)) || (iVar4 == 0x50)))) {
        PlaySE(0x88b);
        if (piVar2[0x33] == 0x32) {
          PlaySE(0x88c);
        }
        iVar4 = piVar2[0x33];
        if (0x3b < iVar4) {
          _s32_div_f();
          PlaySE_SetPitch(0x88b,(iVar4 + -5) * 0x400000 >> 0x10);
        }
      }
      piVar2[0x33] = piVar2[0x33] + 1;
    }
    ov02_02245DE0((int)piVar2);
    uVar1 = *(ushort *)((int)piVar2 + 10);
    *(ushort *)((int)piVar2 + 10) = uVar1 + 1;
    if (0x59 < uVar1) {
      BeginNormalPaletteFade(3,0,0,0x7fff,0x18,2,*piVar2);
      *(short *)(piVar2 + 2) = (short)piVar2[2] + 1;
    }
    break;
  case 2:
    ov02_02245DE0((int)piVar2);
    iVar4 = IsPaletteFadeFinished();
    if (iVar4 != 0) {
      *(undefined2 *)((int)piVar2 + 10) = 0;
      *(short *)(piVar2 + 2) = (short)piVar2[2] + 1;
    }
    break;
  case 3:
    uVar1 = *(ushort *)((int)piVar2 + 10);
    *(ushort *)((int)piVar2 + 10) = uVar1 + 1;
    if (0x3b < uVar1) {
      ov02_02245DB0((int)piVar2);
      func_0x021ea284(piVar2[1] + 0x50);
      uVar3 = func_0x021ea220(*(undefined4 *)(piVar2[1] + 0x48),4);
      *(undefined4 *)(piVar2[1] + 0x50) = uVar3;
      BeginNormalPaletteFade(3,1,1,0x7fff,0x12,1,*piVar2);
      *(short *)(piVar2 + 2) = (short)piVar2[2] + 1;
    }
    break;
  case 4:
    iVar4 = IsPaletteFadeFinished();
    if (iVar4 != 0) {
      Heap_Free((undefined *)piVar2);
      return 1;
    }
  }
  return 0;
}

