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
undefined4 Heap_Alloc();
undefined4 ov90_02258FF0();
undefined4 ov90_0225A204();
undefined4 Sound_SetSceneAndPlayBGM();
undefined4 ov90_02259184();
undefined4 ov90_0225C178();
undefined4 ov90_022590CC();
undefined4 ov90_02258DD0();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 GfGfx_SetBanks();
extern undefined ov90_0225C2CC;
extern undefined2 uRam04001050 __asm__("sub_04001050");
extern uint uRam04001000 __asm__("sub_04001000");
extern undefined2 uRam04000050 __asm__("sub_04000050");
extern uint uRam04000000 __asm__("sub_04000000");
extern undefined ov90_0225C2A4;
extern undefined ov90_0225C39C;
undefined4 ov90_022588A4();
undefined4 func_0x021e69a8() __asm__("sub_021E69A8");
undefined4 ov90_0225938C();
undefined4 GameStats_AddScore();
undefined4 ov90_0225888C();
undefined4 ov90_022596C8();
undefined4 SysTask_CreateOnVWaitQueue();
undefined4 Save_GameStats_Get();
undefined4 SysTask_CreateOnMainQueue();

int ov90_02259588(undefined1 *param_1,undefined2 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined1 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined1 *puVar5;
  
  Sound_SetSceneAndPlayBGM(0x13,0x480,0,param_4,param_4);
  iVar2 = Heap_Alloc(param_3,0x5f4);
  func_0x020e5b44(iVar2,0,0x5f4);
  puVar5 = (undefined1 *)(iVar2 + 8);
  iVar4 = 0x10;
  do {
    uVar1 = *param_1;
    param_1 = param_1 + 1;
    *puVar5 = uVar1;
    puVar5 = puVar5 + 1;
    iVar4 = iVar4 + -1;
  } while (iVar4 != 0);
  *(undefined2 *)(iVar2 + 4) = param_2;
  uRam04000050 = 0;
  uRam04001050 = 0;
  uRam04000000 = uRam04000000 & 0xffff1fff;
  uRam04001000 = uRam04001000 & 0xffff1fff;
  GfGfx_SetBanks(&ov90_0225C2CC);
  *(short *)(iVar2 + 2) = (short)param_3;
  ov90_0225C178(iVar2);
  ov90_0225A204(iVar2 + 0x18,iVar2 + 8);
  ov90_02258FF0(iVar2 + 0x30,&ov90_0225C2A4,&ov90_0225C39C,5,param_3);
  ov90_022590CC(iVar2 + 0x84,0x10,1,1,param_3);
  ov90_02258DD0(iVar2 + 0x1b0,1,param_3);
  ov90_02259184(iVar2 + 0x3c,param_3);
  ov90_022596C8(iVar2,param_3);
  uVar3 = ov90_0225888C(iVar2 + 8,*(undefined1 *)(iVar2 + 0x11));
  uVar3 = ov90_022588A4(iVar2 + 8,uVar3);
  ov90_0225938C(iVar2 + 0x4c,iVar2 + 0x30,*(undefined4 *)(iVar2 + 8),uVar3,param_3);
  uVar3 = SysTask_CreateOnMainQueue(0x2259795,iVar2,0);
  *(undefined4 *)(iVar2 + 0x5ec) = uVar3;
  uVar3 = SysTask_CreateOnVWaitQueue(0x2259b19,iVar2,0);
  *(undefined4 *)(iVar2 + 0x5f0) = uVar3;
  if (*(char *)(iVar2 + 0x12) != '\0') {
    func_0x021e69a8(param_3);
  }
  uVar3 = Save_GameStats_Get(*(undefined4 *)(iVar2 + 8));
  if (*(char *)(iVar2 + 0x13) != '\0') {
    GameStats_AddScore(uVar3,0x27);
  }
  return iVar2;
}

