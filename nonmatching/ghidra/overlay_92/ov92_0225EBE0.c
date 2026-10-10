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
undefined4 ov92_02260428();
undefined4 ov92_022630E8();

void ov92_0225EBE0(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uStack_1c;
  
  *(undefined4 *)(param_1 + 0x1fc8) = 0;
  *(undefined4 *)(param_1 + 0x1fcc) = 0x64000;
  *(undefined4 *)(param_1 + 0x1fd0) = 0;
  *(undefined4 *)(param_1 + 0x51c) = 0;
  *(undefined4 *)(param_1 + 0x520) = 0;
  *(undefined4 *)(param_1 + 0x310) = 0;
  *(undefined4 *)(param_1 + 0x314) = 0;
  *(undefined4 *)(param_1 + 0x518) = 0;
  *(undefined4 *)(param_1 + 0x30c) = 0;
  ov92_022630E8(param_1 + 0x2a4);
  ov92_022630E8(param_1 + 0x2b4);
  ov92_022630E8(param_1 + 0x4b0);
  ov92_022630E8(param_1 + 0x4c0);
  ov92_022630E8(param_1 + 0xad4);
  ov92_022630E8(param_1 + 0xae4);
  uStack_1c = 0;
  iVar3 = param_1 + 0xce0;
  iVar1 = param_1 + 0xcf0;
  iVar2 = param_1 + 0xb50;
  do {
    ov92_022630E8(iVar3);
    ov92_022630E8(iVar1);
    ov92_02260428(iVar2,0,0,5,5,0x3f4ccccd,0);
    ov92_02260428(iVar2,0,0,0xfffffffb,0xfffffffb,0x3f4ccccd,0);
    iVar3 = iVar3 + 0x20c;
    iVar1 = iVar1 + 0x20c;
    iVar2 = iVar2 + 0x20c;
    uStack_1c = uStack_1c + 1;
  } while (uStack_1c < 8);
  ov92_02260428(param_1 + 0x114,0,0,5,5,0x3ff0a3d7,0);
  ov92_02260428(param_1 + 0x114,0,0,0xfffffffb,0xfffffffb,0x3ff0a3d7,0);
  ov92_02260428(param_1 + 800,0,0,5,5,0x3f4ccccd,0);
  ov92_02260428(param_1 + 800,0,0,0xfffffffb,0xfffffffb,0x3f4ccccd,0);
  ov92_02260428(param_1 + 0x944,0,0,5,5,0x3ff0a3d7,0);
  ov92_02260428(param_1 + 0x944,0,0,0xfffffffb,0xfffffffb,0x3f4ccccd,0);
  return;
}

