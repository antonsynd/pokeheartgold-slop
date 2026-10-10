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
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 Heap_Alloc();
undefined4 ov40_0222D9E8();
undefined4 func_0x02006ff8() __asm__("sub_02006FF8");
undefined4 sub_0202B998();
undefined4 ov40_0222BF80();
undefined4 sub_020314A4();

undefined4 ov40_0223414C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;

  iVar1 = Heap_Alloc(0x6d,0x2e8,param_3,param_4,param_4);
  func_0x020e5b44(iVar1,0,0x2e8);
  *(int *)(param_1 + 0x860) = iVar1;
  func_0x02006ff8(0x29,2);
  *(undefined4 *)(iVar1 + 0x218) = *(undefined4 *)(param_1 + 0x24);
  *(undefined4 *)(iVar1 + 0x21c) = 0x48;
  *(undefined4 *)(iVar1 + 0x220) = 0x10;
  *(undefined4 *)(iVar1 + 0x224) = 0x6d;
  uVar2 = sub_0202B998();
  *(undefined4 *)(iVar1 + 0x238) = uVar2;
  uVar2 = sub_020314A4(0x6d);
  *(undefined4 *)(iVar1 + 0x250) = uVar2;
  BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),2);
  BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),3);
  BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),6);
  BgClearTilemapBufferAndCommit(*(undefined4 *)(param_1 + 0x24),7);
  ov40_0222D9E8(iVar1,iVar1 + 4,0);
  ov40_0222BF80(param_1,1);
  return 0;
}

