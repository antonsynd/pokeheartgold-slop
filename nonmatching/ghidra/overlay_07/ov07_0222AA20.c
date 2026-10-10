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
undefined4 ov07_02231E08();
undefined4 func_0x0200e0fc() __asm__("sub_0200E0FC");
undefined4 ov07_0221BFD0();
undefined4 ov07_0222A8D8();
undefined4 ov07_02222F10();
undefined4 Sprite_DeleteAndFreeResources();
extern undefined2 uRam04000052 __asm__("sub_04000052");
undefined4 SpriteSystem_DrawSprites();
undefined4 ov07_0221C448();
undefined4 Heap_Free();
undefined4 ov07_02222EF8();

void ov07_0222AA20(undefined4 param_1,int param_2)

{
  bool bVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;

  iVar3 = 0;
  bVar1 = false;
  iVar4 = param_2;
  iVar5 = param_2;
  do {
    *(short *)(iVar4 + 0x22) = *(short *)(iVar4 + 0x22) + 1;
    if ((0x13 < *(short *)(iVar4 + 0x22)) &&
       (ov07_0222A8D8(*(undefined4 *)(iVar5 + 0x2c)), *(short *)(param_2 + 0x22) == 0x6e)) {
      ov07_02231E08(*(undefined4 *)(param_2 + 4),0xffffffff,0xffffffff);
      func_0x0200e0fc(*(undefined4 *)(param_2 + 0x2c),1);
      func_0x0200e0fc(*(undefined4 *)(param_2 + 0x30),1);
      func_0x0200e0fc(*(undefined4 *)(param_2 + 0x34),1);
      func_0x0200e0fc(*(undefined4 *)(param_2 + 0x38),1);
      *(undefined4 *)(param_2 + 0x54) = 0xf;
      *(undefined4 *)(param_2 + 0x58) = 0;
    }
    iVar3 = iVar3 + 1;
    iVar4 = iVar4 + 2;
    iVar5 = iVar5 + 4;
  } while (iVar3 < 4);
  if (*(short *)(param_2 + 0x22) == 0x32) {
    uVar2 = ov07_0221BFD0(*(undefined4 *)(param_2 + 4));
    uVar2 = ov07_02222F10(*(undefined4 *)(param_2 + 0x18),uVar2,2,
                          (*(uint *)(param_2 + 0x1c) & 0xfff) << 4,0x10,0xfffffffe,2,0,0xe,0xffff,
                          0x3ea);
    *(undefined4 *)(param_2 + 0x3c) = uVar2;
  }
  if (*(short *)(param_2 + 0x22) == 0x3c) {
    uVar2 = ov07_0221BFD0(*(undefined4 *)(param_2 + 4));
    uVar2 = ov07_02222F10(*(undefined4 *)(param_2 + 0x18),uVar2,2,
                          (*(uint *)(param_2 + 0x1c) & 0xfff) << 4,0x10,0xfffffffe,2,0xe,0,0xffff,
                          0x3ea);
    *(undefined4 *)(param_2 + 0x40) = uVar2;
  }
  if (*(short *)(param_2 + 0x22) == 0x46) {
    uVar2 = ov07_0221BFD0(*(undefined4 *)(param_2 + 4));
    uVar2 = ov07_02222F10(*(undefined4 *)(param_2 + 0x18),uVar2,2,
                          (*(uint *)(param_2 + 0x1c) & 0xfff) << 4,0x10,0xfffffffe,2,0,0xe,0xffff,
                          0x3ea);
    *(undefined4 *)(param_2 + 0x44) = uVar2;
  }
  if (*(short *)(param_2 + 0x22) == 0x50) {
    uVar2 = ov07_0221BFD0(*(undefined4 *)(param_2 + 4));
    uVar2 = ov07_02222F10(*(undefined4 *)(param_2 + 0x18),uVar2,2,
                          (*(uint *)(param_2 + 0x1c) & 0xfff) << 4,0x10,0xfffffffe,2,0xe,0,0xffff,
                          0x3ea);
    *(undefined4 *)(param_2 + 0x48) = uVar2;
  }
  if (*(short *)(param_2 + 0x22) == 0x5a) {
    uVar2 = ov07_0221BFD0(*(undefined4 *)(param_2 + 4));
    uVar2 = ov07_02222F10(*(undefined4 *)(param_2 + 0x18),uVar2,2,
                          (*(uint *)(param_2 + 0x1c) & 0xfff) << 4,0x10,0xfffffffe,2,0,0xe,0xffff,
                          0x3ea);
    *(undefined4 *)(param_2 + 0x4c) = uVar2;
  }
  if (*(short *)(param_2 + 0x22) == 100) {
    uVar2 = ov07_0221BFD0(*(undefined4 *)(param_2 + 4));
    uVar2 = ov07_02222F10(*(undefined4 *)(param_2 + 0x18),uVar2,2,
                          (*(uint *)(param_2 + 0x1c) & 0xfff) << 4,0x10,0xfffffffe,2,0xe,0,0xffff,
                          0x3ea);
    *(undefined4 *)(param_2 + 0x50) = uVar2;
  }
  if (*(short *)(param_2 + 0x22) == 0x6e) {
    ov07_02231E08(*(undefined4 *)(param_2 + 4),0xffffffff,0xffffffff);
    func_0x0200e0fc(*(undefined4 *)(param_2 + 0x2c),1);
    func_0x0200e0fc(*(undefined4 *)(param_2 + 0x30),1);
    func_0x0200e0fc(*(undefined4 *)(param_2 + 0x34),1);
    func_0x0200e0fc(*(undefined4 *)(param_2 + 0x38),1);
    *(undefined4 *)(param_2 + 0x54) = 0xf;
    *(undefined4 *)(param_2 + 0x58) = 0;
  }
  if (0x6d < *(short *)(param_2 + 0x22)) {
    if (0 < *(int *)(param_2 + 0x54)) {
      *(int *)(param_2 + 0x54) = *(int *)(param_2 + 0x54) + -1;
    }
    if (*(int *)(param_2 + 0x58) < 0xf) {
      *(int *)(param_2 + 0x58) = *(int *)(param_2 + 0x58) + 1;
    }
    uRam04000052 = (ushort)*(undefined4 *)(param_2 + 0x54) | (ushort)(*(int *)(param_2 + 0x58) << 8)
    ;
    if ((*(int *)(param_2 + 0x54) == 0) && (*(int *)(param_2 + 0x58) == 0xf)) {
      bVar1 = true;
    }
  }
  if (bVar1) {
    iVar5 = 0;
    iVar4 = param_2;
    do {
      Sprite_DeleteAndFreeResources(*(undefined4 *)(iVar4 + 0x2c));
      iVar5 = iVar5 + 1;
      iVar4 = iVar4 + 4;
    } while (iVar5 < 4);
    iVar5 = 0;
    iVar4 = param_2;
    do {
      ov07_02222EF8(*(undefined4 *)(iVar4 + 0x3c));
      iVar5 = iVar5 + 1;
      iVar4 = iVar4 + 4;
    } while (iVar5 < 6);
    ov07_0221C448(*(undefined4 *)(param_2 + 4),param_1);
    Heap_Free(param_2);
    return;
  }
  SpriteSystem_DrawSprites(*(undefined4 *)(param_2 + 0x10));
  return;
}

