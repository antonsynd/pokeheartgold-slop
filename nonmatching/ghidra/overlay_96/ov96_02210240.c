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
undefined4 ov96_0221069C();
undefined4 ov96_0221075C();
undefined4 ov96_0221065C();
undefined4 ov96_02210538();
undefined4 Heap_Alloc();
undefined4 GfGfxLoader_GetScrnData();
undefined4 ov96_022104D8();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov96_0221040C();
undefined4 ov96_0221058C();

undefined4 *
ov96_02210240(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
             undefined4 param_5,undefined1 param_6,undefined4 param_7,undefined4 param_8)

{
  undefined4 *puVar1;
  undefined4 uVar2;

  puVar1 = (undefined4 *)Heap_Alloc(param_7,0xe8);
  func_0x020d4994(puVar1,0,0xe8);
  puVar1[2] = param_1;
  puVar1[3] = param_2;
  *(undefined1 *)(puVar1 + 7) = param_6;
  puVar1[1] = param_7;
  puVar1[4] = param_3;
  puVar1[5] = param_4;
  puVar1[6] = param_5;
  *puVar1 = param_8;
  ov96_02210538(puVar1);
  uVar2 = ov96_022104D8(puVar1[2],puVar1[3],0xd2,0x4c,8,0);
  puVar1[0x1a] = uVar2;
  ov96_0221075C(puVar1);
  ov96_0221065C(puVar1);
  ov96_0221069C(puVar1);
  uVar2 = GfGfxLoader_GetScrnData(0xed,0xe,1,puVar1 + 9,puVar1[1]);
  puVar1[8] = uVar2;
  ov96_0221040C(puVar1,0x3c);
  ov96_0221058C(puVar1,0);
  return puVar1;
}

