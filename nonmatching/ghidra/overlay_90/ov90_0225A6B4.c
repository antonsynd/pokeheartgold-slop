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
undefined4 GF_CreateVramTransferManager();
undefined4 Heap_Alloc();
undefined4 ov90_02258FF0();
undefined4 ov90_0225A204();
undefined4 ov90_02259184();
undefined4 ov90_0225C15C();
undefined4 ov90_022590CC();
undefined4 ov90_02258DD0();
undefined4 func_0x020e5b44() __asm__("sub_020E5B44");
undefined4 GfGfx_SetBanks();
extern undefined ov90_0225C2F4;
extern undefined ov90_0225C43C;
extern undefined ov90_0225C264;
extern undefined2 uRam04001050 __asm__("sub_04001050");
extern uint uRam04001000 __asm__("sub_04001000");
extern uint uRam04000000 __asm__("sub_04000000");
extern undefined2 uRam04000050 __asm__("sub_04000050");
undefined4 ov90_022588A4();
undefined4 func_0x021e69a8() __asm__("sub_021E69A8");
undefined4 ov90_0225938C();
undefined4 ov90_0225888C();
undefined4 SysTask_CreateOnVWaitQueue();
undefined4 ov90_0225A258();
undefined4 GF_AssertFail();
undefined4 ov90_0225B340();
undefined4 ov90_0225A850();
undefined4 SysTask_CreateOnMainQueue();

int ov90_0225A6B4(undefined1 *param_1,undefined1 *param_2,undefined1 param_3,undefined4 param_4)

{
  char cVar1;
  undefined1 uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined1 *puVar6;
  
  iVar3 = Heap_Alloc(param_4,0x664);
  func_0x020e5b44(iVar3,0,0x664);
  puVar6 = (undefined1 *)(iVar3 + 0x1c);
  iVar5 = 0x18;
  do {
    uVar2 = *param_2;
    param_2 = param_2 + 1;
    *puVar6 = uVar2;
    puVar6 = puVar6 + 1;
    iVar5 = iVar5 + -1;
  } while (iVar5 != 0);
  puVar6 = (undefined1 *)(iVar3 + 0xc);
  iVar5 = 0x10;
  do {
    uVar2 = *param_1;
    param_1 = param_1 + 1;
    *puVar6 = uVar2;
    puVar6 = puVar6 + 1;
    iVar5 = iVar5 + -1;
  } while (iVar5 != 0);
  *(undefined1 *)(iVar3 + 7) = param_3;
  ov90_0225C15C(iVar3);
  uRam04000050 = 0;
  uRam04001050 = 0;
  uRam04000000 = uRam04000000 & 0xffff1fff;
  uRam04001000 = uRam04001000 & 0xffff1fff;
  GfGfx_SetBanks(&ov90_0225C2F4);
  *(short *)(iVar3 + 2) = (short)param_4;
  ov90_0225A204(iVar3 + 0x34,iVar3 + 0xc);
  GF_CreateVramTransferManager(0x10,param_4);
  ov90_02258FF0(iVar3 + 0x4c,&ov90_0225C264,&ov90_0225C43C,6,param_4);
  ov90_022590CC(iVar3 + 0xa0,0x20,2,2,param_4);
  ov90_02258DD0(iVar3 + 0x1cc,2,param_4);
  ov90_02259184(iVar3 + 0x58,param_4);
  ov90_0225A850(iVar3,param_4);
  uVar4 = ov90_0225888C(iVar3 + 0xc,*(undefined1 *)(iVar3 + 0x15));
  uVar4 = ov90_022588A4(iVar3 + 0xc,uVar4);
  ov90_0225938C(iVar3 + 0x68,iVar3 + 0x4c,*(undefined4 *)(iVar3 + 0xc),uVar4,param_4);
  ov90_0225B340(iVar3 + 0x1e8,iVar3 + 0x4c,*(undefined1 *)(iVar3 + 0x16),param_4);
  uVar2 = ov90_0225A258(iVar3 + 0xc,iVar3 + 0x34);
  *(undefined1 *)(iVar3 + 5) = uVar2;
  cVar1 = *(char *)(iVar3 + 7);
  if ((cVar1 == '\0') || (cVar1 == '\x01')) {
    uVar4 = SysTask_CreateOnMainQueue(0x225a981,iVar3,0);
    *(undefined4 *)(iVar3 + 0x644) = uVar4;
  }
  else if (cVar1 == '\x02') {
    uVar4 = SysTask_CreateOnMainQueue(0x225ae4d,iVar3,0);
    *(undefined4 *)(iVar3 + 0x644) = uVar4;
  }
  else {
    GF_AssertFail();
    uVar4 = SysTask_CreateOnMainQueue(0x225a981,iVar3,0);
    *(undefined4 *)(iVar3 + 0x644) = uVar4;
  }
  uVar4 = SysTask_CreateOnVWaitQueue(0x225b231,iVar3,0);
  *(undefined4 *)(iVar3 + 0x648) = uVar4;
  if (*(char *)(iVar3 + 0x16) != '\0') {
    func_0x021e69a8(param_4);
  }
  return iVar3;
}

