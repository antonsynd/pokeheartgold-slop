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
undefined4 Sprite_SetDrawFlag(void *, int);
undefined4 ov96_021EB588();
undefined4 Sprite_SetAnimCtrlSeq(void *, int);
undefined4 PlaySE(unsigned short);
undefined4 ov96_021EB52C();
undefined4 Sprite_SetMatrix(void *, void *);
undefined4 _s32_div_f();

void ov96_021FFC34(undefined4 *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  uint extraout_r1;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 uStack_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  { uint nug_r3; int nug_k; __asm__ volatile("movs %0, r3" : "=l"(nug_r3) : : "cc");
    for (nug_k = 0; nug_k < (int)sizeof(uStack_14) && 0 + nug_k < 4; nug_k++) ((unsigned char *)&uStack_14)[nug_k] = (unsigned char)(nug_r3 >> (8 * (0 + nug_k)));
  }


  local_20 = 0;
  uStack_1c = 0x60000;
  local_18 = 0;
  local_2c = 0;
  uStack_28 = 0x60000;
  local_24 = 0;
  local_38 = 0;
  uStack_34 = 0x60000;
  local_30 = 0;
  uStack_14 = param_4;
  if ((int)(uint)*(ushort *)((int)param_1 + 0xe) < param_2) {
    *(short *)((int)param_1 + 0xe) = (short)param_2;
    uVar1 = _s32_div_f(param_2,10);
    { int nug_a = (int)(param_2), nug_b = (int)(10); extraout_r1 = nug_a % nug_b; _s32_div_f(nug_a, nug_b); }
    if ((uVar1 & 0xff) == 0) {
      local_20 = 0x70000;
      local_2c = 0xa0000;
      Sprite_SetAnimCtrlSeq((undefined *)*param_1,(extraout_r1 & 0xff) + 1);
      Sprite_SetAnimCtrlSeq((undefined *)param_1[1],0);
    }
    else {
      local_20 = 0x60000;
      local_2c = 0x90000;
      local_38 = 0xb0000;
      Sprite_SetAnimCtrlSeq((undefined *)*param_1,(uVar1 & 0xff) + 1);
      Sprite_SetAnimCtrlSeq((undefined *)param_1[1],(extraout_r1 & 0xff) + 1);
    }
    ov96_021EB588(param_1[2],(undefined *)&local_20);
    Sprite_SetMatrix((undefined *)*param_1,(undefined *)&local_2c);
    Sprite_SetMatrix((undefined *)param_1[1],(undefined *)&local_38);
    ov96_021EB52C((short *)param_1[2],1,1);
    Sprite_SetDrawFlag((undefined *)*param_1,1);
    Sprite_SetDrawFlag((undefined *)param_1[1],1);
    *(undefined2 *)(param_1 + 3) = 0x3c;
    PlaySE(0x88f);
    return;
  }
  *(short *)(param_1 + 3) = *(short *)(param_1 + 3) + -1;
  if (*(short *)(param_1 + 3) == 0) {
    *(undefined2 *)(param_1 + 3) = 0;
    ov96_021EB52C((short *)param_1[2],1,0);
    Sprite_SetDrawFlag((undefined *)*param_1,0);
    Sprite_SetDrawFlag((undefined *)param_1[1],0);
  }
  return;
}

