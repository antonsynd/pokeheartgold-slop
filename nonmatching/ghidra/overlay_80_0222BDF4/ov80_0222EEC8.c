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
undefined4 SysTask_Destroy();
undefined4 GF_AssertFail();
undefined4 func_0x02229200() __asm__("sub_02229200");
undefined4 func_0x022299c0() __asm__("sub_022299C0");
undefined4 func_0x02228188() __asm__("sub_02228188");
undefined4 ov80_0222EFD0();
undefined4 Heap_Free();
extern undefined UNK_0223bd24 __asm__("sub_0223BD24");

void ov80_0222EEC8(undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  ushort uVar2;
  int iVar3;
  uint uVar4;
  undefined1 auStack_20 [8];
  undefined4 uStack_18;

  uVar4 = (uint)**(ushort **)(param_2 + 0xc);
  uVar2 = (*(ushort **)(param_2 + 0xc))[1];
  cVar1 = *param_2;
  uStack_18 = param_4;
  if (cVar1 == '\0') {
    if (uVar4 == 0xfd13) {
      *param_2 = '\x02';
      return;
    }
  }
  else if (cVar1 != '\x01') {
    if (cVar1 != '\x02') {
      return;
    }
    iVar3 = func_0x02228188(**(undefined4 **)(param_2 + 0x14),5);
    if (iVar3 != 0) {
      return;
    }
    **(char **)(param_2 + 8) = **(char **)(param_2 + 8) + -1;
    *(undefined4 *)(*(int *)(param_2 + 0x14) + 0x38) = 0;
    Heap_Free(param_2);
    SysTask_Destroy(param_1);
    return;
  }
  iVar3 = func_0x02228188(**(undefined4 **)(param_2 + 0x14),5);
  if (iVar3 == 0) {
    if ((uVar4 < 0x20) || (0x26 < uVar4)) {
      if ((0x26 < uVar4) && (uVar4 < 0x29)) {
        if (uVar4 == 0x27) {
          func_0x02229200(*(undefined4 *)(*(int *)(param_2 + 0x14) + 4),1);
        }
        else if (uVar4 == 0x28) {
          func_0x02229200(*(undefined4 *)(*(int *)(param_2 + 0x14) + 4),0);
        }
        else {
          GF_AssertFail();
        }
        *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 4;
        return;
      }
      ov80_0222EFD0(auStack_20,**(undefined4 **)(param_2 + 0x14),*(undefined2 *)(param_2 + 4),uVar4)
      ;
      func_0x022299c0(*(undefined4 *)(param_2 + 0x10),auStack_20);
      param_2[1] = param_2[1] + '\x01';
      if (uVar2 <= (byte)param_2[1]) {
        param_2[1] = '\0';
        *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 4;
      }
      *param_2 = '\0';
      return;
    }
    *(short *)(param_2 + 2) = *(short *)(param_2 + 2) + 1;
    if ((short)(ushort)(byte)(&UNK_0223bd24)[uVar4] <= *(short *)(param_2 + 2)) {
      param_2[2] = '\0';
      param_2[3] = '\0';
      *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 4;
      return;
    }
  }
  return;
}

