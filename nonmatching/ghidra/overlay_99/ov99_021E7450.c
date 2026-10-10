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
undefined4 BgClearTilemapBufferAndCommit();
undefined4 ov99_021E71E4();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov99_021E7428();
undefined4 func_0x0221e970() __asm__("sub_0221E970");
undefined4 ov99_021E7158();
undefined4 ov99_021E73E0();

void ov99_021E7450(undefined4 *param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint auStack_20 [3];
  
  iVar1 = ov99_021E7158();
  auStack_20[0] = 0;
  auStack_20[1] = 0;
  auStack_20[2] = 0;
  BgClearTilemapBufferAndCommit(*param_1,3);
  ov99_021E7428(param_1,0);
  uVar3 = 0;
  if (0 < iVar1) {
    do {
      uVar4 = (uint)*(ushort *)
                     ((int)param_1 + (uVar3 + ((param_1[0xfd] & 0x7ffff) >> 0xe) * 0x1e) * 2 + 0x14)
      ;
      auStack_20[0] = uVar4 & 0x1ff | auStack_20[0] & 0xfffffe00;
      uVar2 = ov99_021E71E4(param_1,uVar4);
      auStack_20[0] = (uVar2 & 0x1f) << 9 | auStack_20[0] & 0xffffc1ff;
      func_0x0221e970(param_1[0x101],param_1[uVar3 + 0x116],auStack_20,1,0);
      ManagedSprite_SetDrawFlag(param_1[uVar3 + 0x116],1);
      ov99_021E73E0(param_1,uVar3 & 0xffff,uVar4);
      uVar3 = uVar3 + 1;
    } while ((int)uVar3 < iVar1);
  }
  return;
}

