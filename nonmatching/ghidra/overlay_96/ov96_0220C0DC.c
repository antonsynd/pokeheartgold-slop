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
undefined4 ManagedSprite_SetAnim(void *, int);
undefined4 ManagedSprite_SetPositionXY(void *, short, short);
undefined4 ManagedSprite_SetDrawFlag(void *, int);
undefined4 ManagedSprite_SetAnimNoRestart(void *, int);
undefined4 _u32_div_f(unsigned int, unsigned int);

void ov96_0220C0DC(int param_1,uint *param_2)

{
  uint extraout_r1;

  if ((*(uint *)(param_1 + 0x38) & 0x7fffff) >> 0xf != (*param_2 & 0xff)) {
    { uint nug_a = (uint)(*param_2 & 0xff), nug_b = (uint)(10); extraout_r1 = nug_a % nug_b; _u32_div_f(nug_a, nug_b); }
    if (extraout_r1 == 0) {
      ManagedSprite_SetAnimNoRestart(*(undefined **)(param_1 + 0x1c),0xd);
    }
    else {
      ManagedSprite_SetAnimNoRestart(*(undefined **)(param_1 + 0x1c),0xc - (extraout_r1 >> 1));
    }
    ManagedSprite_SetPositionXY
              (*(undefined **)(param_1 + 0x20),
               (short)((((*(uint *)(param_1 + 0x38) & 0x1fffffff) >> 0x1b) * 0x40 + 0x48) * 0x10000
                      >> 0x10),(short)(((extraout_r1 >> 1) * 3 + 0x30) * 0x10000 >> 0x10));
    ManagedSprite_SetAnim(*(undefined **)(param_1 + 0x20),5);
    ManagedSprite_SetDrawFlag(*(undefined **)(param_1 + 0x20),1);
    *(uint *)(param_1 + 0x38) = (*param_2 & 0xff) << 0xf | *(uint *)(param_1 + 0x38) & 0xff807fff;
  }
  return;
}

