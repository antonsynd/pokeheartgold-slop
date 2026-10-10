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
undefined4 func_0x021ee490() __asm__("sub_021EE490");
undefined4 ov00_021E77A4();
undefined4 ov00_021E644C();
undefined4 func_0x020d4a50() __asm__("sub_020D4A50");
undefined4 ov00_021E65D4();
undefined4 ov00_021E6638();
extern int iRam0221a680 __asm__("sub_0221A680");

void ov00_021E6484(undefined4 param_1,byte *param_2,int param_3)

{
  byte bVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  
  bVar1 = *param_2;
  uVar4 = (uint)param_2[2] << 0x10 | (uint)param_2[3] << 0x18 | (uint)param_2[1] << 8 | (uint)bVar1;
  *(undefined4 *)(iRam0221a680 + 0x10a8) = 1;
  if (bVar1 == 1) {
    ov00_021E644C(uVar4);
    *(byte *)(iRam0221a680 + 0x10dd) = param_2[2];
    uVar4 = param_3 - 4;
    iVar2 = ov00_021E65D4(0,uVar4,4);
    if (iVar2 != 0) {
      func_0x020d4a50(param_2 + 4,iVar2,uVar4);
      iVar3 = func_0x021ee490();
      if (iVar3 == 0) {
        if (*(code **)(iRam0221a680 + 0xfa4) != (code *)0x0) {
          (**(code **)(iRam0221a680 + 0xfa4))(param_1,iVar2,uVar4 & 0xffff);
        }
      }
      else if (*(code **)(iRam0221a680 + 0xfa8) != (code *)0x0) {
        (**(code **)(iRam0221a680 + 0xfa8))(param_1,iVar2,uVar4 & 0xffff);
      }
      ov00_021E6638(0,iVar2,uVar4);
    }
  }
  else {
    iVar2 = ov00_021E77A4();
    if (iVar2 == 0) {
      ov00_021E644C(uVar4);
      return;
    }
  }
  return;
}

