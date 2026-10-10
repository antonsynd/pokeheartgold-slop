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
undefined4 ov07_0221C448();
undefined4 ov07_0222BADC();
undefined4 Heap_Free();
undefined4 Pokepic_SetAttr();
extern undefined2 uRam04000044 __asm__("sub_04000044");
extern ushort uRam04000040 __asm__("sub_04000040");
extern uint uRam04000000 __asm__("sub_04000000");
extern ushort uRam04000048 __asm__("sub_04000048");
extern ushort uRam0400004a __asm__("sub_0400004A");

void ov07_0222BAF4(undefined4 param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  switch((char)param_2[8]) {
  case '\0':
    break;
  case '\x01':
    param_2[1] = param_2[1] + -1;
    iVar1 = param_2[3];
    param_2[3] = iVar1 + 1;
    uRam04000040 = (short)param_2[2] * 0x100 | (short)param_2[2] + 0x50U & 0xff;
    uRam04000044 = (ushort)(iVar1 + 1) & 0xff | (ushort)(param_2[1] << 8);
    *(char *)(param_2 + 8) = (char)param_2[8] + '\x01';
    return;
  case '\x02':
    param_2[1] = param_2[1] + -1;
    iVar1 = param_2[3];
    param_2[3] = iVar1 + 1;
    uRam04000040 = (short)param_2[2] * 0x100 | (short)param_2[2] + 0x50U & 0xff;
    uRam04000044 = (ushort)(iVar1 + 1) & 0xff | (ushort)(param_2[1] << 8);
    iVar1 = *param_2;
    *param_2 = iVar1 + 1;
    if (iVar1 + 1 < 0x27) {
      *(undefined1 *)(param_2 + 8) = 0;
      return;
    }
    *(char *)(param_2 + 8) = (char)param_2[8] + '\x01';
    return;
  case '\x03':
    Pokepic_SetAttr(param_2[7],0xe,0);
    *(char *)(param_2 + 8) = (char)param_2[8] + '\x01';
    return;
  default:
    uRam04000000 = uRam04000000 & 0xffff1fff;
    uRam04000048 = uRam04000048 & 0xffc0;
    uRam0400004a = uRam0400004a & 0xffc0;
    uRam04000040 = 0;
    uRam04000044 = 0;
    ov07_0221C448(param_2[9],param_1);
    Pokepic_SetAttr(param_2[7],0x17,param_2[6]);
    Heap_Free(param_2);
    return;
  }
  iVar1 = param_2[4] + 0x4f;
  param_2[4] = iVar1;
  if (0x4f < iVar1) {
    *(char *)(param_2 + 8) = (char)param_2[8] + '\x01';
    param_2[5] = param_2[5] ^ 1;
    param_2[4] = 0;
    return;
  }
  if (param_2[5] != 0) {
    ov07_0222BADC(param_2[7],0x50 - iVar1,iVar1,(*param_2 + 2) * 2,2,param_4);
    return;
  }
  ov07_0222BADC(param_2[7],0,iVar1,(*param_2 + 2) * 2,2,param_4);
  return;
}

