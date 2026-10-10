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
undefined4 func_0x020f1520(undefined4, undefined4) __asm__("sub_020F1520");
undefined4 func_0x020f2178(undefined4) __asm__("sub_020F2178");
undefined4 ov90_0225BD84(undefined4);
undefined4 func_0x020f2104(void) __asm__("sub_020F2104");
undefined4 func_0x020f24c8(undefined4, undefined4) __asm__("sub_020F24C8");
undefined4 Sprite_SetMatrix(undefined4, undefined4);
extern undefined ov90_0225C2B4;

void ov90_0225BC28(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 *puVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  int iStack_24;
  undefined4 uStack_20;
  int iStack_1c;
  undefined4 uStack_18;

  *(short *)((int)param_1 + 10) =
       (short)((int)(*(short *)(param_1 + 2) * 0x17 +
                    ((uint)(*(short *)(param_1 + 2) * 0x17 >> 2) >> 0x1d)) >> 3);
  param_2 = *(short *)(param_1 + 2) + param_2;
  if ((param_2 < 9) && (-1 < param_2)) {
    iStack_24 = (int)(param_2 * 0x17 + ((uint)(param_2 * 0x17 >> 2) >> 0x1d)) >> 3;
  }
  else {
    iStack_24 = (int)*(short *)((int)param_1 + 10);
  }
  puVar6 = (undefined4 *)&ov90_0225C2B4;
  iVar5 = 0;
  iVar4 = iStack_24 * 0x1000;
  puVar3 = param_1;
  do {
    uStack_20 = *puVar6;
    iStack_1c = puVar6[1];
    uStack_18 = puVar6[2];
    if (iVar5 == 0) {
      if (iStack_24 < 1) {
        uVar1 = func_0x020f2178(iVar4);
        func_0x020f24c8(uVar1,0x3f000000);
      }
      else {
        uVar1 = func_0x020f2178(iVar4);
        func_0x020f1520(0x3f000000,uVar1);
      }
      iVar2 = func_0x020f2104();
      iStack_1c = iStack_1c - iVar2;
    }
    else {
      if (iStack_24 < 1) {
        uVar1 = func_0x020f2178(iVar4);
        func_0x020f24c8(uVar1,0x3f000000);
      }
      else {
        uVar1 = func_0x020f2178(iVar4);
        func_0x020f1520(0x3f000000,uVar1);
      }
      iVar2 = func_0x020f2104();
      iStack_1c = iStack_1c + iVar2;
    }
    Sprite_SetMatrix(*puVar3,&uStack_20);
    iVar5 = iVar5 + 1;
    puVar6 = puVar6 + 3;
    puVar3 = puVar3 + 1;
  } while (iVar5 < 2);
  ov90_0225BD84(param_1);
  return;
}

