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
undefined4 ov01_021EB5F4();
undefined4 ov01_021EC29C();
undefined4 MTRandom(void);
undefined4 _u32_div_f(unsigned int, unsigned int);
undefined4 Sprite_SetAnimationFrame(void *, unsigned short);
undefined4 ov01_021EC304();

void ov01_021ECC70(int param_1)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  uint extraout_r1;
  int *piVar4;
  int iStack_20;
  int iStack_1c;

  piVar4 = *(int **)(param_1 + 8);
  ov01_021EC304(&iStack_20,param_1);
  iVar1 = piVar4[3];
  if (iVar1 == 0) {
    iVar1 = 0;
    do {
      iStack_20 = iStack_20 + piVar4[4] * 0x1000;
      iStack_1c = iStack_1c + piVar4[2] * 0x1000;
      iVar3 = *piVar4;
      *piVar4 = iVar3 + 1;
      if (piVar4[1] < iVar3) {
        uVar2 = MTRandom();
        { uint nug_a = (uint)(uVar2), nug_b = (uint)(10); extraout_r1 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
        if (extraout_r1 < 7) {
          piVar4[3] = 2;
        }
        else {
          piVar4[3] = 1;
          *piVar4 = 4;
          Sprite_SetAnimationFrame(*(undefined **)(param_1 + 4),3);
        }
      }
      iVar1 = iVar1 + 1;
    } while (iVar1 < 2);
    ov01_021EB5F4(*(undefined4 *)(param_1 + 4),&iStack_20);
    return;
  }
  if (iVar1 == 1) {
    iVar1 = *piVar4;
    *piVar4 = iVar1 + -1;
    if (iVar1 < 1) {
      piVar4[3] = 2;
      return;
    }
  }
  else {
    if (iVar1 != 2) {
      return;
    }
    ov01_021EC29C(param_1);
  }
  return;
}

