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
undefined4 Heap_Free();
undefined4 ov07_022223CC();
undefined4 ManagedSprite_IsAnimated();
undefined4 Sprite_DeleteAndFreeResources();
undefined4 ov07_02222338();
undefined4 SpriteSystem_DrawSprites();
undefined4 ov07_0221C448();
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
extern undefined2 uRam04000052 __asm__("sub_04000052");

void ov07_02226B2C(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  switch(*param_2) {
  case '\0':
    ov07_02222338(param_2 + 0x24,param_2 + 0x48,0xffffffe2,0x70,0xa0,0x70,0x15,0x40000,param_4);
    *param_2 = *param_2 + '\x01';
    break;
  case '\x01':
    iVar1 = ov07_022223CC(param_2 + 0x24,param_2 + 0x48,*(undefined4 *)(param_2 + 0x1c));
    if (iVar1 == 0) {
      *param_2 = *param_2 + '\x01';
    }
    break;
  case '\x02':
    iVar1 = ManagedSprite_IsAnimated(*(undefined4 *)(param_2 + 0x1c));
    if (iVar1 == 0) {
      func_0x0200e0fc(*(undefined4 *)(param_2 + 0x1c),1);
      param_2[0x20] = '\x10';
      param_2[0x21] = '\0';
      ov07_02231E08(*(undefined4 *)(param_2 + 4),param_2[0x20],param_2[0x21]);
      *param_2 = *param_2 + '\x01';
    }
    break;
  case '\x03':
    if (param_2[0x20] != '\0') {
      param_2[0x20] = param_2[0x20] + -1;
    }
    if ((byte)param_2[0x21] < 0x10) {
      param_2[0x21] = param_2[0x21] + '\x01';
    }
    uRam04000052 = *(undefined2 *)(param_2 + 0x20);
    if (param_2[0x20] == '\0') {
      *param_2 = *param_2 + '\x01';
    }
    break;
  default:
    Sprite_DeleteAndFreeResources(*(undefined4 *)(param_2 + 0x1c));
    ov07_0221C448(*(undefined4 *)(param_2 + 4),param_1);
    Heap_Free(param_2);
    return;
  }
  func_0x0200dc18(*(undefined4 *)(param_2 + 0x1c));
  SpriteSystem_DrawSprites(*(undefined4 *)(param_2 + 0x10));
  return;
}

