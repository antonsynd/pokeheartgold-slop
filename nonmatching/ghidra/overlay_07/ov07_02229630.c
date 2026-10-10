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
undefined4 ov07_0221C4C0(undefined4, undefined4);
undefined4 ManagedSprite_SetDrawFlag(undefined4, undefined4);
undefined4 ManagedSprite_SetPositionXY(undefined4, undefined4, undefined4);
undefined4 ManagedSprite_SetAnim(undefined4, undefined4);
undefined4 ov07_0223192C(undefined4, undefined4);
undefined4 ov07_022324D8(undefined4, undefined4);
undefined4 ov07_0221C4A8(undefined4, undefined4);
undefined4 func_0x0200dd54(undefined4, undefined4) __asm__("sub_0200DD54");
undefined4 ov07_0221C468(undefined4);
undefined4 ov07_02231E08(undefined4, undefined4, undefined4);
undefined4 ov07_0221FAE8(undefined4);
undefined4 ov07_02231FE4(undefined4, undefined4);
undefined4 ov07_0221BFC0(undefined4);
undefined4 func_0x0200e0fc(undefined4, undefined4) __asm__("sub_0200E0FC");
undefined4 func_0x0200df98(undefined4, undefined4) __asm__("sub_0200DF98");
undefined4 ov07_02222674(undefined4, undefined4, undefined4);
undefined4 ov07_0222260C(undefined4);
undefined4 func_0x0200e024(undefined4, undefined4, undefined4) __asm__("sub_0200E024");
undefined4 ov07_02222590(undefined4, undefined4, undefined4, undefined4, undefined4, undefined4, undefined4);
undefined4 ov07_0221C410(undefined4, undefined4, undefined4);
undefined4 ov07_02222644(undefined4, undefined4, undefined4);

void ov07_02229630(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uStack_14;
  undefined4 uStack_10;
  
  iVar1 = ov07_022324D8(param_1,0xd4);
  ov07_02231FE4(param_1,iVar1 + 0x18);
  uVar2 = ov07_0221C4C0(param_1,0);
  *(undefined4 *)(iVar1 + 0x44) = uVar2;
  uVar2 = ov07_0221C4C0(param_1,1);
  *(undefined4 *)(iVar1 + 0x48) = uVar2;
  ov07_02231E08(*(undefined4 *)(iVar1 + 0x1c),0xffffffff,0xffffffff);
  ov07_0221C4A8(param_1,0);
  *(undefined1 *)(iVar1 + 0xc) = 0;
  *(undefined1 *)(iVar1 + 0xd) = 0x1f;
  *(undefined1 *)(iVar1 + 0xe) = 0;
  *(undefined1 *)(iVar1 + 0xf) = 0x1f;
  *(undefined1 *)(iVar1 + 0x10) = 0x1f;
  *(undefined1 *)(iVar1 + 0x11) = 4;
  iVar3 = ov07_0221BFC0(param_1);
  if (iVar3 == 1) {
    *(undefined4 *)(iVar1 + 0x40) = *(undefined4 *)(iVar1 + 0x44);
    ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar1 + 0x48),0);
    ManagedSprite_SetAnim(*(undefined4 *)(iVar1 + 0x40),0);
    *(undefined2 *)(iVar1 + 0x14) = 0xb3;
    *(undefined2 *)(iVar1 + 0x16) = 0x78;
    iVar3 = ov07_0221FAE8(param_1);
    func_0x0200dd54(*(undefined4 *)(iVar1 + 0x40),iVar3 + 1);
    *(undefined2 *)(iVar1 + 0x12) = 0xffff;
  }
  else {
    uVar2 = ov07_0221C468(param_1);
    iVar3 = ov07_0223192C(param_1,uVar2);
    if (iVar3 == 4) {
      *(undefined4 *)(iVar1 + 0x40) = *(undefined4 *)(iVar1 + 0x48);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar1 + 0x44),0);
      ManagedSprite_SetAnim(*(undefined4 *)(iVar1 + 0x40),1);
      *(undefined2 *)(iVar1 + 0x14) = 0x90;
      *(undefined2 *)(iVar1 + 0x16) = 0x40;
    }
    else {
      *(undefined4 *)(iVar1 + 0x40) = *(undefined4 *)(iVar1 + 0x44);
      ManagedSprite_SetDrawFlag(*(undefined4 *)(iVar1 + 0x48),0);
      ManagedSprite_SetAnim(*(undefined4 *)(iVar1 + 0x40),0);
      *(undefined2 *)(iVar1 + 0x14) = 0x4c;
      *(undefined2 *)(iVar1 + 0x16) = 0x78;
      iVar3 = ov07_0221FAE8(param_1);
      func_0x0200dd54(*(undefined4 *)(iVar1 + 0x40),iVar3 + 1);
    }
    *(undefined2 *)(iVar1 + 0x12) = 1;
  }
  ManagedSprite_SetPositionXY
            (*(undefined4 *)(iVar1 + 0x40),(int)*(short *)(iVar1 + 0x14),
             (int)*(short *)(iVar1 + 0x16));
  func_0x0200df98(*(undefined4 *)(iVar1 + 0x40),2);
  func_0x0200e0fc(*(undefined4 *)(iVar1 + 0x40),1);
  iVar3 = *(short *)(iVar1 + 0x12) * 0x640000 >> 0x10;
  ov07_02222590(iVar1 + 0x9c,iVar3,iVar3,100,5,100,1);
  ov07_0222260C(iVar1 + 0x9c);
  ov07_02222644(iVar1 + 0x9c,&uStack_10,&uStack_14);
  func_0x0200e024(*(undefined4 *)(iVar1 + 0x40),uStack_10,uStack_14);
  iVar3 = ov07_02222674((int)*(short *)(iVar1 + 0x16),0x10,*(undefined4 *)(iVar1 + 0xb0));
  ManagedSprite_SetPositionXY
            (*(undefined4 *)(iVar1 + 0x40),(int)*(short *)(iVar1 + 0x14),
             (*(short *)(iVar1 + 0x16) + iVar3) * 0x10000 >> 0x10);
  ov07_0221C410(*(undefined4 *)(iVar1 + 0x1c),0x2229481,iVar1);
  return;
}

