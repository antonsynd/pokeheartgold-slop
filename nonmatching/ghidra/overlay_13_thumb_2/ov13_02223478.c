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
undefined4 func_0x020d3a4c() __asm__("sub_020D3A4C");
undefined4 func_0x020d4994() __asm__("sub_020D4994");
undefined4 func_0x020adcb4() __asm__("sub_020ADCB4");
undefined4 func_0x020d3a38() __asm__("sub_020D3A38");
undefined4 ov13_022233CC();
extern undefined4 uRam0224dee4 __asm__("sub_0224DEE4");
extern undefined * puRam0224def4 __asm__("sub_0224DEF4");
extern undefined * puRam0224def0 __asm__("sub_0224DEF0");
extern int iRam0224def8 __asm__("sub_0224DEF8");
extern undefined UNK_02108fc8 __asm__("sub_02108FC8");
extern undefined UNK_02108fc0 __asm__("sub_02108FC0");

undefined4 ov13_02223478(undefined1 *param_1,undefined1 *param_2,int param_3,undefined4 param_4)

{
  undefined1 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 *puVar4;

  uVar2 = func_0x020d3a38();
  uRam0224dee4 = param_4;
  if (param_1 == (undefined1 *)0x0) {
    func_0x020d4994(0x224df08,0xff,6);
    puRam0224def0 = &UNK_02108fc0;
  }
  else {
    puVar4 = (undefined1 *)0x224df08;
    iVar3 = 0;
    do {
      uVar1 = *param_1;
      iVar3 = iVar3 + 1;
      param_1 = param_1 + 1;
      *puVar4 = uVar1;
      puVar4 = puVar4 + 1;
    } while (iVar3 < 6);
    puRam0224def0 = (undefined *)0x224df08;
  }
  if (((param_2 == (undefined1 *)0x0) || (param_3 < 1)) || (0x20 < param_3)) {
    func_0x020d4994(0x224df10,0xff,0x20);
    puRam0224def4 = &UNK_02108fc8;
  }
  else {
    iVar3 = 0;
    if (0 < param_3) {
      puVar4 = (undefined1 *)0x224df10;
      do {
        uVar1 = *param_2;
        iVar3 = iVar3 + 1;
        param_2 = param_2 + 1;
        *puVar4 = uVar1;
        puVar4 = puVar4 + 1;
      } while (iVar3 < param_3);
    }
    if (iVar3 < 0x20) {
      puVar4 = (undefined1 *)(iVar3 + 0x224df10);
      do {
        iVar3 = iVar3 + 1;
        *puVar4 = 0;
        puVar4 = puVar4 + 1;
      } while (iVar3 < 0x20);
    }
    puRam0224def4 = (undefined *)0x224df10;
  }
  if (iRam0224def8 == 3) {
    iVar3 = func_0x020adcb4(puRam0224def0,puRam0224def4,uRam0224dee4);
    if (iVar3 == 3) {
      iRam0224def8 = 6;
      func_0x020d3a4c(uVar2);
      return 1;
    }
  }
  else {
    iVar3 = ov13_022233CC();
    if (iVar3 == 1) {
      iRam0224def8 = 6;
      func_0x020d3a4c(uVar2);
      return 1;
    }
  }
  func_0x020d3a4c(uVar2);
  return 0;
}

