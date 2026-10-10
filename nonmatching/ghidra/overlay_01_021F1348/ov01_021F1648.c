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
undefined4 ov01_021FC4C4(undefined4, undefined4, undefined4, undefined4);
undefined4 ov01_021F1478(undefined4);
undefined4 ov01_021F1430(undefined4, undefined4, undefined4, undefined4);
undefined4 func_0x02025780(undefined4, undefined4) __asm__("sub_02025780");
undefined4 ov01_021F17BC(undefined4, undefined4, undefined4);
undefined4 func_0x020237ec(undefined4) __asm__("sub_020237EC");

void ov01_021F1648(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                  undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uStack_1c;
  undefined4 uStack_18;

  puVar1 = (undefined4 *)ov01_021F1430(param_1,0x24,0,0);
  *(undefined4 **)(param_1 + 0x20) = puVar1;
  *puVar1 = param_2;
  *(short *)(puVar1 + 1) = (short)param_3;
  *(short *)((int)puVar1 + 6) = (short)param_4;
  *(short *)(puVar1 + 2) = (short)param_5;
  *(short *)((int)puVar1 + 10) = (short)param_6;
  uVar2 = ov01_021FC4C4(param_2,0x44,param_7,param_4);
  puVar1[4] = uVar2;
  uVar2 = ov01_021FC4C4(param_2,0x45,param_8,param_5);
  puVar1[5] = uVar2;
  uVar2 = func_0x02025780(param_6,param_2);
  puVar1[6] = uVar2;
  ov01_021F17BC(param_1,puVar1,param_3);
  uStack_1c = param_3;
  uStack_18 = ov01_021F1478(param_1);
  uVar2 = func_0x020237ec(&uStack_1c);
  puVar1[3] = uVar2;
  return;
}

