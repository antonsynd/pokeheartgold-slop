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
undefined4 ManagedSprite_SetPositionXY();
undefined4 ov14_021F3190();
undefined4 ov14_021F2F88();

undefined4 ov14_021E66F4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  short sStack_1c;
  short sStack_1a;
  undefined4 uStack_18;

  iVar3 = *(int *)(*(int *)(param_1 + 0x34) + 0xc);
  uStack_18 = param_4;
  if (*(int *)(iVar3 + 0xe0) == 8) {
    uVar4 = 0;
    do {
      if (*(int *)(iVar3 + 0xc) != 0) {
        bVar1 = *(byte *)(*(int *)(param_1 + 0x34) + *(int *)(iVar3 + 4) + 0x4094);
        ov14_021F2F88(*(undefined4 *)(iVar3 + 8),&sStack_1a,&sStack_1c,
                      *(undefined1 *)(param_1 + 0x22));
        if ((uint)*(byte *)(param_1 + 0x21) != *(uint *)(iVar3 + 8)) {
          sStack_1c = sStack_1c + 0x90;
        }
        ManagedSprite_SetPositionXY
                  (*(undefined4 *)(*(int *)(param_1 + 0x34) + (uint)bVar1 * 4 + 0x2fc),
                   (int)sStack_1a,(int)sStack_1c);
      }
      uVar4 = uVar4 + 1;
      iVar3 = iVar3 + 0x20;
    } while (uVar4 < 7);
    return 0;
  }
  *(int *)(iVar3 + 0xe0) = *(int *)(iVar3 + 0xe0) + 1;
  uVar4 = 0;
  iVar2 = iVar3;
  while ((*(int *)(iVar2 + 0xc) == 0 || ((uint)*(byte *)(param_1 + 0x21) != *(uint *)(iVar2 + 8))))
  {
    uVar4 = uVar4 + 1;
    iVar2 = iVar2 + 0x20;
    if (6 < uVar4) {
      return 1;
    }
  }
  iVar5 = uVar4 * 0x20;
  iVar2 = iVar3 + iVar5;
  sStack_1a = *(short *)(iVar2 + 0x1c) +
              *(short *)(iVar2 + 0x18) *
              (short)((uint)(*(int *)(iVar3 + 0xe0) * *(int *)(iVar2 + 0x10)) >> 0x10);
  sStack_1c = *(short *)(iVar2 + 0x1e) +
              *(short *)(iVar2 + 0x1a) *
              (short)((uint)(*(int *)(iVar3 + 0xe0) * *(int *)(iVar2 + 0x14)) >> 0x10);
  ManagedSprite_SetPositionXY
            (*(undefined4 *)
              (*(int *)(param_1 + 0x34) +
               (uint)*(byte *)(*(int *)(param_1 + 0x34) + *(int *)(iVar3 + 4 + iVar5) + 0x4094) * 4
              + 0x2fc),(int)sStack_1a,(int)sStack_1c);
  ov14_021F3190(*(undefined4 *)(param_1 + 0x34),*(undefined4 *)(iVar3 + 4 + iVar5),0);
  return 1;
}

