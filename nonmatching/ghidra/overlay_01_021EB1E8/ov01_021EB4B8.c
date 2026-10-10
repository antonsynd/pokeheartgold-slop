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
undefined4 ov01_021EB578(undefined4, undefined4, undefined4);
undefined4 SpriteList_Create(undefined4);
undefined4 SysTask_CreateOnMainQueue(undefined4, undefined4, undefined4);
undefined4 Create2DGfxResObjMan(undefined4, undefined4, undefined4);
undefined4 func_0x0200b27c(undefined4, undefined4, undefined4, undefined4) __asm__("sub_0200B27C");
undefined4 GF_InitG2dRenderer(undefined4, undefined4);
undefined4 Heap_Alloc(undefined4, undefined4);
undefined4 GF2DGfxResHeader_sizeof(void);

void ov01_021EB4B8(undefined4 *param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 uStack_30;
  undefined4 *puStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  GF_InitG2dRenderer(param_1 + 5,0xfffff000);
  uStack_24 = 0;
  uStack_20 = 0;
  uStack_1c = 0xff000;
  uStack_18 = 0xc0000;
  func_0x0200b27c(param_1 + 0x2b,&uStack_24,1,param_1 + 5);
  iVar2 = 0;
  puVar3 = param_1;
  do {
    uVar1 = Create2DGfxResObjMan(0xe,iVar2,4);
    iVar2 = iVar2 + 1;
    *puVar3 = uVar1;
    puVar3 = puVar3 + 1;
  } while (iVar2 < 4);
  iVar2 = GF2DGfxResHeader_sizeof();
  uVar1 = Heap_Alloc(4,iVar2 << 2);
  param_1[4] = uVar1;
  ov01_021EB578(uVar1,0,0x39);
  ov01_021EB578(param_1[4],1,0x3a);
  ov01_021EB578(param_1[4],2,0x37);
  ov01_021EB578(param_1[4],3,0x38);
  uStack_30 = 0x40;
  puStack_2c = param_1 + 5;
  uStack_28 = 4;
  uVar1 = SpriteList_Create(&uStack_30);
  param_1[0x3d] = uVar1;
  uVar1 = SysTask_CreateOnMainQueue(0x21eb56d,param_1,10);
  param_1[0x3e] = uVar1;
  return;
}

