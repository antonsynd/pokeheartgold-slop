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
undefined4 ov18_021F11C0();
undefined4 func_0x020708d8() __asm__("sub_020708D8");
undefined4 func_0x0200ddf4() __asm__("sub_0200DDF4");
undefined4 ov18_021F3CA8();
undefined4 ov18_021F1A7C();

void ov18_021F5EFC(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined1 uStack_1c;
  undefined1 auStack_1b [3];
  undefined4 uStack_18;
  
  uStack_18 = param_4;
  ov18_021F3CA8(param_1,param_2,&uStack_1c,auStack_1b);
  if ((int)((uint)*(byte *)(param_1 + 0x18c7) << 0x1a) < 0) {
    iVar3 = 3;
    iVar2 = 4;
    ov18_021F11C0(param_1,1,0);
    ov18_021F11C0(param_1,2,0);
  }
  else {
    iVar3 = 1;
    iVar2 = 2;
    ov18_021F11C0(param_1,3,0);
    ov18_021F11C0(param_1,4,0);
  }
  *(byte *)(param_1 + 0x18c7) =
       *(byte *)(param_1 + 0x18c7) & 0xdf |
       (byte)(((*(byte *)(param_1 + 0x18c7) & 0x3f) >> 5 ^ 1) << 5);
  ov18_021F1A7C(param_1,*(undefined2 *)(param_1 + 0x18a2),uStack_1c,auStack_1b[0],2,iVar3,param_3);
  func_0x0200ddf4(*(undefined4 *)(param_1 + iVar3 * 4 + 0x670),0x40,0x78,0x200000);
  ov18_021F1A7C(param_1,*(undefined2 *)(param_1 + 0x18a2),uStack_1c,auStack_1b[0],0,iVar2,param_3);
  iVar1 = func_0x020708d8(*(undefined2 *)(param_1 + 0x18a2),auStack_1b[0],0,uStack_1c,0);
  func_0x0200ddf4(*(undefined4 *)(param_1 + iVar2 * 4 + 0x670),0xc0,(iVar1 + 0x78) * 0x10000 >> 0x10
                  ,0x200000);
  ov18_021F11C0(param_1,iVar3,1);
  ov18_021F11C0(param_1,iVar2,1);
  return;
}

