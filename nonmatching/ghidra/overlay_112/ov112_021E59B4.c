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
undefined4 ov112_021E5900();
undefined4 func_0x020ddfe0() __asm__("sub_020DDFE0");
extern char uRam021ffa19 __asm__("sub_021FFA19");
extern byte uRam021ffa18 __asm__("sub_021FFA18");
extern byte uRam021ffa1a __asm__("sub_021FFA1A");
extern uint uRam021ffa1c __asm__("sub_021FFA1C");
extern byte uRam021ffa1b __asm__("sub_021FFA1B");

void ov112_021E59B4(byte *param_1,int param_2,uint param_3,undefined4 param_4,undefined4 param_5)

{
  byte bVar1;
  undefined2 uVar2;
  int iVar3;
  byte *pbVar4;
  uint uVar5;

  uRam021ffa18 = (undefined1)param_3;
  uRam021ffa19 = (undefined1)param_4;
  pbVar4 = (byte *)0x21ffa20;
  uRam021ffa1c = param_5;
  uRam021ffa1a = 0;
  uRam021ffa1b = 0;
  for (iVar3 = 0; iVar3 < param_2; iVar3 = iVar3 + 1) {
    bVar1 = *param_1;
    param_3 = (uint)bVar1;
    param_1 = param_1 + 1;
    *pbVar4 = bVar1;
    pbVar4 = pbVar4 + 1;
  }
  uVar5 = param_2 + 8U & 0xff;
  uVar2 = ov112_021E5900(0x21ffa18,uVar5,param_3,pbVar4,param_4);
  uRam021ffa1a = (undefined1)uVar2;
  uRam021ffa1b = (undefined1)((ushort)uVar2 >> 8);
  for (iVar3 = 0; iVar3 < (int)uVar5; iVar3 = iVar3 + 1) {
    *(byte *)(iVar3 + 0x21ffa18) = *(byte *)(iVar3 + 0x21ffa18) ^ 0xaa;
  }
  func_0x020ddfe0(0x21ffa18,uVar5);
  return;
}

