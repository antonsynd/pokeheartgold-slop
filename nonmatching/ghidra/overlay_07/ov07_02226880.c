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
undefined4 ov07_02222440();
undefined4 ov07_022223F0();
undefined4 Heap_Free();
undefined4 func_0x0200dd48() __asm__("sub_0200DD48");
undefined4 func_0x0200dd54() __asm__("sub_0200DD54");
undefined4 ov07_0221FAE8();
undefined4 ov07_0221FB04();
undefined4 Sprite_DeleteAndFreeResources();
undefined4 func_0x0200e074() __asm__("sub_0200E074");
undefined4 SpriteSystem_DrawSprites();
undefined4 ov07_0221C448();
undefined4 func_0x0200ded0() __asm__("sub_0200DED0");
undefined4 func_0x0200df98() __asm__("sub_0200DF98");
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
undefined4 func_0x0200e0cc() __asm__("sub_0200E0CC");
extern undefined ov07_02236670;

void ov07_02226880(undefined4 param_1,char *param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  if (*param_2 == '\0') {
    iVar4 = (int)*(short *)(&ov07_02236670 + *(int *)(param_2 + 0x34) * 2);
    *(int *)(param_2 + 0x34) = *(int *)(param_2 + 0x34) + 1;
    if (iVar4 == 0xff) {
      func_0x0200df98(*(undefined4 *)(param_2 + 0x1c),2);
      ov07_022223F0(param_2 + 0x20,0,0xe38,4);
      func_0x0200e0cc(*(undefined4 *)(param_2 + 0x1c),0xfffffff8,0x10);
      param_2[0x34] = '\0';
      param_2[0x35] = '\0';
      param_2[0x36] = '\0';
      param_2[0x37] = '\0';
      *param_2 = *param_2 + '\x01';
    }
    else {
      if (iVar4 == 0) {
        iVar1 = func_0x0200dd48(*(undefined4 *)(param_2 + 0x1c));
        iVar2 = ov07_0221FAE8(*(undefined4 *)(param_2 + 4));
        if (iVar1 == iVar2) {
          uVar3 = ov07_0221FB04(*(undefined4 *)(param_2 + 4),2);
          func_0x0200dd54(*(undefined4 *)(param_2 + 0x1c),uVar3);
        }
        else {
          uVar3 = ov07_0221FAE8(*(undefined4 *)(param_2 + 4));
          func_0x0200dd54(*(undefined4 *)(param_2 + 0x1c),uVar3);
        }
      }
      func_0x0200ded0(*(undefined4 *)(param_2 + 0x1c),iVar4,0);
    }
  }
  else {
    if (*param_2 != '\x01') {
      Sprite_DeleteAndFreeResources(*(undefined4 *)(param_2 + 0x1c));
      ov07_0221C448(*(undefined4 *)(param_2 + 4),param_1);
      Heap_Free(param_2);
      return;
    }
    iVar4 = ov07_02222440(param_2 + 0x20);
    if (iVar4 == 1) {
      func_0x0200e074(*(undefined4 *)(param_2 + 0x1c),*(uint *)(param_2 + 0x20) & 0xffff);
    }
    else if (*(int *)(param_2 + 0x34) < 6) {
      iVar4 = *(int *)(param_2 + 0x34) + 1;
      *(int *)(param_2 + 0x34) = iVar4;
      switch(iVar4) {
      case 1:
        ov07_022223F0(param_2 + 0x20,0xe38,0xfffff1c8,4);
        break;
      case 2:
        ov07_022223F0(param_2 + 0x20,0xfffff1c8,0xe38,4);
        break;
      case 3:
        ov07_022223F0(param_2 + 0x20,0xe38,0xfffff1c8,4);
        break;
      case 4:
        ov07_022223F0(param_2 + 0x20,0xfffff1c8,0xe38,4);
        break;
      case 5:
        ov07_022223F0(param_2 + 0x20,0xe38,0,2);
      }
    }
    else {
      *param_2 = *param_2 + '\x01';
    }
  }
  func_0x0200dc18(*(undefined4 *)(param_2 + 0x1c));
  SpriteSystem_DrawSprites(*(undefined4 *)(param_2 + 0x10));
  return;
}

