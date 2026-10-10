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
undefined4 ov96_0220C490();
undefined4 ov96_0220D1A0();
undefined4 func_0x0200de44() __asm__("sub_0200DE44");
undefined4 ov96_0220C54C();
undefined4 Heap_Alloc();
undefined4 ov96_021E5F24();
undefined4 ManagedSprite_SetDrawFlag();
undefined4 ov96_0220D13C();
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 ov96_0220D200();
undefined4 ManagedSprite_GetPositionXYWithSubscreenOffset();

undefined4 *
ov96_0220B374(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  short sStack_20;
  short sStack_1e;
  short sStack_1c;
  short sStack_1a;
  undefined4 uStack_18;

  uStack_18 = param_4;
  uVar1 = ov96_021E5F24(param_4);
  puVar2 = (undefined4 *)Heap_Alloc(param_1,0x48);
  func_0x020d4994(puVar2,0,0x48);
  *puVar2 = param_1;
  puVar2[1] = param_2;
  puVar2[2] = param_3;
  puVar2[3] = param_4;
  puVar2[0x11] = puVar2[0x11] & 0xffffff00;
  ov96_0220D200(puVar2 + 0xd,uVar1,param_4);
  ov96_0220C490(puVar2 + 4,puVar2[1],puVar2[2]);
  ManagedSprite_GetPositionXYWithSubscreenOffset(puVar2[9],&sStack_1a,&sStack_1c,0x100000);
  sStack_1c = sStack_1c + -0x18;
  uVar3 = ov96_0220D1A0(param_2,param_3,(int)sStack_1a,(int)sStack_1c,0x11,0);
  puVar2[0xb] = uVar3;
  ManagedSprite_SetDrawFlag(uVar3,0);
  ManagedSprite_GetPositionXYWithSubscreenOffset(puVar2[10],&sStack_1a,&sStack_1c,0x100000);
  sStack_1c = sStack_1c + -0x18;
  uVar3 = ov96_0220D1A0(param_2,param_3,(int)sStack_1a,(int)sStack_1c,0x11,0);
  puVar2[0xc] = uVar3;
  ManagedSprite_SetDrawFlag(uVar3,0);
  func_0x0200de44(puVar2[4],&sStack_1e,&sStack_20);
  uVar3 = ov96_0220D13C(param_2,param_3,(int)sStack_1e,(int)sStack_20,0x11,0x1a);
  puVar2[5] = uVar3;
  ManagedSprite_SetDrawFlag(uVar3,0);
  uVar3 = ov96_0220D13C(param_2,param_3,(int)sStack_1e,(int)sStack_20,0xf,0x17);
  puVar2[7] = uVar3;
  ManagedSprite_SetDrawFlag(uVar3,0);
  uVar3 = ov96_0220D13C(param_2,param_3,(int)sStack_1e,(int)sStack_20,0x1b,0x18);
  puVar2[8] = uVar3;
  ManagedSprite_SetDrawFlag(uVar3,0);
  sStack_20 = sStack_20 + -0x18;
  uVar3 = ov96_0220D13C(param_2,param_3,(int)sStack_1e,(int)sStack_20,0x18,0x19);
  puVar2[6] = uVar3;
  ManagedSprite_SetDrawFlag(uVar3,0);
  ov96_0220C54C(puVar2,0,uVar1,0,1);
  ov96_0220C54C(puVar2,5,uVar1,2,0);
  ov96_0220C54C(puVar2,6,uVar1,1,0);
  return puVar2;
}

