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
undefined4 ov91_0225EA54();
undefined4 ov91_0225E7C4();
undefined4 ov91_0225E9C0();
undefined4 ov91_0225E7E8();
undefined4 ov91_0225DFB0();
undefined4 ov91_0225E3F4();
undefined4 ov91_0225E728();
undefined4 func_0x020ccdac() __asm__("sub_020CCDAC");
undefined4 ov91_0225E990();

void ov91_0225E8BC(char *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  undefined1 auStack_24 [12];
  undefined4 uStack_18;
  
  bVar1 = false;
  if (*param_1 == '\x05') {
    iVar3 = *(int *)(param_1 + 0x30);
    uStack_18 = param_4;
    ov91_0225E728(param_1,auStack_24);
    ov91_0225EA54(param_1,auStack_24);
    *(short *)(param_1 + 2) = *(short *)(param_1 + 2) + 1;
    iVar2 = ov91_0225DFB0(param_2 + 0x19cc,param_1 + 0x2c);
    if (iVar2 == 1) {
      ov91_0225E7C4(param_1,param_2,1);
    }
    else if (*(int *)(param_1 + 0x30) < -0x31fff) {
      iVar2 = ov91_0225E990(param_1);
      if (iVar2 == 0) {
        if (iVar3 < -0x31fff) {
          bVar1 = true;
        }
        else {
          ov91_0225E7C4(param_1,param_2,0);
        }
      }
      else if (*(int *)(param_1 + 0x30) < -0x63fff) {
        bVar1 = true;
      }
      if (*(int *)(param_1 + 0x14) < 0x2001) {
        bVar1 = true;
      }
    }
    else {
      iVar2 = ov91_0225E9C0(param_1);
      if (iVar2 == 1) {
        func_0x020ccdac(param_1 + 0x2c,auStack_24,param_1 + 0x2c);
        ov91_0225E7E8(param_1,param_2,1,0x400,0);
      }
    }
    if (*(int *)(param_1 + 0x14) < 0x1001) {
      bVar1 = true;
    }
    if (bVar1) {
      ov91_0225E3F4(param_2,param_1,0,*(undefined4 *)(param_2 + 0x1c));
    }
  }
  return;
}

