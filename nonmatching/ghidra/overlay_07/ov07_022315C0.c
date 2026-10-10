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
undefined4 func_0x020cf15c() __asm__("sub_020CF15C");
undefined4 ov07_02231524();
undefined4 ov07_02232508();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 SpriteSystem_DrawSprites();
undefined4 ov07_0221C448();
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 func_0x0200dc18() __asm__("sub_0200DC18");
undefined4 BgClearTilemapBufferAndCommit();
extern undefined2 uRam04000052 __asm__("sub_04000052");
extern uint uRam04000000 __asm__("sub_04000000");
extern ushort uRam0400004a __asm__("sub_0400004A");

void ov07_022315C0(undefined4 param_1,int param_2,undefined4 param_3,uint param_4)

{
  switch(*(char *)(param_2 + 0x18)) {
  case '\0':
    ov07_02231524(param_2,2);
    *(char *)(param_2 + 0x18) = *(char *)(param_2 + 0x18) + '\x01';
    break;
  case '\x01':
    param_4 = (uint)*(ushort *)(param_2 + 0x16);
    func_0x020cf15c(0x4000050,4,0x39,*(undefined2 *)(param_2 + 0x14),param_4);
    *(char *)(param_2 + 0x18) = *(char *)(param_2 + 0x18) + '\x01';
    break;
  case '\x02':
    if (*(byte *)(param_2 + 0x40) < 0x15) {
      *(char *)(param_2 + 0x40) = *(char *)(param_2 + 0x40) + '\x01';
    }
    else {
      *(char *)(param_2 + 0x18) = *(char *)(param_2 + 0x18) + '\x01';
    }
    break;
  case '\x03':
    if (*(short *)(param_2 + 0x14) != 0) {
      *(short *)(param_2 + 0x14) = *(short *)(param_2 + 0x14) + -1;
    }
    if (*(ushort *)(param_2 + 0x16) < 0x10) {
      *(ushort *)(param_2 + 0x16) = *(ushort *)(param_2 + 0x16) + 1;
    }
    if ((*(short *)(param_2 + 0x14) == 0) && (*(short *)(param_2 + 0x16) == 0x10)) {
      BgClearTilemapBufferAndCommit(*(undefined4 *)(param_2 + 0x2c),2);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_2 + 0x34),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_2 + 0x38),0);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(param_2 + 0x3c),0);
      *(char *)(param_2 + 0x18) = *(char *)(param_2 + 0x18) + '\x01';
    }
    uRam04000052 = *(ushort *)(param_2 + 0x14) | *(short *)(param_2 + 0x16) << 8;
    break;
  default:
    uRam0400004a = uRam0400004a & 0xc0c0 | 0x1f1f;
    func_0x0201bc8c(*(undefined4 *)(param_2 + 0x2c),2,0,0,param_4);
    func_0x0201bc8c(*(undefined4 *)(param_2 + 0x2c),2,3,0);
    uRam04000000 = uRam04000000 & 0xffff1fff;
    ov07_0221C448(*(undefined4 *)(param_2 + 0x1c),param_1);
    ov07_02232508(param_2);
    return;
  }
  *(short *)(param_2 + 0x10) = *(short *)(param_2 + 0x10) + *(short *)(param_2 + 0xc);
  *(short *)(param_2 + 0x12) = *(short *)(param_2 + 0x12) + *(short *)(param_2 + 0xe);
  func_0x0201bc8c(*(undefined4 *)(param_2 + 0x2c),2,0,(int)*(short *)(param_2 + 0x10),param_4);
  func_0x0201bc8c(*(undefined4 *)(param_2 + 0x2c),2,3,(int)*(short *)(param_2 + 0x12));
  func_0x0200dc18(*(undefined4 *)(param_2 + 0x34));
  func_0x0200dc18(*(undefined4 *)(param_2 + 0x38));
  func_0x0200dc18(*(undefined4 *)(param_2 + 0x3c));
  SpriteSystem_DrawSprites(*(undefined4 *)(param_2 + 0x24));
  return;
}

