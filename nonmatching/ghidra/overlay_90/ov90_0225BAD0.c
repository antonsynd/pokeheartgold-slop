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
undefined4 Sprite_SetAnimCtrlSeq();
undefined4 Sprite_SetPriority();
undefined4 ov90_0225BD84();
undefined4 Main_SetHBlankIntrCB();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 Sprite_SetFlipMode();
undefined4 ov90_02258EB4();
extern undefined2 uRam04000044 __asm__("sub_04000044");
extern ushort uRam04000048 __asm__("sub_04000048");
extern ushort uRam0400004a __asm__("sub_0400004A");
extern uint uRam04000000 __asm__("sub_04000000");
extern undefined ov90_0225C2B4;
extern undefined2 uRam04000040 __asm__("sub_04000040");

void ov90_0225BAD0(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  int *piVar2;
  undefined4 *puVar3;
  int iVar4;

  func_0x020e5b44(param_1 + 3,0,0xc0);
  func_0x020e5b44(param_1 + 0x33,0,0xc0);
  iVar4 = 0;
  *(undefined2 *)(param_1 + 2) = 0;
  *(undefined2 *)((int)param_1 + 10) = 0;
  piVar2 = (int *)&ov90_0225C2B4;
  param_1[99] = 0;
  puVar3 = param_1;
  do {
    uVar1 = ov90_02258EB4(param_2,param_3,(*piVar2 << 4) >> 0x10,(piVar2[1] << 4) >> 0x10,0,param_4)
    ;
    *puVar3 = uVar1;
    Sprite_SetAnimCtrlSeq(uVar1,5);
    Sprite_SetPriority(*puVar3,0);
    iVar4 = iVar4 + 1;
    piVar2 = piVar2 + 3;
    puVar3 = puVar3 + 1;
  } while (iVar4 < 2);
  uRam04000000 = ((uRam04000000 & 0xe000) >> 0xd & 0xfffffffe) << 0xd | uRam04000000 & 0xffff1fff;
  uRam04000048 = uRam04000048 & 0xffc0 | 0x3f;
  uRam04000040 = 0;
  uRam04000044 = 0;
  *(undefined1 *)(param_1 + 100) = uRam0400004a;
  param_1[0x65] = (uRam04000000 & 0xe000) >> 0xd & 2;
  *(byte *)((int)param_1 + 0x191) = *(byte *)((int)param_1 + 0x191) & 0xe0 | 0xf;
  *(byte *)((int)param_1 + 0x191) = *(byte *)((int)param_1 + 0x191) | 0x20;
  Main_SetHBlankIntrCB(0x225be09,param_1);
  Sprite_SetFlipMode(param_1[1],2);
  ov90_0225BD84(param_1);
  return;
}

