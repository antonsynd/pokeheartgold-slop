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
undefined4 ov07_022222F0();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 func_0x0200de44() __asm__("sub_0200DE44");
undefined4 func_0x020f1520() __asm__("sub_020F1520");
undefined4 ov07_0221C448();
undefined4 ov07_02222268();
undefined4 func_0x0200e024() __asm__("sub_0200E024");
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
undefined4 func_0x020f2998() __asm__("sub_020F2998");
undefined4 func_0x020f24c8() __asm__("sub_020F24C8");
undefined4 LCRandom();

void ov07_0222A328(undefined4 param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  int iVar2;
  int extraout_r1;
  short sStack_10;
  short sStack_e;
  
  switch(*(undefined1 *)(param_2 + 3)) {
  case 0:
    *(char *)((int)param_2 + 0xe) = *(char *)((int)param_2 + 0xe) + -1;
    if (*(byte *)((int)param_2 + 0xe) < 0xb) {
      *(char *)(param_2 + 3) = *(char *)(param_2 + 3) + '\x01';
    }
    break;
  case 1:
    *(char *)((int)param_2 + 0xd) = *(char *)((int)param_2 + 0xd) + '\x01';
    if (2 < *(byte *)((int)param_2 + 0xd)) {
      ManagedSprite_SetDrawFlag(param_2[4],1);
      *(undefined1 *)((int)param_2 + 0xd) = 0;
      *(char *)(param_2 + 3) = *(char *)(param_2 + 3) + '\x01';
    }
    break;
  case 2:
    *(char *)((int)param_2 + 0xd) = *(char *)((int)param_2 + 0xd) + '\x01';
    if (*(byte *)((int)param_2 + 0xd) < 4) {
      uVar1 = func_0x020f1520(param_2[0xe],0x3dcccccd);
      param_2[0xe] = uVar1;
      func_0x0200e024(param_2[4],param_2[0xe],param_2[0xe]);
    }
    else {
      *(undefined1 *)((int)param_2 + 0xd) = 0;
      *(char *)(param_2 + 3) = *(char *)(param_2 + 3) + '\x01';
    }
    break;
  case 3:
    *(char *)((int)param_2 + 0xd) = *(char *)((int)param_2 + 0xd) + '\x01';
    if (*(byte *)((int)param_2 + 0xd) < 4) {
      uVar1 = func_0x020f24c8(param_2[0xe],0x3dcccccd);
      param_2[0xe] = uVar1;
      func_0x0200e024(param_2[4],param_2[0xe],param_2[0xe]);
    }
    else {
      *(undefined1 *)((int)param_2 + 0xd) = 0;
      *(char *)(param_2 + 3) = *(char *)(param_2 + 3) + '\x01';
    }
    break;
  case 4:
    *(char *)((int)param_2 + 0xe) = *(char *)((int)param_2 + 0xe) + -1;
    if (*(byte *)((int)param_2 + 0xe) < 0xb) {
      *(undefined4 *)param_2[0xf] = 1;
      *(undefined1 *)((int)param_2 + 0xd) = 0;
      *(char *)(param_2 + 3) = *(char *)(param_2 + 3) + '\x01';
    }
    break;
  case 5:
    *(char *)((int)param_2 + 0xd) = *(char *)((int)param_2 + 0xd) + '\x01';
    if (*(byte *)((int)param_2 + 0xd) < 0x1f) {
      if (*(int *)param_2[0xf] == 2) {
        *(char *)(param_2 + 3) = *(char *)(param_2 + 3) + '\x01';
      }
    }
    else {
      *(undefined1 *)((int)param_2 + 0xd) = 0;
      *(char *)(param_2 + 3) = *(char *)(param_2 + 3) + '\x01';
    }
    break;
  case 6:
    uVar1 = LCRandom();
    func_0x020f2998(uVar1,10);
    func_0x0200de44(param_2[4],&sStack_10,&sStack_e);
    iVar2 = (uint)*(byte *)((int)param_2 + 0xf) * 4;
    ov07_02222268(param_2 + 5,(int)sStack_10,(int)*(short *)(iVar2 + 0x223677e),(int)sStack_e,
                  (int)*(short *)(iVar2 + 0x2236780),extraout_r1 + 10U & 0xffff);
    *(char *)(param_2 + 3) = *(char *)(param_2 + 3) + '\x01';
    break;
  case 7:
    iVar2 = ov07_022222F0(param_2 + 5,param_2[4]);
    if (iVar2 != 0) break;
    ManagedSprite_SetDrawFlag(param_2[4],0);
    *(char *)(param_2 + 3) = *(char *)(param_2 + 3) + '\x01';
  default:
    *(undefined4 *)param_2[0xf] = 3;
    ov07_0221C448(*param_2,param_1);
  }
  func_0x0200dc18(param_2[4]);
  return;
}

