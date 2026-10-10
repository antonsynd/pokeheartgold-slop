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
undefined4 ov108_021E8758();
undefined4 G2dRenderer_Init();
undefined4 Create2DGfxResObjMan();
undefined4 Create2DGfxResObjList();

void ov108_021E867C(undefined4 *param_1)

{
  undefined4 uVar1;
  uint uVar2;
  int iVar3;
  int *piVar4;
  undefined4 *puVar5;
  undefined1 *puVar6;
  uint uStack_1c;
  undefined1 auStack_18 [4];
  
  auStack_18[0] = 0xc;
  auStack_18[1] = 1;
  auStack_18[2] = 1;
  auStack_18[3] = 1;
  uVar1 = G2dRenderer_Init(*(undefined2 *)(param_1 + 3),param_1 + 6,*param_1);
  param_1[4] = uVar1;
  uStack_1c = 0;
  puVar6 = auStack_18;
  puVar5 = param_1;
  do {
    uVar1 = Create2DGfxResObjMan(*puVar6,uStack_1c,*param_1);
    puVar5[0x51] = uVar1;
    uVar1 = Create2DGfxResObjList(*puVar6,*param_1);
    puVar5[0x55] = uVar1;
    piVar4 = (int *)puVar5[0x55];
    uVar2 = 0;
    if (piVar4[1] != 0) {
      iVar3 = 0;
      do {
        uVar2 = uVar2 + 1;
        *(undefined4 *)(*piVar4 + iVar3) = 0;
        piVar4 = (int *)puVar5[0x55];
        iVar3 = iVar3 + 4;
      } while (uVar2 < (uint)piVar4[1]);
    }
    puVar6 = puVar6 + 1;
    uStack_1c = uStack_1c + 1;
    puVar5 = puVar5 + 1;
  } while (uStack_1c < 4);
  ov108_021E8758(param_1);
  return;
}

