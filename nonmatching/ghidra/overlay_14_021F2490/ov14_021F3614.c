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
undefined4 func_0x020cfecc() __asm__("sub_020CFECC");
undefined4 func_0x02024b34() __asm__("sub_02024B34");
undefined4 func_0x020b802c() __asm__("sub_020B802C");
undefined4 func_0x020d2894() __asm__("sub_020D2894");
undefined4 GfGfxLoader_GXLoadPal();
undefined4 func_0x020b8078() __asm__("sub_020B8078");
undefined4 Heap_AllocAtEnd();
undefined4 Sprite_GetImageProxy();
undefined4 func_0x0207013c() __asm__("sub_0207013C");
undefined4 Heap_Free();
undefined4 func_0x02014510() __asm__("sub_02014510");
extern undefined ov14_021F80A8;

void ov14_021F3614(int param_1,undefined4 *param_2,int param_3)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined2 uStack_24;
  undefined2 uStack_22;
  undefined2 uStack_20;

  uStack_34 = 0;
  uStack_30 = 0;
  uStack_2c = 10;
  uStack_28 = 10;
  uVar2 = Heap_AllocAtEnd(10,0xc80,&uStack_24,&ov14_021F80A8);
  func_0x0207013c(&uStack_24,*param_2,2,0);
  if ((*(char *)((int)param_2 + 0x12) < '\0') && (*(short *)(param_2 + 1) == 0x147)) {
    uVar1 = 0x1ee;
  }
  else {
    uVar1 = *(undefined2 *)(param_2 + 1);
  }
  func_0x02014510(uStack_24,uStack_22,10,&uStack_34,uVar2,param_2[2],0,2,uVar1);
  uVar3 = Sprite_GetImageProxy(**(undefined4 **)(param_1 + 0x2fc + param_3 * 4));
  uVar3 = func_0x020b802c(uVar3,2);
  func_0x020d2894(uVar2,0xc80);
  func_0x020cfecc(uVar2,uVar3,0xc80);
  uVar3 = func_0x02024b34(**(undefined4 **)(param_1 + 0x2fc + param_3 * 4));
  uVar3 = func_0x020b8078(uVar3,2);
  GfGfxLoader_GXLoadPal(uStack_24,uStack_20,5,uVar3,0x20,10);
  Heap_Free(uVar2);
  return;
}

