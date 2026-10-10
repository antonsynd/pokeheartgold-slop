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
undefined4 ov40_02237144();
undefined4 ov40_022371E4();
undefined4 func_0x0200319c() __asm__("sub_0200319C");
undefined4 func_0x020270d8() __asm__("sub_020270D8");
undefined4 GfGfxLoader_LoadScrnDataFromOpenNarc();
undefined4 GfGfxLoader_LoadCharDataFromOpenNarc();
undefined4 ov40_02237284();
undefined4 ov40_02237474();
undefined4 ov40_02237030();

void ov40_0223757C(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;

  iVar1 = *(int *)(param_1 + 0x860);
  func_0x020270d8(*(undefined4 *)(param_1 + 0x830));
  if ((0xf < *(byte *)(iVar1 + 0x17a)) && (*(byte *)(iVar1 + 0x17a) < 0x18)) {
    *(undefined1 *)(iVar1 + 0x17a) = 0;
  }
  if (0x27 < *(byte *)(iVar1 + 0x17a)) {
    *(undefined1 *)(iVar1 + 0x17a) = 0;
  }
  GfGfxLoader_LoadCharDataFromOpenNarc
            (*(undefined4 *)(param_1 + 0x14),(uint)*(byte *)(iVar1 + 0x17a) * 3 + 0x8a,
             *(undefined4 *)(param_1 + 0x24),3,0,0,0,0x6d,param_4);
  GfGfxLoader_LoadScrnDataFromOpenNarc
            (*(undefined4 *)(param_1 + 0x14),(uint)*(byte *)(iVar1 + 0x17a) * 3 + 0x8c,
             *(undefined4 *)(param_1 + 0x24),3,0,0,0,0x6d);
  func_0x0200319c(*(undefined4 *)(param_1 + 0x28),0xbf,(uint)*(byte *)(iVar1 + 0x17a) * 3 + 0x8b,
                  0x6d,0,0x40,0xc0,0xc0);
  ov40_02237474(param_1);
  ov40_02237284(param_1);
  ov40_022371E4(param_1,*(undefined4 *)(iVar1 + 0x1b0));
  ov40_02237144(param_1);
  ov40_02237030(param_1,0x10e);
  return;
}

