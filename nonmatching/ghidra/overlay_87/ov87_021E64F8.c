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
undefined4 GfGfx_EngineBTogglePlanes();
undefined4 PlaySE();
undefined4 func_0x0201bc8c() __asm__("sub_0201BC8C");
undefined4 GfGfx_EngineATogglePlanes();
undefined4 ov87_021E7FEC();
undefined4 ov87_021E7FD4();
extern undefined ov87_021E82E4;

undefined4 ov87_021E64F8(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  short *psVar3;
  int iVar4;
  int iVar5;

  cVar1 = *(char *)(param_1 + 8);
  if (cVar1 == '\0') {
    GfGfx_EngineATogglePlanes(4,0,param_3,param_4,param_4);
    GfGfx_EngineBTogglePlanes(1,0);
    ov87_021E7FD4(*(undefined4 *)(param_1 + 0x33c),0);
    *(undefined2 *)(param_1 + 0x10) = 0;
    *(undefined2 *)(param_1 + 0x12) = 0;
    PlaySE(0x560);
    *(undefined1 *)(param_1 + 8) = 1;
  }
  else if (cVar1 == '\x01') {
    func_0x0201bc8c(*(undefined4 *)(param_1 + 0x58),6,0,(int)*(short *)(param_1 + 0x12));
    func_0x0201bc8c(*(undefined4 *)(param_1 + 0x58),0,0,(int)*(short *)(param_1 + 0x12));
    func_0x0201bc8c(*(undefined4 *)(param_1 + 0x58),1,0,(int)*(short *)(param_1 + 0x12));
    *(short *)(param_1 + 0x12) = *(short *)(param_1 + 0x12) + -0x10;
    if (*(short *)(param_1 + 0x10) < 0x100) {
      iVar5 = 0;
      iVar4 = 0x1a;
      iVar2 = param_1;
      do {
        ov87_021E7FEC(*(undefined4 *)(iVar2 + 0x2f8),*(short *)(param_1 + 0x10) + 0x3c,iVar4);
        iVar5 = iVar5 + 1;
        iVar4 = iVar4 + 0x2a;
        iVar2 = iVar2 + 4;
      } while (iVar5 < 4);
      iVar4 = 0;
      iVar2 = param_1;
      do {
        ov87_021E7FD4(*(undefined4 *)(iVar2 + 0x344),0);
        iVar4 = iVar4 + 1;
        iVar2 = iVar2 + 4;
      } while (iVar4 < 3);
      psVar3 = (short *)&ov87_021E82E4;
      iVar4 = 0;
      iVar2 = param_1;
      do {
        ov87_021E7FEC(*(undefined4 *)(iVar2 + 0x308),(int)*(short *)(param_1 + 0x10) + (int)*psVar3,
                      (int)psVar3[1]);
        iVar4 = iVar4 + 1;
        psVar3 = psVar3 + 2;
        iVar2 = iVar2 + 4;
      } while (iVar4 < 9);
    }
    else {
      *(undefined1 *)(param_1 + 8) = 2;
    }
    *(short *)(param_1 + 0x10) = *(short *)(param_1 + 0x10) + 0x10;
  }
  else if (cVar1 == '\x02') {
    *(undefined2 *)(param_1 + 0x10) = 0;
    *(undefined2 *)(param_1 + 0x12) = 0;
    return 1;
  }
  return 0;
}

