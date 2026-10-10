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
undefined4 ov93_02261528(int, unsigned char, ...);
undefined4 ov93_02260F84();
undefined4 ManagedSprite_AddSpritePrecisePositionXY(void *, int, int);
undefined4 ov93_022627E8();
undefined4 ManagedSprite_SetAffineScale(void *, float, float);
undefined4 _fflt(void);
undefined4 ov93_022614F4();
undefined4 _fdiv(void);
undefined4 ManagedSprite_GetPositionXYWithSubscreenOffset(void *, void *, void *, int);
unsigned short sub_0203769C(void);
undefined4 _s32_div_f(void);
undefined4 ov93_02260FB8();
extern undefined ov93_02262CA4;

undefined4 ov93_02260080(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  bool bVar2;
  undefined1 uVar3;
  ushort uVar4;
  float fVar5;
  int iVar6;
  int unaff_r5;
  int unaff_r6;
  short sStack_24;
  short sStack_22;
  short sStack_20;
  short sStack_1e;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  __asm__ volatile("movs %0, r5" : "=l"(unaff_r5) : : "cc");
  __asm__ volatile("movs %0, r6" : "=l"(unaff_r6) : : "cc");

  
  bVar2 = false;
  uStack_18 = param_4;
  ManagedSprite_GetPositionXYWithSubscreenOffset
            (*(undefined **)(param_2 + 0x10),(undefined *)&sStack_22,(undefined *)&sStack_24,
             0x160000);
  switch(*(undefined1 *)(*(int *)(param_2 + 0x14) + 7)) {
  case 0:
    unaff_r6 = 0x1c - sStack_24;
    ManagedSprite_AddSpritePrecisePositionXY(*(undefined **)(param_2 + 0x10),0,0x5000);
    ManagedSprite_GetPositionXYWithSubscreenOffset
              (*(undefined **)(param_2 + 0x10),(undefined *)&sStack_1e,(undefined *)&sStack_20,
               0x160000);
    unaff_r5 = 0x1c - sStack_20;
    if (0x4a < sStack_20) {
      bVar2 = true;
    }
    break;
  case 1:
    unaff_r6 = sStack_22 + -0xcc;
    ManagedSprite_AddSpritePrecisePositionXY(*(undefined **)(param_2 + 0x10),-0x5000,0);
    ManagedSprite_GetPositionXYWithSubscreenOffset
              (*(undefined **)(param_2 + 0x10),(undefined *)&sStack_1e,(undefined *)&sStack_20,
               0x160000);
    unaff_r5 = sStack_1e + -0xcc;
    if (sStack_1e < 0x98) {
      bVar2 = true;
    }
    break;
  case 2:
    unaff_r6 = sStack_24 + -0xa4;
    ManagedSprite_AddSpritePrecisePositionXY(*(undefined **)(param_2 + 0x10),0,-0x5000);
    ManagedSprite_GetPositionXYWithSubscreenOffset
              (*(undefined **)(param_2 + 0x10),(undefined *)&sStack_1e,(undefined *)&sStack_20,
               0x160000);
    unaff_r5 = sStack_20 + -0xa4;
    if (sStack_20 < 0x72) {
      bVar2 = true;
    }
    break;
  case 3:
    unaff_r6 = 0x34 - sStack_22;
    ManagedSprite_AddSpritePrecisePositionXY(*(undefined **)(param_2 + 0x10),0x5000,0);
    ManagedSprite_GetPositionXYWithSubscreenOffset
              (*(undefined **)(param_2 + 0x10),(undefined *)&sStack_1e,(undefined *)&sStack_20,
               0x160000);
    unaff_r5 = 0x34 - sStack_1e;
    if (0x68 < sStack_1e) {
      bVar2 = true;
    }
  }
  if (unaff_r5 < 0) {
    if (-0xe < unaff_r5) {
      fVar5 = (float)(-unaff_r5 * *(int *)(&ov93_02262CA4 + (uint)*(byte *)(param_2 + 0xe) * 4));
      _s32_div_f();
      if ((int)fVar5 < 0x400) {
        fVar5 = 1.43493e-42;
      }
      _fflt();
      _fdiv();
      ManagedSprite_SetAffineScale(*(undefined **)(param_2 + 0x10),fVar5,fVar5);
    }
  }
  else if (unaff_r5 < 0xe) {
    fVar5 = (float)(unaff_r5 << 0xc);
    _s32_div_f();
    if ((int)fVar5 < 0x400) {
      fVar5 = 1.43493e-42;
    }
    _fflt();
    _fdiv();
    ManagedSprite_SetAffineScale(*(undefined **)(param_2 + 0x10),fVar5,fVar5);
  }
  uVar4 = sub_0203769C();
  if ((((int)*(short *)(param_2 + 4) == (uint)uVar4) && (-1 < unaff_r6)) && (unaff_r5 < 1)) {
    uVar3 = ov93_022614F4(param_1,&uStack_1c);
    *(undefined1 *)(param_2 + 0xe) = uVar3;
    cVar1 = *(char *)(param_2 + 0xe);
    if (cVar1 == '\x01') {
      *(int *)(param_2 + 8) = *(int *)(param_2 + 8) << 1;
    }
    else if (cVar1 == '\x02') {
      *(int *)(param_2 + 8) = *(int *)(param_2 + 8) / 2;
    }
    else if (cVar1 == '\x03') {
      *(int *)(param_2 + 8) = *(int *)(param_2 + 8) * 3;
    }
    ov93_02260FB8(param_1,*(undefined1 *)(param_2 + 0xe));
    if (*(char *)(param_2 + 0xe) != '\0') {
      ov93_02261528(uStack_1c,3);
    }
    iVar6 = ov93_02260F84(param_1);
    if (iVar6 != 0) {
      ov93_022627E8(param_1);
    }
  }
  if (!bVar2) {
    return 0;
  }
  return 1;
}

