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
undefined4 func_0x0221c394() __asm__("sub_0221C394");
undefined4 SysTask_Destroy();
undefined4 func_0x0221c3c0() __asm__("sub_0221C3C0");
undefined4 func_0x02234a20() __asm__("sub_02234A20");
undefined4 ov12_0226430C();
undefined4 ov12_02261B80();
undefined4 ov12_022643C8();
undefined4 ov12_02261CA8();
undefined4 ov12_0223A8DC();
undefined4 Pokepic_SetAttr();
undefined4 Heap_Free();
undefined4 func_0x0221c3b0() __asm__("sub_0221C3B0");

void ov12_02260418(undefined4 param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 auStack_110 [88];
  undefined1 auStack_b8 [80];
  undefined1 auStack_68 [88];
  
  uVar1 = ov12_0223A8DC(*param_2);
  switch(*(undefined1 *)((int)param_2 + 0x62)) {
  case 0:
    if (*(int *)(param_2[1] + 0x20) == 0) {
      *(undefined1 *)((int)param_2 + 0x62) = 0xff;
      return;
    }
    Pokepic_SetAttr(*(int *)(param_2[1] + 0x20),6,*(undefined1 *)((int)param_2 + 99));
    if (*(char *)((int)param_2 + 99) != '\x01') {
      *(char *)((int)param_2 + 0x62) = *(char *)((int)param_2 + 0x62) + '\x01';
      return;
    }
    *(undefined1 *)((int)param_2 + 0x62) = 0xff;
    return;
  case 1:
    if ((param_2[0x19] != 0) && (*(int *)(param_2[1] + 0x1a0) == 0)) {
      ov12_022643C8(*param_2,0,auStack_68,1,0xf,*(undefined1 *)((int)param_2 + 0x61),
                    *(undefined1 *)((int)param_2 + 0x61),0);
      ov12_02261B80(*param_2,param_2[1],uVar1,auStack_68);
      *(char *)((int)param_2 + 0x62) = *(char *)((int)param_2 + 0x62) + '\x01';
      return;
    }
    *(undefined1 *)((int)param_2 + 0x62) = 0xff;
    return;
  case 2:
  case 4:
    func_0x0221c394();
    iVar2 = func_0x0221c3b0(uVar1);
    if (iVar2 == 0) {
      func_0x0221c3c0(uVar1);
      *(char *)((int)param_2 + 0x62) = *(char *)((int)param_2 + 0x62) + '\x01';
      return;
    }
    break;
  case 3:
    ov12_02261CA8(*param_2,param_2 + 2,auStack_b8,*(undefined1 *)((int)param_2 + 0x61));
    func_0x02234a20(auStack_b8,5);
    ov12_022643C8(*param_2,0,auStack_110,1,0x10,*(undefined1 *)((int)param_2 + 0x61),
                  *(undefined1 *)((int)param_2 + 0x61),0);
    ov12_02261B80(*param_2,param_2[1],uVar1,auStack_110);
    *(undefined4 *)(param_2[1] + 0x1a0) = 1;
    *(char *)((int)param_2 + 0x62) = *(char *)((int)param_2 + 0x62) + '\x01';
    return;
  default:
    ov12_0226430C(*param_2,*(undefined1 *)((int)param_2 + 0x61),*(undefined1 *)(param_2 + 0x18));
    Heap_Free(param_2);
    SysTask_Destroy(param_1);
  }
  return;
}

